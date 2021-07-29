//List of all visible and accessible slot on the loadout maker
GLOBAL_LIST_INIT(visible_item_slot_list, list(
	slot_head_str,
	slot_back_str,
	slot_wear_mask_str,
	slot_glasses_str,
	slot_w_uniform_str,
	slot_wear_suit_str,
	slot_gloves_str,
	slot_shoes_str,
	slot_s_store_str,
	slot_belt_str,
	slot_l_store_str,
	slot_r_store_str,
))

///All the vendor types which the automated loadout vendor can take items from
GLOBAL_LIST_INIT(loadout_linked_vendor, list(
<<<<<<< HEAD
	/obj/machinery/vending/marine/shared,
	/obj/machinery/vending/uniform_supply,
	/obj/machinery/vending/armor_supply,
	/obj/machinery/vending/marineFood,
	/obj/machinery/vending/MarineMed,
=======
	FACTION_NEUTRAL = list(
		/obj/machinery/vending/marine/shared,
		/obj/machinery/vending/uniform_supply,
		/obj/machinery/vending/armor_supply,
		/obj/machinery/vending/marineFood,
		/obj/machinery/vending/MarineMed,
	),
	FACTION_TERRAGOV = list(
		/obj/machinery/vending/marine/shared/hvh/team_one,
		/obj/machinery/vending/uniform_supply,
		/obj/machinery/vending/armor_supply/loyalist,
		/obj/machinery/vending/marineFood,
		/obj/machinery/vending/MarineMed,
	),
	FACTION_TERRAGOV_REBEL = list(
		/obj/machinery/vending/marine/shared/hvh,
		/obj/machinery/vending/uniform_supply,
		/obj/machinery/vending/armor_supply/rebel,
		/obj/machinery/vending/marineFood,
		/obj/machinery/vending/MarineMed/rebel,
	),
))

