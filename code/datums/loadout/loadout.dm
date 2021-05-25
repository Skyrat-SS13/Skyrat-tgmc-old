/datum/loadout
	///Name of the loadout
	var/name = ""
	///The job associated with the loadout
	var/job = MARINE_LOADOUT
	/**
	 * Assoc list of all items composing this loadout
	 * the key of each item is a slot key
	 * each item of the list is a datum/item_representation
	 */
	var/list/item_list
	///The version of this loadout. This can allow in the future to erase loadouts that are too old to work with the loadout saver system
	var/version = 1

///Empty a slot of the loadout
/datum/loadout/proc/empty_slot(slot)
	item_list[slot] = null

///Check if the item can go to the specified slot
/datum/loadout/proc/can_equip_to_slot(item_type, slot)
	var/obj/item/item = item_type
	var/flags_equip_slot = initial(item.flags_equip_slot)
	var/w_class = initial(item.w_class)
	switch(slot)
		if(slot_wear_mask_str)
			return (flags_equip_slot & ITEM_SLOT_MASK)
		if(slot_back_str)
			return (flags_equip_slot & ITEM_SLOT_BACK)
		if(slot_wear_suit_str)
			return (flags_equip_slot & ITEM_SLOT_OCLOTHING)
		if(slot_gloves_str)
			return (flags_equip_slot & ITEM_SLOT_GLOVES)
		if(slot_shoes_str)
			return (flags_equip_slot & ITEM_SLOT_FEET)
		if(slot_belt_str)
			if(!(flags_equip_slot & ITEM_SLOT_BELT))
				return FALSE
			if(!item_list[SLOT_W_UNIFORM])
				return FALSE
			return TRUE
		if(slot_glasses_str)
			return (flags_equip_slot & ITEM_SLOT_EYES)
		if(slot_head_str)
			return (flags_equip_slot & ITEM_SLOT_HEAD)
		if(slot_w_uniform_str)
			return (flags_equip_slot & ITEM_SLOT_ICLOTHING)
		if(slot_l_store_str)
			if(!item_list[SLOT_W_UNIFORM])
				return FALSE
			if(flags_equip_slot & ITEM_SLOT_DENYPOCKET)
				return FALSE
			if(w_class <= 2 || (flags_equip_slot & ITEM_SLOT_POCKET))
				return TRUE
		if(slot_r_store_str)
			if(!item_list[SLOT_W_UNIFORM])
				return FALSE
			if(flags_equip_slot & ITEM_SLOT_DENYPOCKET)
				return FALSE
			if(w_class <= 2 || (flags_equip_slot & ITEM_SLOT_POCKET))
				return TRUE
		if(slot_s_store_str)
			if(!item_list[SLOT_W_UNIFORM])
				return FALSE
			var/obj/item/jumpsuit = item_list[SLOT_W_UNIFORM]
			if(!jumpsuit.allowed)
				return FALSE
			if(jumpsuit.allowed.Find(item_type))
				return TRUE
			return FALSE
	return FALSE //Unsupported slot

/**
 * This will equipe the mob with all items of the loadout.
 * If a slot is already full, or an item doesn't fit the slot, the item will fall on the ground
 * user : the mob to dress
 * source : The turf where all rejected items will fall
 */
/datum/loadout/proc/equip_mob(mob/user, turf/source)
	var/obj/item/item
	for(var/slot_key in GLOB.visible_item_slot_list)
		if(!item_list[slot_key])
			continue
		var/datum/item_representation/item_representation = item_list[slot_key]
		item = item_representation.instantiate_object(user)
		if(!item)
			continue
		if(!user.equip_to_slot_if_possible(item, GLOB.slot_str_to_slot[slot_key], warning = FALSE))
			item.forceMove(source)

/**
 * This will read all items on the mob, and if the item is supported by the loadout maker, will save it in the corresponding slot
 * An item is supported if it's path
 */
/datum/loadout/proc/save_mob_loadout(mob/living/carbon/human/user)
	var/obj/item/item_in_slot
	var/item2representation_type
	for(var/slot_key in GLOB.visible_item_slot_list)
		item_in_slot = user.get_item_by_slot(GLOB.slot_str_to_slot[slot_key])
		if(!item_in_slot || !is_savable_in_loadout(item_in_slot.type))
			continue
		item2representation_type = item2representation_type(item_in_slot.type)
		item_list[slot_key] = new item2representation_type(item_in_slot)

/datum/loadout/ui_interact(mob/user, datum/tgui/ui)
	ui = SStgui.try_update_ui(user, src, ui)
	if(!ui)
		ui = new(user, src, "LoadoutViewer", name)
		ui.open()

/datum/loadout/ui_state(mob/user)
	return GLOB.always_state

/datum/loadout/ui_static_data(mob/user)
	var/list/data = list()
	data["items"] = prepare_items_data()
	var/list/loadout_data = list()
	loadout_data["job"] = job
	loadout_data["name"] = name
	data["loadout"] = list(loadout_data)
	return data

/datum/loadout/ui_act(action, list/params, datum/tgui/ui, datum/ui_state/state)
	. = ..()
	switch(action)
		if("equipLoadout")
			if(!ui.user.client.prefs.loadout_manager.seller)
				ui.user.client.prefs.loadout_manager.seller = new /datum/loadout_seller
			ui.user.client.prefs.loadout_manager.seller.try_to_equip_loadout(src, ui.user)
			ui.close()
		if("deleteLoadout")
			ui.user.client.prefs.loadout_manager.delete_loadout(src)
			ui.close()


/datum/loadout/ui_assets(mob/user)
	. = ..() || list()
	. += get_asset_datum(/datum/asset/simple/inventory)

///Create all the necessary data (icons, name of items) from the loadout, and put them in an assoc list to be used by tgui
/datum/loadout/proc/prepare_items_data(mob/user)
	var/list/items_data = list()
	for (var/item_slot_key in GLOB.visible_item_slot_list)
		var/datum/item_representation/item_representation = item_list[item_slot_key]
		if (item_representation)
			items_data[item_slot_key] = item_representation.get_tgui_data()
			continue
		var/list/result = list()
		result["icons"] = list(list(
			"icon" = icon2base64(icon("icons/misc/empty.dmi", "empty")),
			"translateX" = NO_OFFSET,
			"translateY" = NO_OFFSET,
			"scale" = NO_SCALING,
			))
		items_data[item_slot_key] = result
	return items_data