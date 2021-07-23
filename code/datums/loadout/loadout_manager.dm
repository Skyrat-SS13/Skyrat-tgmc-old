/**
 * This datum in charge with selecting wich loadout is currently being edited
 * It also contains a tgui to navigate beetween loadouts
 */
/datum/loadout_manager
<<<<<<< HEAD
	/// The loadout currently selected/modified
	var/datum/loadout/current_loadout
	/// A list of all loadouts
	var/list/loadouts_list = list()
	/// The data sent to tgui
=======
	/**
	 * List of all loadouts. Format is list(list(loadout_job, loadout_name))
	 */
>>>>>>> 65ff761ff (Loadouts list save system change (#7381))
	var/loadouts_data = list()
	/// The datum in charge of the user wanting to equip a saved loadout
	var/datum/loadout_seller/seller
	/// The host of the loadout_manager, aka from which loadout vendor are you managing loadouts
	var/loadout_vendor
	/// The version of the loadout manager
	var/version = 1

<<<<<<< HEAD
///Remove a loadout from the list.
/datum/loadout_manager/proc/delete_loadout(datum/loadout/loadout_to_delete)
	loadouts_list -= loadout_to_delete
	if(current_loadout == loadout_to_delete)
		current_loadout = null
	if(length(loadouts_data))
		prepare_all_loadouts_data()
=======
///Remove the data of a loadout from the loadouts list
/datum/loadout_manager/proc/delete_loadout(mob/user, loadout_name, loadout_job)
	for(var/loadout_data in loadouts_data)
		if(loadout_data[1] == loadout_job && loadout_data[2] == loadout_name)
			loadouts_data -= loadout_data
			return
>>>>>>> 65ff761ff (Loadouts list save system change (#7381))

///Prepare all loadouts data before sending them to tgui
/datum/loadout_manager/proc/prepare_all_loadouts_data()
	loadouts_data = list()
	var/next_loadout_data = list()
	for(var/datum/loadout/next_loadout AS in loadouts_list)
		next_loadout_data = list()
		next_loadout_data["job"] = next_loadout.job
		next_loadout_data["name"] = next_loadout.name
		loadouts_data += list(next_loadout_data)

<<<<<<< HEAD
///Add one loadout to the loadout data
/datum/loadout_manager/proc/add_loadout_data(datum/loadout/next_loadout)
	var/next_loadout_data = list()
	next_loadout_data["job"] = next_loadout.job
	next_loadout_data["name"] = next_loadout.name
	loadouts_data += list(next_loadout_data)
=======
///Add the name and the job of a datum/loadout into the list of all loadout data
/datum/loadout_manager/proc/add_loadout(datum/loadout/next_loadout)
	loadouts_data += list(list(next_loadout.job, next_loadout.name))
>>>>>>> 65ff761ff (Loadouts list save system change (#7381))

/datum/loadout_manager/ui_interact(mob/user, datum/tgui/ui)
	ui = SStgui.try_update_ui(user, src, ui)
	if(!ui)
		prepare_all_loadouts_data()
		ui = new(user, src, "LoadoutManager")
		ui.open()

/datum/loadout_manager/ui_state(mob/user)
	return GLOB.human_adjacent_state

/datum/loadout_manager/ui_host()
	return loadout_vendor

/// Wrapper proc to set the host of our ui datum, aka the loadout vendor that's showing us the loadouts
/datum/loadout_manager/proc/set_host(_loadout_vendor)
	loadout_vendor = _loadout_vendor
	RegisterSignal(loadout_vendor, COMSIG_PARENT_QDELETING, .proc/close_ui)

/// Wrapper proc to handle loadout vendor being qdeleted while we have loadout manager opened
/datum/loadout_manager/proc/close_ui()
	SIGNAL_HANDLER
	ui_close()

/datum/loadout_manager/ui_data(mob/user)
	var/data = list()
<<<<<<< HEAD
	if(!loadouts_data)
		prepare_all_loadouts_data()
	data["loadout_list"] = loadouts_data
=======
	var/list/loadouts_data_tgui = list()
	for(var/list/loadout_data in loadouts_data)
		var/next_loadout_data = list()
		next_loadout_data["job"] = loadout_data[1]
		next_loadout_data["name"] = loadout_data[2]
		loadouts_data_tgui += list(next_loadout_data)
	data["loadout_list"] = loadouts_data_tgui
>>>>>>> 65ff761ff (Loadouts list save system change (#7381))
	return data

/datum/loadout_manager/ui_act(action, list/params, datum/tgui/ui, datum/ui_state/state)
	. = ..()
	if(.)
		return
	if(TIMER_COOLDOWN_CHECK(ui.user, COOLDOWN_LOADOUT_VISUALIZATION))
		return
	TIMER_COOLDOWN_START(ui.user, COOLDOWN_LOADOUT_VISUALIZATION, 1 SECONDS)//Anti spam cooldown
	switch(action)
		if("saveLoadout")
			if(length(loadouts_list) >= MAXIMUM_LOADOUT)
				to_chat(ui.user, "<span class='warning'>You've reached the maximum number of loadouts saved, please delete some before saving new ones</span>")
				return
			var/job = params["loadout_job"]
			var/loadout_name = params["loadout_name"]
			if(isnull(loadout_name))
				return
			var/datum/loadout/loadout = create_empty_loadout(loadout_name, job)
			loadout.save_mob_loadout(ui.user)
<<<<<<< HEAD
			loadouts_list += loadout
			add_loadout_data(loadout)
			open_loadout(loadout, ui.user)
=======
			ui.user.client.prefs.save_loadout(loadout)
			add_loadout(loadout)
			update_static_data(ui.user, ui)
			loadout.loadout_vendor = loadout_vendor
			loadout.ui_interact(ui.user)
		if("importLoadout")
			var/loadout_id = params["loadout_id"]
			if(isnull(loadout_id))
				return
			var/list/items = splittext(loadout_id, "//")
			if(length(items) != 3)
				to_chat(ui.user, "<span class='warning'>Wrong format!</span>")
				return
			var/datum/loadout/loadout = load_player_loadout(items[1], items[2], items[3])
			if(!istype(loadout))
				to_chat(ui.user, "<span class='warning'>Loadout not found!</span>")
				return
			if(!(loadout.version in GLOB.accepted_loadout_versions))
				to_chat(ui.user, "<span class='warning'>The loadouts was found but is from a past version, and cannot be imported.</span>")
				return
			if(loadout.version != CURRENT_LOADOUT_VERSION)
				loadout.version = CURRENT_LOADOUT_VERSION
			ui.user.client.prefs.save_loadout(loadout)
			add_loadout(loadout)
			update_static_data(ui.user, ui)
			loadout.loadout_vendor = loadout_vendor
			loadout.ui_interact(ui.user)
>>>>>>> 65ff761ff (Loadouts list save system change (#7381))
		if("selectLoadout")
			var/job = params["loadout_job"]
			var/name = params["loadout_name"]
			if(isnull(name))
				return
<<<<<<< HEAD
			for(var/datum/loadout/next_loadout AS in loadouts_list)
				if(next_loadout.name == name && next_loadout.job == job)
					open_loadout(next_loadout, ui.user)
					return

/// Set the loadout gave in argument as the current loadout and open it
/datum/loadout_manager/proc/open_loadout(datum/loadout/loadout, mob/user)
	if(current_loadout)
		current_loadout.ui_close()
		current_loadout.loadout_vendor = null
	current_loadout = loadout
	current_loadout.loadout_vendor = loadout_vendor
	current_loadout.ui_interact(user)

/datum/loadout_manager/ui_close(mob/user)
	. = ..()
	current_loadout?.loadout_vendor = null
	current_loadout?.ui_close()
	loadout_vendor = null
	user.client?.prefs.save_loadout_manager()
=======
			var/datum/loadout/loadout = ui.user.client.prefs.load_loadout(name, job)
			if(!loadout)
				to_chat(ui.user, "<span class='warning'>Error when loading this loadout</span>")
				delete_loadout(ui.user, name, job)
				CRASH("Fail to load loadouts")
			loadout.loadout_vendor = loadout_vendor
			loadout.ui_interact(ui.user)


/datum/loadout_manager/ui_close(mob/user)
	. = ..()
	user.client?.prefs.save_loadout_list(loadouts_data, CURRENT_LOADOUT_VERSION)
>>>>>>> 65ff761ff (Loadouts list save system change (#7381))