GLOBAL_LIST_INIT(marine_clothes_listed_products, list(
		/obj/effect/essentials_set/basic = list(CAT_STD, "Standard Kit", 0, "white"),
		/obj/effect/essentials_set/basicmodular = list(CAT_STD, "Essential Jaeger Kit", 0, "white"),
		/obj/effect/modular_set/skirmisher = list(CAT_AMR, "Light Skirmisher Jaeger kit", 0, "orange"),
		/obj/effect/modular_set/scout = list(CAT_AMR, "Light Scout Jaeger kit", 0, "orange"),
		/obj/effect/modular_set/infantry = list(CAT_AMR, "Medium Infantry Jaeger kit", 0, "orange"),
		/obj/effect/modular_set/eva = list(CAT_AMR, "Medium EVA Jaeger kit", 0, "orange"),
		/obj/effect/modular_set/assault = list(CAT_AMR, "Heavy Assault Jaeger kit", 0, "orange"),
		/obj/effect/modular_set/eod = list(CAT_AMR, "Heavy EOD Jaeger kit", 0, "orange"),
		/obj/item/clothing/suit/storage/marine/pasvest = list(CAT_AMR, "Regular armor", 0, "orange"),
		/obj/item/storage/backpack/marine/satchel = list(CAT_BAK, "Satchel", 0, "orange"),
		/obj/item/storage/backpack/marine/standard = list(CAT_BAK, "Backpack", 0, "black"),
		/obj/item/clothing/tie/storage/black_vest = list(CAT_WEB, "Tactical black vest", 0, "orange"),
		/obj/item/clothing/tie/storage/webbing = list(CAT_WEB, "Tactical Webbing", 0, "black"),
		/obj/item/clothing/tie/storage/holster = list(CAT_WEB, "Shoulder handgun holster", 0, "black"),
		/obj/item/storage/belt/sparepouch = list(CAT_BEL, "Utility belt", 0, "black"),
		/obj/item/storage/belt/marine = list(CAT_BEL, "Standard ammo belt", 0, "orange"),
		/obj/item/storage/belt/shotgun = list(CAT_BEL, "Shotgun ammo belt", 0, "orange"),
		/obj/item/storage/belt/knifepouch = list(CAT_BEL, "Knives belt", 0, "black"),
		/obj/item/storage/belt/gun/pistol/standard_pistol = list(CAT_BEL, "Pistol belt", 0, "black"),
		/obj/item/storage/belt/gun/revolver/standard_revolver = list(CAT_BEL, "Revolver belt", 0, "black"),
		/obj/item/belt_harness/marine = list(CAT_BEL, "Belt harness", 0, "black"),
		/obj/item/helmet_module/welding = list(CAT_HEL, "Jaeger welding module", 0, "orange"),
		/obj/item/helmet_module/binoculars =  list(CAT_HEL, "Jaeger binoculars module", 0, "orange"),
		/obj/item/helmet_module/antenna = list(CAT_HEL, "Jaeger Antenna module", 0, "orange"),
		/obj/item/clothing/head/helmet/marine/standard = list(CAT_HEL, "Regular helmet", 0, "black"),
		/obj/item/armor_module/storage/medical = list(CAT_MOD, "Medical Storage Module", 0, "black"),
		/obj/item/armor_module/storage/general = list(CAT_MOD, "General Purpose Storage Module", 0, "black"),
		/obj/item/armor_module/storage/engineering = list(CAT_MOD, "Engineering Storage Module", 0, "black"),
		/obj/item/storage/pouch/shotgun = list(CAT_POU, "Shotgun shell pouch", 0, "black"),
		/obj/item/storage/pouch/magazine/large = list(CAT_POU, "Magazine pouch", 0, "black"),
		/obj/item/storage/pouch/flare/full = list(CAT_POU, "Flare pouch", 0, "orange"),
		/obj/item/storage/pouch/firstaid/full = list(CAT_POU, "Firstaid pouch", 0,"orange"),
		/obj/item/storage/pouch/firstaid/injectors/full = list(CAT_POU, "Combat injector pouch", 0,"orange"),
		/obj/item/storage/pouch/med_lolipops  = list(CAT_POU, "Combat lolipop pouch", 0,"orange"),
		/obj/item/storage/pouch/tools/full = list(CAT_POU, "Tool pouch (tools included)", 0,"black"),
		/obj/item/storage/pouch/grenade/slightlyfull = list(CAT_POU, "Grenade pouch (grenades included)", 0,"black"),
		/obj/item/storage/pouch/construction/full = list(CAT_POU, "Construction pouch (materials included)", 0,"black"),
		/obj/item/storage/pouch/magazine/pistol/large = list(CAT_POU, "Pistol magazine pouch", 0,"black"),
		/obj/item/storage/pouch/pistol = list(CAT_POU, "Sidearm pouch", 0,"black"),
		/obj/effect/essentials_set/mimir = list(CAT_ARMMOD, "Mark 1 Mimir Resistance set", 0,"black"),
		/obj/item/armor_module/attachable/tyr_extra_armor/mark1 = list(CAT_ARMMOD, "Mark 1 Tyr extra armor module", 0,"black"),
		/obj/item/armor_module/attachable/ballistic_armor = list(CAT_ARMMOD, "Ballistic armor module", 0,"black"),
		/obj/item/armor_module/attachable/better_shoulder_lamp/mark1 = list(CAT_ARMMOD, "Mark 1 Baldur light armor module", 0,"black"),
		/obj/effect/essentials_set/vali = list(CAT_ARMMOD, "Vali chemical enhancement set", 0,"black"),
		/obj/item/attachable/extended_barrel = list(CAT_ATT, "Extended barrel", 0,"orange"),
		/obj/item/attachable/compensator = list(CAT_ATT, "Recoil compensator", 0,"black"),
		/obj/item/attachable/magnetic_harness = list(CAT_ATT, "Magnetic harness", 0,"orange"),
		/obj/item/attachable/reddot = list(CAT_ATT, "Red dot sight", 0,"black"),
		/obj/item/attachable/lasersight = list(CAT_ATT, "Laser sight", 0,"black"),
		/obj/item/attachable/verticalgrip = list(CAT_ATT, "Vertical grip", 0,"black"),
		/obj/item/attachable/scope/mini = list(CAT_ATT, "Mini scope", 0,"black"),
		/obj/item/attachable/angledgrip = list(CAT_ATT, "Angled grip", 0,"orange"),
		/obj/item/attachable/stock/t35stock = list(CAT_ATT, "T-35 stock", 0,"black"),
		/obj/item/attachable/stock/t19stock = list(CAT_ATT, "T-19 machine pistol stock", 0,"black"),
		/obj/item/clothing/mask/gas = list(CAT_MAS, "Transparent gas mask", 0,"black"),
		/obj/item/clothing/mask/gas/tactical = list(CAT_MAS, "Tactical gas mask", 0,"black"),
		/obj/item/clothing/mask/gas/tactical/coif = list(CAT_MAS, "Tactical coifed gas mask", 0,"black"),
		/obj/item/clothing/mask/rebreather/scarf = list(CAT_MAS, "Heat absorbent coif", 0,"black"),
		/obj/item/clothing/mask/rebreather = list(CAT_MAS, "Rebreather", 0,"black"),
		/obj/item/clothing/mask/bandanna = list(CAT_MAS, "Tan bandanna", 0,"black"),
		/obj/item/clothing/mask/bandanna/green = list(CAT_MAS, "Green bandanna", 0,"black"),
		/obj/item/clothing/mask/bandanna/white = list(CAT_MAS, "White bandanna", 0,"black"),
		/obj/item/clothing/mask/bandanna/black = list(CAT_MAS, "Black bandanna", 0,"black"),
		/obj/item/clothing/mask/bandanna/skull = list(CAT_MAS, "Skull bandanna", 0,"black"),
	))

