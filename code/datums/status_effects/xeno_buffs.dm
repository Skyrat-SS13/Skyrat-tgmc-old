/datum/status_effect/resin_jelly_coating
	id = "resin jelly"
	duration = 15 SECONDS
	tick_interval = 30
	status_type = STATUS_EFFECT_REFRESH
	alert_type = null

/datum/status_effect/resin_jelly_coating/on_apply()
	if(!isxeno(owner))
		return FALSE
	var/mob/living/carbon/xenomorph/X = owner
	X.fire_resist_modifier -= 20
	X.add_filter("resin_jelly_outline", 2, outline_filter(1, COLOR_RED))
	return TRUE

/datum/status_effect/resin_jelly_coating/on_remove()
	var/mob/living/carbon/xenomorph/X = owner
	X.fire_resist_modifier += 20
	X.remove_filter("resin_jelly_outline")
<<<<<<< HEAD
	to_chat(owner, "<span class='xenonotice'>We feel more vulnerable again.</span>")
=======
	owner.balloon_alert(owner, "We are vulnerable again")
>>>>>>> 41bd2e723 (Convert a number of tochats to balloon messages (#7641))
	return ..()

/datum/status_effect/resin_jelly_coating/tick()
	owner.heal_limb_damage(0, 5)
	return ..()
