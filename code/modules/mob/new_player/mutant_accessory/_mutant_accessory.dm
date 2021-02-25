GLOBAL_LIST_EMPTY(generic_accessories)
GLOBAL_LIST_INIT(mutant_accessories, InitMutantAccessories())

/proc/InitMutantAccessories()
	var/list/compiled = list()
	// Here we build the global list for all accessories
	for(var/path in subtypesof(/datum/mutant_accessory))
		var/datum/mutant_accessory/P = path
		if(initial(P.key) && initial(P.name))
			P = new path()
			if(!compiled[P.key])
				compiled[P.key] = list()
			compiled[P.key][P.name] = P
			//TODO: Replace "generic" definitions with something better
			if(P.generic_name && !GLOB.generic_accessories[P.key])
				GLOB.generic_accessories[P.key] = P.generic_name
	return compiled

/datum/mutant_accessory
	/// Name of the accessory
	var/name
	/// Which key is used for this accessory
	var/key
	/// Whats the generic name of its type (Wings, Horns etc.)
	var/generic_name
	/// Icon file of this accessory
	var/icon
	/// Icon state of this accessory
	var/icon_state
	/// If true, then it wont be an available choice from prefs
	var/locked
	/// If has an organ type, this mutant bodypart will grant the organ too
	var/organ_type
	/// Whether an accessory actually exists, if it doesnt then it will only be recorded in DNA. (Important for "None" selections or non-standard choices such as leg type)
	var/factual = TRUE
	/// Which color source does it take from. USE_ONE_COLOR or USE_MATRIXED_COLORS allow customization choices
	var/color_src = USE_ONE_COLOR
	/// Which species can take it. If null then all can (The species needs a key in their default mutant bodyparts for this too)
	var/list/allowed_species
	/// Which layers get rendered for this accessory
	var/list/relevant_layers = list(BODY_BEHIND_LAYER, BODY_ADJ_LAYER, BODY_FRONT_LAYER)

	/// Which gender is allowed to take it. if null then all can
	var/gender
	/// Whether it gets a special sprite for genders
	var/gender_specific

	/// It's x dimension
	var/dimension_x = 32
	/// It's y dimension
	var/dimension_y = 32
	/// Whether to center the sprite. Important for non standard dimensions
	var/center

	/// Whether the accessory can have a special icon_state to render, i.e. wagging tails
	var/special_render_case

	/// Whether it has any extras to render, and their appropriate color sources. You cant use the customizable keys for this
	var/extra
	var/extra_color_src
	var/extra2
	var/extra2_color_src

	///Which color we default to on acquisition of the accessory (such as switching species, default color for character customization etc)
	///You can also put down a a HEX color, to be used instead as the default
	var/default_color

/datum/mutant_accessory/New()
	if(!default_color)
		switch(color_src)
			if(USE_ONE_COLOR)
				default_color = DEFAULT_PRIMARY
			if(USE_MATRIXED_COLORS)
				default_color = DEFAULT_MATRIXED
			else
				default_color = "FFFFFF"
	if(name == "None")
		factual = FALSE
	if(color_src == USE_MATRIXED_COLORS && default_color != DEFAULT_MATRIXED)
		default_color = DEFAULT_MATRIXED

/datum/mutant_accessory/proc/get_special_render_state(mob/living/carbon/human/H)
	return