GLOBAL_LIST_INIT(engineer_clothes_listed_products, list(
		/obj/effect/essentials_set/basic_engineer = list(CAT_STD, "Standard kit", 0, "white"),
		/obj/effect/essentials_set/basic_engineermodular = list(CAT_STD, "Essential Jaeger Kit", 0, "white"),
		/obj/effect/modular_set/skirmisher = list(CAT_AMR, "Light Skirmisher Jaeger kit", 0, "orange"),
		/obj/effect/modular_set/scout = list(CAT_AMR, "Light Scout Jaeger kit", 0, "orange"),
		/obj/effect/modular_set/infantry = list(CAT_AMR, "Medium Infantry Jaeger kit", 0, "orange"),
		/obj/effect/modular_set/eva = list(CAT_AMR, "Medium EVA Jaeger kit", 0, "orange"),
		/obj/effect/modular_set/assault = list(CAT_AMR, "Heavy Assault Jaeger kit", 0, "orange"),
		/obj/effect/modular_set/eod = list(CAT_AMR, "Heavy EOD Jaeger kit", 0, "orange"),
		/obj/item/clothing/suit/storage/marine/pasvest = list(CAT_AMR, "Regular armor", 0, "orange"),
		/obj/item/storage/backpack/marine/satchel/tech = list(CAT_BAK, "Satchel", 0, "orange"),
		/obj/item/storage/backpack/marine/tech = list(CAT_BAK, "Backpack", 0, "black"),
		/obj/item/storage/large_holster/blade/machete/full = list(CAT_BAK, "Machete scabbard", 0, "black"),
		/obj/item/storage/backpack/marine/engineerpack = list(CAT_BAK, "Welderpack", 0, "black"),
		/obj/item/clothing/tie/storage/brown_vest = list(CAT_WEB, "Tactical brown vest", 0, "orange"),
		/obj/item/clothing/tie/storage/webbing = list(CAT_WEB, "Tactical webbing", 0, "black"),
		/obj/item/clothing/tie/storage/holster = list(CAT_WEB, "Shoulder handgun holster", 0, "black"),
		/obj/item/storage/belt/utility/full = list(CAT_BEL, "Tool belt", 0, "white"),
		/obj/item/helmet_module/welding = list(CAT_HEL, "Jaeger welding module", 0, "orange"),
		/obj/item/helmet_module/binoculars =  list(CAT_HEL, "Jaeger binoculars module", 0, "orange"),
		/obj/item/helmet_module/antenna = list(CAT_HEL, "Jaeger Antenna module", 0, "orange"),
		/obj/item/clothing/head/helmet/marine/tech  = list(CAT_HEL, "Regular engineer helmet", 0, "black"),
		/obj/item/armor_module/storage/medical = list(CAT_MOD, "Medical Storage Module", 0, "black"),
		/obj/item/armor_module/storage/general = list(CAT_MOD, "General Purpose Storage Module", 0, "black"),
		/obj/item/armor_module/storage/engineering = list(CAT_MOD, "Engineering Storage Module", 0, "black"),
		/obj/item/storage/pouch/shotgun = list(CAT_POU, "Shotgun shell pouch", 0, "black"),
		/obj/item/storage/pouch/construction = list(CAT_POU, "Construction pouch", 0, "orange"),
		/obj/item/storage/pouch/explosive = list(CAT_POU, "Explosive pouch", 0, "black"),
		/obj/item/storage/pouch/tools/full = list(CAT_POU, "Tools pouch", 0, "black"),
		/obj/item/storage/pouch/grenade/slightlyfull = list(CAT_POU, "Grenade pouch (grenades included)", 0,"black"),
		/obj/item/storage/pouch/electronics/full = list(CAT_POU, "Electronics pouch", 0, "black"),
		/obj/item/storage/pouch/magazine/large = list(CAT_POU, "Magazine pouch", 0, "black"),
		/obj/item/storage/pouch/general/medium = list(CAT_POU, "Medium general pouch", 0, "black"),
		/obj/item/storage/pouch/flare/full = list(CAT_POU, "Flare pouch", 0, "black"),
		/obj/item/storage/pouch/firstaid/full = list(CAT_POU, "Firstaid pouch", 0, "orange"),
		/obj/item/storage/pouch/med_lolipops  = list(CAT_POU, "Combat lolipop pouch", 0,"orange"),
		/obj/item/storage/pouch/firstaid/injectors/full = list(CAT_POU, "Combat injector pouch", 0,"orange"),
		/obj/item/storage/pouch/magazine/pistol/large = list(CAT_POU, "Pistol magazine pouch", 0, "black"),
		/obj/item/storage/pouch/pistol = list(CAT_POU, "Sidearm pouch", 0, "black"),
		/obj/effect/essentials_set/mimir = list(CAT_ARMMOD, "Mark 1 Mimir Resistance set", 0,"black"),
		/obj/item/armor_module/attachable/ballistic_armor = list(CAT_ARMMOD, "Ballistic armor module", 0,"black"),
		/obj/item/armor_module/attachable/tyr_extra_armor/mark1 = list(CAT_ARMMOD, "Mark 1 Tyr extra armor module", 0,"black"),
		/obj/item/armor_module/attachable/better_shoulder_lamp/mark1 = list(CAT_ARMMOD, "Mark 1 Baldur light armor module", 0,"black"),
		/obj/effect/essentials_set/vali = list(CAT_ARMMOD, "Vali chemical enhancement set", 0,"black"),
		/obj/item/clothing/mask/gas = list(CAT_MAS, "Transparent gas mask", 0,"black"),
		/obj/item/clothing/mask/gas/tactical = list(CAT_MAS, "Tactical gas mask", 0,"black"),
		/obj/item/clothing/mask/gas/tactical/coif = list(CAT_MAS, "Tactical coifed gas mask", 0,"black"),
		/obj/item/clothing/mask/rebreather/scarf = list(CAT_MAS, "Heat absorbent coif", 0, "black"),
		/obj/item/clothing/mask/rebreather = list(CAT_MAS, "Rebreather", 0, "black"),
	))

