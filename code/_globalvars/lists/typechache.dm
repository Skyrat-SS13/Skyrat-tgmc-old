//please store common type caches here.
//type caches should only be stored here if used in mutiple places or likely to be used in mutiple places.

//Note: typecache can only replace istype if you know for sure the thing is at least a datum.

GLOBAL_LIST_INIT(typecache_mob, typecacheof(/mob))

GLOBAL_LIST_INIT(typecache_living, typecacheof(/mob/living))

GLOBAL_LIST_INIT(ignored_atoms, typecacheof(list(/mob/dead, /obj/effect/landmark, /obj/docking_port, /obj/effect/particle_effect/sparks, /obj/effect/DPtarget, /obj/effect/supplypod_selector, /atom/movable/lighting_object)))
<<<<<<< HEAD
=======

GLOBAL_LIST_INIT(hvh_restricted_items_list, typecacheof(list(
	/obj/item/armor_module/attachable/ballistic_armor,
	/obj/item/attachable/scope,
	/obj/item/clothing/suit/storage/marine/pasvest,
)))
>>>>>>> e33b3287a (Fix coloring in hvh (#7487))
