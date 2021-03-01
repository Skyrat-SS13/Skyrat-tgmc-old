/datum/dna
	var/list/features = MANDATORY_FEATURE_LIST
	var/list/mutant_bodyparts = list()
	var/list/body_markings = list()

/datum/dna/Destroy()
	features = null
	mutant_bodyparts = null
	body_markings = null
	return ..()