GLOBAL_LIST_INIT(medic_clothes_listed_products, list(
		/obj/effect/essentials_set/basic_medic = list(CAT_STD, "Standard kit", 0, "white"),
		/obj/effect/essentials_set/basic_medicmodular = list(CAT_STD, "Essential Jaeger Kit", 0, "white"),
		/obj/effect/modular_set/skirmisher = list(CAT_AMR, "Light Skirmisher Jaeger kit", 0, "orange"),
		/obj/effect/modular_set/scout = list(CAT_AMR, "Light Scout Jaeger kit", 0, "orange"),
		/obj/effect/modular_set/infantry = list(CAT_AMR, "Medium Infantry Jaeger kit", 0, "orange"),
		/obj/effect/modular_set/eva = list(CAT_AMR, "Medium EVA Jaeger kit", 0, "orange"),
		/obj/effect/modular_set/assault = list(CAT_AMR, "Heavy Assault Jaeger kit", 0, "orange"),
		/obj/effect/modular_set/eod = list(CAT_AMR, "Heavy EOD Jaeger kit", 0, "orange"),
		/obj/item/clothing/suit/storage/marine/pasvest = list(CAT_AMR, "Regular armor", 0, "orange"),
		/obj/item/storage/backpack/marine/satchel/corpsman = list(CAT_BAK, "Satchel", 0, "orange"),
		/obj/item/storage/backpack/marine/corpsman = list(CAT_BAK, "Backpack", 0, "black"),
		/obj/item/clothing/tie/storage/brown_vest = list(CAT_WEB, "Tactical brown vest", 0, "orange"),
		/obj/item/clothing/tie/storage/white_vest/medic = list(CAT_WEB, "Corpsman white vest", 0, "black"),
		/obj/item/clothing/tie/storage/webbing = list(CAT_WEB, "Tactical webbing", 0, "black"),
		/obj/item/clothing/tie/storage/holster = list(CAT_WEB, "Shoulder handgun holster", 0, "black"),
		/obj/item/storage/belt/medicLifesaver = list(CAT_BEL, "Lifesaver medic belt", 0, "orange"),
		/obj/item/storage/belt/medical = list(CAT_BEL, "Medical belt", 0, "black"),
		/obj/item/helmet_module/welding = list(CAT_HEL, "Jaeger welding module", 0, "orange"),
		/obj/item/helmet_module/binoculars =  list(CAT_HEL, "Jaeger binoculars module", 0, "orange"),
		/obj/item/helmet_module/antenna = list(CAT_HEL, "Jaeger Antenna module", 0, "orange"),
		/obj/item/clothing/head/helmet/marine/corpsman  = list(CAT_HEL, "Regular corpsman helmet", 0, "black"),
		/obj/item/armor_module/storage/medical = list(CAT_MOD, "Medical Storage Module", 0, "black"),
		/obj/item/armor_module/storage/general = list(CAT_MOD, "General Purpose Storage Module", 0, "black"),
		/obj/item/armor_module/storage/engineering = list(CAT_MOD, "Engineering Storage Module", 0, "black"),
		/obj/item/storage/pouch/autoinjector/advanced/full = list(CAT_POU, "Advanced Autoinjector pouch", 0, "orange"),
		/obj/item/storage/pouch/hypospray/corps/full = list(CAT_POU, "Advanced hypospray pouch", 0, "orange"),
		/obj/item/storage/pouch/medkit/full = list(CAT_POU, "Medkit pouch", 0, "orange"),
		/obj/item/storage/pouch/med_lolipops  = list(CAT_POU, "Combat lolipop pouch", 0,"orange"),
		/obj/effect/essentials_set/mimir = list(CAT_ARMMOD, "Mark 1 Mimir Resistance set", 0,"black"),
		/obj/item/armor_module/attachable/ballistic_armor = list(CAT_ARMMOD, "Ballistic armor module", 0,"black"),
		/obj/item/armor_module/attachable/tyr_extra_armor/mark1 = list(CAT_ARMMOD, "Mark 1 Tyr extra armor module", 0,"black"),
		/obj/item/armor_module/attachable/better_shoulder_lamp/mark1 = list(CAT_ARMMOD, "Mark 1 Baldur light armor module", 0,"black"),
		/obj/effect/essentials_set/vali = list(CAT_ARMMOD, "Vali chemical enhancement set", 0,"black"),
		/obj/item/clothing/mask/gas = list(CAT_MAS, "Transparent gas mask", 0,"black"),
		/obj/item/clothing/mask/gas/tactical = list(CAT_MAS, "Tactical gas mask", 0,"black"),
		/obj/item/clothing/mask/gas/tactical/coif = list(CAT_MAS, "Tactical coifed gas mask", 0,"black"),
		/obj/item/clothing/mask/rebreather/scarf = list(CAT_MAS, "Heat absorbent coif", 0, "black"),
		/obj/item/clothing/mask/rebreather = list(CAT_MAS, "Rebreather", 0, "black"),
	))

