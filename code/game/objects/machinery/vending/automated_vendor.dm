/obj/machinery/automated_vendor
	name = "\improper automated vendor"
	desc = ""
	icon = 'icons/obj/machines/vending.dmi'
	icon_state = "marinearmory"
	density = TRUE
	anchored = TRUE
	layer = BELOW_OBJ_LAYER
	req_access = null
	req_one_access = null
	interaction_flags = INTERACT_MACHINE_TGUI

	idle_power_usage = 60
	active_power_usage = 3000

/obj/machinery/automated_vendor/update_icon()
	if(is_operational())
		icon_state = initial(icon_state)
	else
		icon_state = "[initial(icon_state)]-off"

/obj/machinery/automated_vendor/can_interact(mob/user)
	. = ..()
	if(!.)
		return FALSE

	if(ishuman(user))
		var/mob/living/carbon/human/H = user
		if(!allowed(H))
			return FALSE

		var/obj/item/card/id/I = H.get_idcard()
		if(!istype(I)) //not wearing an ID
			return FALSE

		if(I.registered_name != H.real_name)
			return FALSE

	return TRUE

/obj/machinery/automated_vendor/ui_assets(mob/user)
	return list(
		get_asset_datum(/datum/asset/simple/inventory),
	)

/obj/machinery/automated_vendor/ui_interact(mob/user, datum/tgui/ui)
	ui = SStgui.try_update_ui(user, src, ui)

	if(!ui)
		ui = new(user, src, "LoadoutSelector", name)
		ui.open()

/obj/machinery/automated_vendor/ui_data(mob/user)
	var/list/data = list()
	var/list/items = list()
	for (var/item_slot_key in GLOB.item_slot_list)
		var/datum/item_slot/item_slot_datum = GLOB.item_slot_list[item_slot_key]

		var/list/result

		var/obj/item/item = user.get_item_by_slot(item_slot_datum.item_slot)
		if (isnull(item))
			items[item_slot_key] = result
			continue

		LAZYINITLIST(result)

		result["icon"] = icon2base64(icon(item.icon, item.icon_state))
		result["name"] = item.name

		items[item_slot_key] = result
	data["items"] = items
	return data