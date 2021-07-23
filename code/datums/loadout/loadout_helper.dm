///Return a new empty loayout
/proc/create_empty_loadout(name = "Default", job = MARINE_LOADOUT)
	var/datum/loadout/empty = new
	empty.name = name
	empty.job = job
	empty.item_list = list()
	return empty

///Return true if the item was found in a linked vendor
/proc/is_savable_in_loadout(obj/item/saved_item)
	if(ishandful(saved_item))
		return is_handful_savable(saved_item)
	for(var/type in GLOB.loadout_linked_vendor)
		for(var/datum/vending_product/item_datum AS in GLOB.vending_records[type])
			if(item_datum.product_path == saved_item.type)
				return TRUE
	return FALSE

///Return true if the item was found in a linked vendor and successfully bought
/proc/buy_item_in_vendor(item_to_buy_type)
	if(is_type_in_typecache(item_to_buy_type, GLOB.bypass_vendor_item))
		return TRUE
	for(var/type in GLOB.loadout_linked_vendor)
		for(var/datum/vending_product/item_datum AS in GLOB.vending_records[type])
			if(item_datum.product_path == item_to_buy_type && item_datum.amount != 0)
				item_datum.amount--
				return TRUE
	return FALSE

/// Will put back an item in a linked vendor
/proc/sell_back_item_in_vendor(item_to_give_back_type)
	for(var/type in GLOB.loadout_linked_vendor)
		for(var/datum/vending_product/item_datum AS in GLOB.vending_records[type])
			if(item_datum.product_path != item_to_give_back_type)
				continue
			if(item_datum.amount >= 0)
				item_datum.amount++
			return 

///Return wich type of item_representation should representate any item_type
/proc/item2representation_type(item_type)
	if(ispath(item_type, /obj/item/weapon/gun))
		return /datum/item_representation/gun
	if(ispath(item_type, /obj/item/clothing/suit/modular))
		return /datum/item_representation/modular_armor
	if(ispath(item_type, /obj/item/armor_module/armor))
		return /datum/item_representation/armor_module/colored
	if(ispath(item_type, /obj/item/storage))
		return /datum/item_representation/storage
	if(ispath(item_type, /obj/item/clothing/suit/storage))
		return /datum/item_representation/suit_with_storage
	if(ispath(item_type, /obj/item/clothing/head/modular))
		return /datum/item_representation/modular_helmet
	if(ispath(item_type, /obj/item/clothing/under))
		return /datum/item_representation/uniform_representation
	if(ispath(item_type, /obj/item/clothing/tie/storage))
		return /datum/item_representation/tie
	if(ispath(item_type, /obj/item/ammo_magazine/handful))
		return /datum/item_representation/handful_representation
	return /datum/item_representation

/// Return TRUE if this handful should be savable, aka if it's corresponding aka box is in a linked vendor
/proc/is_handful_savable(obj/item/ammo_magazine/handful/handful)
	for(var/datum/vending_product/item_datum AS in GLOB.vending_records[/obj/machinery/vending/marine/shared])
		var/product_path = item_datum.product_path
		if(!ispath(product_path, /obj/item/ammo_magazine))
			continue
		var/obj/item/ammo_magazine/ammo = product_path
		if(initial(ammo.default_ammo) == handful.default_ammo)
			return TRUE
	return FALSE

/// Will give a headset corresponding to the user job to the user
/proc/give_free_headset(mob/living/carbon/human/user)
	if(user.wear_ear)
		return
	if(user.job.outfit.ears)
		user.equip_to_slot_or_del(new user.job.outfit.ears(user), SLOT_EARS, override_nodrop = TRUE)
		return
	if(!user.assigned_squad)
		return
<<<<<<< HEAD
	user.equip_to_slot_or_del(new /obj/item/radio/headset/mainship/marine(null, user.assigned_squad, user.job), SLOT_EARS, override_nodrop = TRUE)
=======
	user.equip_to_slot_or_del(new /obj/item/radio/headset/mainship/marine(null, user.assigned_squad, user.job.type), SLOT_EARS, override_nodrop = TRUE)

/// Will check if the selected category can be bought according to the buying_bitfield
/proc/can_buy_category(category, buying_bitfield)
	var/selling_bitfield = NONE
	for(var/i in GLOB.marine_selector_cats[category])
		selling_bitfield |= i
	return buying_bitfield & selling_bitfield

/// Return true if you can buy this category, and also change the loadout seller buying bitfield
/proc/buy_category(category, datum/loadout_seller/seller)
	var/selling_bitfield = NONE
	for(var/i in GLOB.marine_selector_cats[category])
		selling_bitfield |= i
	if(!(seller.buying_bitfield & selling_bitfield))
		return FALSE
	if(selling_bitfield == (MARINE_CAN_BUY_R_POUCH|MARINE_CAN_BUY_L_POUCH))
		if(seller.buying_bitfield & MARINE_CAN_BUY_R_POUCH)
			seller.buying_bitfield &= ~MARINE_CAN_BUY_R_POUCH
		else
			seller.buying_bitfield &= ~MARINE_CAN_BUY_L_POUCH
		return TRUE
	if(selling_bitfield == (MARINE_CAN_BUY_ATTACHMENT|MARINE_CAN_BUY_ATTACHMENT2))
		if(seller.buying_bitfield & MARINE_CAN_BUY_ATTACHMENT)
			seller.buying_bitfield &= ~MARINE_CAN_BUY_ATTACHMENT
		else
			seller.buying_bitfield &= ~MARINE_CAN_BUY_ATTACHMENT2
		return TRUE
	seller.buying_bitfield &= ~selling_bitfield
	return TRUE

/proc/load_player_loadout(player_ckey, loadout_job, loadout_name)
	player_ckey = ckey(player_ckey)
	if(!player_ckey)
		return
	var/path = "data/player_saves/[player_ckey[1]]/[player_ckey]/preferences.sav"
	if(!path)
		return
	if(!fexists(path))
		return
	var/savefile/S = new /savefile(path)
	if(!S)
		return
	S.cd = "/loadouts"
	var/loadout_json = ""
	READ_FILE(S["[loadout_name + loadout_job]"], loadout_json)
	if(!loadout_json)
		return
	var/datum/loadout/loadout = jatum_deserialize(loadout_json)
	return loadout

/proc/convert_loadouts_list(list/loadouts_data)
	var/list/new_loadouts_data = list()
	for(var/i = 1 to length(loadouts_data) step 2)
		var/next_loadout_data = list()
		next_loadout_data += loadouts_data[i]
		next_loadout_data += loadouts_data[++i]
		new_loadouts_data += list(next_loadout_data)
	return new_loadouts_data
>>>>>>> 65ff761ff (Loadouts list save system change (#7381))