GLOBAL_LIST_INIT(smartgunner_clothes_listed_products, list(
		/obj/effect/essentials_set/basic_smartgunner = list(CAT_STD, "Standard kit", 0, "white"),
		/obj/effect/essentials_set/basic_smartgunnermodular = list(CAT_STD, "Essential Jaeger Kit", 0, "white"),
		/obj/effect/modular_set/skirmisher = list(CAT_AMR, "Light Skirmisher Jaeger kit", 0, "orange"),
		/obj/effect/modular_set/scout = list(CAT_AMR, "Light Scout Jaeger kit", 0, "orange"),
		/obj/effect/modular_set/infantry = list(CAT_AMR, "Medium Infantry Jaeger kit", 0, "orange"),
		/obj/effect/modular_set/eva = list(CAT_AMR, "Medium EVA Jaeger kit", 0, "orange"),
		/obj/effect/modular_set/assault = list(CAT_AMR, "Heavy Assault Jaeger kit", 0, "orange"),
		/obj/effect/modular_set/eod = list(CAT_AMR, "Heavy EOD Jaeger kit", 0, "orange"),
		/obj/item/clothing/suit/storage/marine/pasvest = list(CAT_AMR, "Regular armor", 0, "orange"),
		/obj/item/clothing/head/helmet/marine/standard = list(CAT_HEL, "Regular helmet", 0, "black"),
		/obj/item/clothing/head/helmet/marine/heavy = list(CAT_HEL, "Heavy helmet", 0, "black"),
		/obj/item/clothing/tie/storage/black_vest = list(CAT_WEB, "Tactical black vest", 0, "orange"),
		/obj/item/clothing/tie/storage/webbing = list(CAT_WEB, "Tactical webbing", 0, "black"),
		/obj/item/clothing/tie/storage/holster = list(CAT_WEB, "Shoulder handgun holster", 0, "black"),
		/obj/item/storage/belt/marine = list(CAT_BEL, "Standard ammo belt", 0, "black"),
		/obj/item/storage/belt/shotgun = list(CAT_BEL, "Shotgun ammo belt", 0, "black"),
		/obj/item/storage/belt/knifepouch = list(CAT_BEL, "Knives belt", 0, "black"),
		/obj/item/storage/belt/gun/pistol/standard_pistol = list(CAT_BEL, "Pistol belt", 0, "orange"),
		/obj/item/storage/belt/gun/revolver/standard_revolver = list(CAT_BEL, "Revolver belt", 0, "orange"),
		/obj/item/storage/belt/sparepouch = list(CAT_BEL, "G8 general utility pouch", 0, "orange"),
		/obj/item/helmet_module/welding = list(CAT_HEL, "Jaeger welding module", 0, "orange"),
		/obj/item/helmet_module/binoculars =  list(CAT_HEL, "Jaeger binoculars module", 0, "orange"),
		/obj/item/helmet_module/antenna = list(CAT_HEL, "Jaeger Antenna module", 0, "orange"),
		/obj/item/armor_module/storage/medical = list(CAT_MOD, "Medical Storage Module", 0, "black"),
		/obj/item/armor_module/storage/general = list(CAT_MOD, "General Purpose Storage Module", 0, "black"),
		/obj/item/armor_module/storage/engineering = list(CAT_MOD, "Engineering Storage Module", 0, "black"),
		/obj/item/storage/pouch/shotgun = list(CAT_POU, "Shotgun shell pouch", 0, "black"),
		/obj/item/storage/pouch/grenade/slightlyfull = list(CAT_POU, "Grenade pouch (grenades included)", 0,"black"),
		/obj/item/storage/pouch/magazine/large = list(CAT_POU, "Magazine pouch", 0, "black"),
		/obj/item/storage/pouch/general/medium = list(CAT_POU, "Medium general pouch", 0, "black"),
		/obj/item/storage/pouch/flare/full = list(CAT_POU, "Flare pouch", 0, "orange"),
		/obj/item/storage/pouch/firstaid/injectors/full = list(CAT_POU, "Combat injector pouch", 0,"orange"),
		/obj/item/storage/pouch/firstaid/full = list(CAT_POU, "Firstaid pouch", 0, "orange"),
		/obj/item/storage/pouch/med_lolipops  = list(CAT_POU, "Combat lolipop pouch", 0,"orange"),
		/obj/item/storage/pouch/magazine/pistol/large = list(CAT_POU, "Pistol magazine pouch", 0, "black"),
		/obj/item/storage/pouch/pistol = list(CAT_POU, "Sidearm pouch", 0, "black"),
		/obj/effect/essentials_set/mimir = list(CAT_ARMMOD, "Mark 1 Mimir Resistance set", 0,"black"),
		/obj/item/armor_module/attachable/tyr_extra_armor/mark1 = list(CAT_ARMMOD, "Mark 1 Tyr extra armor module", 0,"black"),
		/obj/item/armor_module/attachable/better_shoulder_lamp/mark1 = list(CAT_ARMMOD, "Mark 1 Baldur light armor module", 0,"black"),
		/obj/effect/essentials_set/vali = list(CAT_ARMMOD, "Vali chemical enhancement set", 0,"black"),
		/obj/item/clothing/mask/gas = list(CAT_MAS, "Transparent gas mask", 0,"black"),
		/obj/item/clothing/mask/gas/tactical = list(CAT_MAS, "Tactical gas mask", 0,"black"),
		/obj/item/clothing/mask/gas/tactical/coif = list(CAT_MAS, "Tactical coifed gas mask", 0,"black"),
		/obj/item/clothing/mask/rebreather/scarf = list(CAT_MAS, "Heat absorbent coif", 0, "black"),
		/obj/item/clothing/mask/rebreather = list(CAT_MAS, "Rebreather", 0, "black"),
	))

