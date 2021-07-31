/obj/machinery/deployable
	name = "deployable"
	desc = "deployable"
	icon = 'icons/obj/objects.dmi'


<<<<<<< HEAD
=======
/obj/machinery/deployable/Initialize(mapload, _internal_item, deployer)
	. = ..()
	internal_item = _internal_item
>>>>>>> ce3ae7c72 (Sentry Rework (#7404))

/obj/machinery/deployable/barrier
	name = "deployable barrier"
	desc = "A deployable barrier. Swipe your ID card to lock/unlock it."
	icon = 'icons/obj/objects.dmi'
	anchored = FALSE
	density = TRUE
	icon_state = "barrier0"
	max_integrity = 100