GLOBAL_LIST_INIT(leader_clothes_listed_products, list(
		/obj/effect/essentials_set/basic_squadleader = list(CAT_STD, "Standard kit", 0, "white"),
		/obj/effect/essentials_set/basic_squadleadermodular = list(CAT_STD, "Essential Jaeger Kit", 0, "white"),
		/obj/effect/modular_set/skirmisher = list(CAT_AMR, "Light Skirmisher Jaeger kit", 0, "black"),
		/obj/effect/modular_set/scout = list(CAT_AMR, "Light Scout Jaeger kit", 0, "orange"),
		/obj/effect/modular_set/infantry = list(CAT_AMR, "Medium Infantry Jaeger kit", 0, "black"),
		/obj/effect/modular_set/eva = list(CAT_AMR, "Medium EVA Jaeger kit", 0, "black"),
		/obj/effect/modular_set/assault = list(CAT_AMR, "Heavy Assault Jaeger kit", 0, "black"),
		/obj/effect/modular_set/eod = list(CAT_AMR, "Heavy EOD Jaeger kit", 0, "black"),
		/obj/item/clothing/suit/storage/marine/pasvest = list(CAT_AMR, "Regular armor", 0, "orange"),
		/obj/item/storage/backpack/marine/satchel = list(CAT_BAK, "Satchel", 0, "black"),
		/obj/item/storage/backpack/marine/standard = list(CAT_BAK, "Backpack", 0, "black"),
		/obj/item/storage/large_holster/blade/machete/full = list(CAT_BAK, "Machete scabbard", 0, "black"),
		/obj/item/clothing/tie/storage/black_vest = list(CAT_WEB, "Tactical black vest", 0, "black"),
		/obj/item/clothing/tie/storage/webbing = list(CAT_WEB, "Tactical webbing", 0, "black"),
		/obj/item/clothing/tie/storage/holster = list(CAT_WEB, "Shoulder handgun holster", 0, "black"),
		/obj/item/storage/belt/marine = list(CAT_BEL, "Standard ammo belt", 0, "black"),
		/obj/item/storage/belt/shotgun = list(CAT_BEL, "Shotgun ammo belt", 0, "black"),
		/obj/item/storage/belt/knifepouch = list(CAT_BEL, "Knives belt", 0, "black"),
		/obj/item/storage/belt/gun/pistol/standard_pistol = list(CAT_BEL, "Pistol belt", 0, "black"),
		/obj/item/storage/belt/gun/revolver/standard_revolver = list(CAT_BEL, "Revolver belt", 0, "black"),
		/obj/item/storage/belt/sparepouch = list(CAT_BEL, "G8 general utility pouch", 0, "black"),
		/obj/item/belt_harness/marine = list(CAT_BEL, "Belt Harness", 0, "black"),
		/obj/item/helmet_module/welding = list(CAT_HEL, "Jaeger welding module", 0, "orange"),
		/obj/item/helmet_module/binoculars =  list(CAT_HEL, "Jaeger binoculars module", 0, "orange"),
		/obj/item/helmet_module/antenna = list(CAT_HEL, "Jaeger Antenna module", 0, "orange"),
		/obj/item/clothing/head/helmet/marine/leader  = list(CAT_HEL, "Regular leader helmet", 0, "black"),
		/obj/item/armor_module/storage/medical = list(CAT_MOD, "Medical Storage Module", 0, "black"),
		/obj/item/armor_module/storage/general = list(CAT_MOD, "General Purpose Storage Module", 0, "black"),
		/obj/item/armor_module/storage/engineering = list(CAT_MOD, "Engineering Storage Module", 0, "black"),
		/obj/item/storage/pouch/shotgun = list(CAT_POU, "Shotgun shell pouch", 0, "black"),
		/obj/item/storage/pouch/general/large = list(CAT_POU, "General pouch", 0, "black"),
		/obj/item/storage/pouch/magazine/large = list(CAT_POU, "Magazine pouch", 0, "black"),
		/obj/item/storage/pouch/flare/full = list(CAT_POU, "Flare pouch", 0, "black"),
		/obj/item/storage/pouch/firstaid/injectors/full = list(CAT_POU, "Combat injector pouch", 0,"orange"),
		/obj/item/storage/pouch/firstaid/full = list(CAT_POU, "Firstaid pouch", 0, "orange"),
		/obj/item/storage/pouch/medkit = list(CAT_POU, "Medkit pouch", 0, "black"),
		/obj/item/storage/pouch/med_lolipops  = list(CAT_POU, "Combat lolipop pouch", 0,"orange"),
		/obj/item/storage/pouch/tools/full = list(CAT_POU, "Tool pouch (tools included)", 0, "black"),
		/obj/item/storage/pouch/grenade/slightlyfull = list(CAT_POU, "Grenade pouch (grenades included)", 0,"black"),
		/obj/item/storage/pouch/construction/full = list(CAT_POU, "Construction pouch (materials included)", 0, "black"),
		/obj/item/storage/pouch/magazine/pistol/large = list(CAT_POU, "Pistol magazine pouch", 0, "black"),
		/obj/item/storage/pouch/pistol = list(CAT_POU, "Sidearm pouch", 0, "black"),
		/obj/item/storage/pouch/explosive = list(CAT_POU, "Explosive pouch", 0, "black"),
		/obj/effect/essentials_set/mimir = list(CAT_ARMMOD, "Mark 1 Mimir Resistance set", 0,"black"),
		/obj/item/armor_module/attachable/tyr_extra_armor/mark1 = list(CAT_ARMMOD, "Mark 1 Tyr extra armor module", 0,"black"),
		/obj/item/armor_module/attachable/ballistic_armor = list(CAT_ARMMOD, "Ballistic armor module", 0,"black"),
		/obj/item/armor_module/attachable/better_shoulder_lamp/mark1 = list(CAT_ARMMOD, "Mark 1 Baldur light armor module", 0,"black"),
		/obj/effect/essentials_set/vali = list(CAT_ARMMOD, "Vali chemical enhancement set", 0,"black"),
		/obj/item/clothing/mask/gas = list(CAT_MAS, "Transparent gas mask", 0,"black"),
		/obj/item/clothing/mask/gas/tactical = list(CAT_MAS, "Tactical gas mask", 0,"black"),
		/obj/item/clothing/mask/gas/tactical/coif = list(CAT_MAS, "Tactical coifed gas mask", 0,"black"),
		/obj/item/clothing/mask/rebreather/scarf = list(CAT_MAS, "Heat absorbent coif", 0, "black"),
		/obj/item/clothing/mask/rebreather = list(CAT_MAS, "Rebreather", 0, "black"),
	))

///Assoc list linking the job title with their specific clothes vendor
GLOBAL_LIST_INIT(job_specific_clothes_vendor, list(
	SQUAD_MARINE = GLOB.marine_clothes_listed_products,
	SQUAD_ENGINEER = GLOB.engineer_clothes_listed_products,
	SQUAD_CORPSMAN = GLOB.medic_clothes_listed_products,
	SQUAD_SMARTGUNNER = GLOB.smartgunner_clothes_listed_products,
	SQUAD_LEADER = GLOB.leader_clothes_listed_products,
>>>>>>> 6d9109382 (Allow every sword holster to fit in the same armor by changing their paths (#7651))
))

///All the items that once they are in loadouts, should not have stock checked when sold by the loadout vendor
GLOBAL_LIST_INIT(bypass_vendor_item, typecacheof(list(
	/obj/item/ammo_magazine/handful,
	)))

#define MARINE_LOADOUT "marine"
#define ENGINEER_LOADOUT "engie"
#define MEDIC_LOADOUT "medic"
#define SMARTGUNNER_LOADOUT "smartgunner"
#define LEADER_LOADOUT "leader"

//Defines use for the visualisation of loadouts
#define NO_OFFSET "0%"
#define NO_SCALING 1
#define MODULAR_ARMOR_OFFSET_Y "-10%"
#define MODULAR_ARMOR_SCALING 1.2

///The maximum number of loadouts one player can have
#define MAXIMUM_LOADOUT 50
