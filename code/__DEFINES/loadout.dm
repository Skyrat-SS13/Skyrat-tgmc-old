<<<<<<< HEAD
=======
#define MARINE_CAN_BUY_UNIFORM (1 << 0)
#define MARINE_CAN_BUY_SHOES (1 << 1)
#define MARINE_CAN_BUY_HELMET (1 << 2)
#define MARINE_CAN_BUY_ARMOR (1 << 3)
#define MARINE_CAN_BUY_GLOVES (1 << 4)
#define MARINE_CAN_BUY_EAR (1 << 5)
#define MARINE_CAN_BUY_BACKPACK (1 << 6)
#define MARINE_CAN_BUY_R_POUCH (1 << 7)
#define MARINE_CAN_BUY_L_POUCH (1 << 8)
#define MARINE_CAN_BUY_BELT (1 << 9)
#define MARINE_CAN_BUY_GLASSES (1 << 10)
#define MARINE_CAN_BUY_MASK (1 << 11)
#define MARINE_CAN_BUY_ESSENTIALS (1 << 12)
#define MARINE_CAN_BUY_ATTACHMENT (1 << 13)
#define MARINE_CAN_BUY_ATTACHMENT2 (1 << 14)

#define MARINE_CAN_BUY_WEBBING (1 << 15)
#define MARINE_CAN_BUY_MODULE (1 << 16)
#define MARINE_CAN_BUY_ARMORMOD (1 << 17)

#define MARINE_CAN_BUY_ALL ((1 << 18) - 1)

#define CAT_ESS "ESSENTIALS"
#define CAT_STD "STANDARD EQUIPMENT"
#define CAT_SHO "SHOES"
#define CAT_HEL "HATS"
#define CAT_AMR "ARMOR"
#define CAT_GLO "GLOVES"
#define CAT_EAR "EAR"
#define CAT_BAK "BACKPACK"
#define CAT_POU "POUCHES"
#define CAT_WEB "WEBBING"
#define CAT_BEL "BELT"
#define CAT_MAS "MASKS"
#define CAT_ATT "GUN ATTACHMENTS"
#define CAT_MOD "JAEGER STORAGE MODULES"
#define CAT_ARMMOD "JAEGER ARMOR MODULES"

#define CAT_MEDSUP "MEDICAL SUPPLIES"
#define CAT_ENGSUP "ENGINEERING SUPPLIES"
#define CAT_LEDSUP "LEADER SUPPLIES"

GLOBAL_LIST_INIT(marine_selector_cats, list(
		CAT_MOD = list(MARINE_CAN_BUY_MODULE),
		CAT_ARMMOD = list(MARINE_CAN_BUY_ARMORMOD),
		CAT_STD = list(MARINE_CAN_BUY_UNIFORM),
		CAT_SHO = list(MARINE_CAN_BUY_SHOES),
		CAT_HEL = list(MARINE_CAN_BUY_HELMET),
		CAT_AMR = list(MARINE_CAN_BUY_ARMOR),
		CAT_GLO = list(MARINE_CAN_BUY_GLOVES),
		CAT_EAR = list(MARINE_CAN_BUY_EAR),
		CAT_BAK = list(MARINE_CAN_BUY_BACKPACK),
		CAT_WEB = list(MARINE_CAN_BUY_WEBBING),
		CAT_POU = list(MARINE_CAN_BUY_R_POUCH,MARINE_CAN_BUY_L_POUCH),
		CAT_BEL = list(MARINE_CAN_BUY_BELT),
		CAT_GLA = list(MARINE_CAN_BUY_GLASSES),
		CAT_MAS = list(MARINE_CAN_BUY_MASK),
		CAT_ATT = list(MARINE_CAN_BUY_ATTACHMENT,MARINE_CAN_BUY_ATTACHMENT2),
		CAT_ESS = list(MARINE_CAN_BUY_ESSENTIALS),
		CAT_MEDSUP = null,
		CAT_ENGSUP = null,
		CAT_LEDSUP = null,
	))

#define METAL_PRICE_IN_GEAR_VENDOR 2
#define PLASTEEL_PRICE_IN_GEAR_VENDOR 4
#define SANDBAG_PRICE_IN_GEAR_VENDOR 5

GLOBAL_LIST_INIT(engineer_gear_listed_products, list(
		/obj/effect/essentials_set/engi = list(CAT_ESS, "Essential Engineer Set", 0, "white"),
		/obj/item/stack/sheet/metal/small_stack = list(CAT_ENGSUP, "Metal x10", METAL_PRICE_IN_GEAR_VENDOR, "orange"),
		/obj/item/stack/sheet/plasteel/small_stack = list(CAT_ENGSUP, "Plasteel x10", PLASTEEL_PRICE_IN_GEAR_VENDOR, "orange"),
		/obj/item/stack/sandbags_empty/half = list(CAT_ENGSUP, "Sandbags x25", SANDBAG_PRICE_IN_GEAR_VENDOR, "orange"),
		/obj/item/tool/pickaxe/plasmacutter = list(CAT_ENGSUP, "Plasma cutter", 20, "black"),
		/obj/item/storage/box/minisentry = list(CAT_ENGSUP, "UA-580 point defense sentry kit", 50, "black"),
		/obj/item/explosive/plastique = list(CAT_ENGSUP, "Plastique explosive", 3, "black"),
		/obj/item/detpack = list(CAT_ENGSUP, "Detonation pack", 5, "black"),
		/obj/item/tool/shovel/etool = list(CAT_ENGSUP, "Entrenching tool", 1, "black"),
		/obj/item/tool/handheld_charger = list(CAT_ENGSUP, "Hand-held cell charger", 3, "black"),
		/obj/item/binoculars/tactical/range = list(CAT_ENGSUP, "Range Finder", 10, "black"),
		/obj/item/cell/high = list(CAT_ENGSUP, "High capacity powercell", 1, "black"),
		/obj/item/storage/box/explosive_mines = list(CAT_ENGSUP, "M20 mine box", 18, "black"),
		/obj/item/storage/box/explosive_mines/large = list(CAT_ENGSUP, "Large M20 mine box", 35, "black"),
		/obj/item/storage/pouch/explosive/razorburn = list(CAT_ENGSUP, "Pack of Razorburn grenades", 11, "orange"),
		/obj/item/explosive/grenade/chem_grenade/razorburn_large = list(CAT_ENGSUP, "Razorburn canister", 7, "black"),
		/obj/item/explosive/grenade/chem_grenade/razorburn_smol = list(CAT_ENGSUP, "Razorburn grenade", 3, "black"),
		/obj/item/multitool = list(CAT_ENGSUP, "Multitool", 1, "black"),
		/obj/item/circuitboard/general = list(CAT_ENGSUP, "General circuit board", 1, "black"),
		/obj/item/assembly/signaler = list(CAT_ENGSUP, "Signaler (for detpacks)", 1, "black"),
		/obj/item/stack/voucher/sentry = list(CAT_ENGSUP, "UA 571-C Base defense sentry voucher", 26, "black"),
	))

GLOBAL_LIST_INIT(medic_gear_listed_products, list(
		/obj/effect/essentials_set/medic = list(CAT_ESS, "Essential Medic Set", 0, "white"),
		/obj/item/storage/pill_bottle/meralyne = list(CAT_MEDSUP, "Meralyne pills", 16, "orange"),
		/obj/item/storage/pill_bottle/dermaline = list(CAT_MEDSUP, "Dermaline pills", 16, "orange"),
		/obj/item/storage/pill_bottle/paracetamol = list(CAT_MEDSUP, "Paracetamol pills", 8, "orange"),
		/obj/item/storage/pill_bottle/tricordrazine = list(CAT_MEDSUP, "Tricordrazine pills", 8, "black"),
		/obj/item/storage/syringe_case/meralyne = list(CAT_MEDSUP, "syringe Case (120u Meralyne)", 16, "orange"),
		/obj/item/reagent_containers/hypospray/advanced/meralyne = list(CAT_MEDSUP, "hypospray (60u Meralyne)", 8, "orange"), //half the units of the mera case half the price
		/obj/item/storage/syringe_case/dermaline = list(CAT_MEDSUP, "syringe Case (120u Dermaline)", 16, "orange"),
		/obj/item/reagent_containers/hypospray/advanced/dermaline = list(CAT_MEDSUP, "hypospray (60u dermaline)", 8, "orange"), //half the units of the derm case half the price
		/obj/item/storage/syringe_case/meraderm = list(CAT_MEDSUP, "syringe Case (120u Meraderm)", 16, "orange"),
		/obj/item/reagent_containers/hypospray/advanced/meraderm = list(CAT_MEDSUP, "hypospray (60u Meraderm)", 8, "orange"), //half the units of the meraderm case half the price
		/obj/item/storage/syringe_case/nanoblood = list(CAT_MEDSUP, "syringe Case (120u Nanoblood)", 5, "black"),
		/obj/item/reagent_containers/hypospray/advanced/nanoblood = list(CAT_MEDSUP, "hypospray (60u Nanoblood)", 3, "black"), //bit more than half of the nanoblood case
		/obj/item/storage/syringe_case/tricordrazine = list(CAT_MEDSUP, "syringe Case (120u Tricordrazine)", 5, "black"),
		/obj/item/reagent_containers/hypospray/advanced/tricordrazine = list(CAT_MEDSUP, "hypospray (60u Tricordrazine)", 3, "black"),
		/obj/item/reagent_containers/hypospray/autoinjector/combat_advanced = list(CAT_MEDSUP, "Injector (Advanced)", 5, "black"),
		/obj/item/reagent_containers/hypospray/autoinjector/quickclotplus = list(CAT_MEDSUP, "Injector (QuickclotPlus)", 1, "orange"),
		/obj/item/reagent_containers/hypospray/autoinjector/peridaxon_plus = list(CAT_MEDSUP, "Injector (Peridaxon Plus)", 1, "orange"),
		/obj/item/reagent_containers/hypospray/autoinjector/synaptizine = list(CAT_MEDSUP, "Injector (Synaptizine)", 4, "orange"),
		/obj/item/reagent_containers/hypospray/autoinjector/neuraline = list(CAT_MEDSUP, "Injector (Neuraline)", 14, "orange"),
		/obj/item/reagent_containers/hypospray/advanced = list(CAT_MEDSUP, "Advanced hypospray", 2, "black"),
		/obj/item/reagent_containers/hypospray/advanced/big = list(CAT_MEDSUP, "Big hypospray", 10, "black"),
		/obj/item/clothing/glasses/hud/health = list(CAT_MEDSUP, "Medical HUD glasses", 2, "black"),
	))

GLOBAL_LIST_INIT(leader_gear_listed_products, list(
		/obj/effect/essentials_set/leader = list(CAT_ESS, "Essential SL Set", 0, "white"),
		/obj/item/beacon/supply_beacon = list(CAT_LEDSUP, "Supply beacon", 10, "black"),
		/obj/item/beacon/orbital_bombardment_beacon = list(CAT_LEDSUP, "Orbital beacon", 15, "black"),
		/obj/item/tool/shovel/etool = list(CAT_LEDSUP, "Entrenching tool", 1, "black"),
		/obj/item/stack/sandbags_empty/half = list(CAT_LEDSUP, "Sandbags x25", SANDBAG_PRICE_IN_GEAR_VENDOR, "black"),
		/obj/item/explosive/plastique = list(CAT_LEDSUP, "Plastique explosive", 3, "black"),
		/obj/item/detpack = list(CAT_LEDSUP, "Detonation pack", 5, "black"),
		/obj/item/explosive/grenade/smokebomb = list(CAT_LEDSUP, "Smoke grenade", 2, "black"),
		/obj/item/explosive/grenade/cloakbomb = list(CAT_LEDSUP, "Cloak grenade", 7, "black"),
		/obj/item/explosive/grenade/incendiary = list(CAT_LEDSUP, "M40 HIDP incendiary grenade", 3, "black"),
		/obj/item/explosive/grenade/frag = list(CAT_LEDSUP, "M40 HEDP grenade", 3, "black"),
		/obj/item/storage/pouch/explosive/razorburn = list(CAT_LEDSUP, "Pack of Razorburn grenades", 24, "orange"),
		/obj/item/explosive/grenade/chem_grenade/razorburn_large = list(CAT_LEDSUP, "Razorburn canister", 21, "black"),
		/obj/item/explosive/grenade/chem_grenade/razorburn_smol = list(CAT_LEDSUP, "Razorburn grenade", 6, "black"),
		/obj/item/weapon/gun/flamer = list(CAT_LEDSUP, "Flamethrower", 12, "black"),
		/obj/item/ammo_magazine/flamer_tank = list(CAT_LEDSUP, "Flamethrower tank", 4, "black"),
		/obj/item/whistle = list(CAT_LEDSUP, "Whistle", 5, "black"),
		/obj/item/radio = list(CAT_LEDSUP, "Station bounced radio", 1, "black"),
		/obj/item/assembly/signaler = list(CAT_LEDSUP, "Signaler (for detpacks)", 1, "black"),
		/obj/item/motiondetector = list(CAT_LEDSUP, "Motion detector", 5, "black"),
		/obj/item/storage/firstaid/adv = list(CAT_LEDSUP, "Advanced firstaid kit", 10, "orange"),
		/obj/item/reagent_containers/hypospray/autoinjector/synaptizine = list(CAT_MEDSUP, "Injector (Synaptizine)", 10, "black"),
		/obj/item/reagent_containers/hypospray/autoinjector/combat_advanced = list(CAT_MEDSUP, "Injector (Advanced)", 15, "orange"),
		/obj/item/storage/box/zipcuffs = list(CAT_LEDSUP, "Ziptie box", 5, "black"),
		/obj/structure/closet/bodybag/tarp = list(CAT_LEDSUP, "V1 thermal-dampening tarp", 5, "black"),
		/obj/item/storage/box/m94/cas = list(CAT_LEDSUP, "CAS flare box", 10, "orange"),
		/obj/item/deployable_camera = list(CAT_LEDSUP, "Deployable Overwatch Camera", 2, "orange"),
		/obj/item/fulton_extraction_pack = list(CAT_LEDSUP, "Fulton Extraction Pack", 20, "orange"),
	))

GLOBAL_LIST_INIT(smartgunner_gear_listed_products, list(
	/obj/item/clothing/glasses/night/m56_goggles = list(CAT_ESS, "M26 head mounted sight", 0, "white"),
	/obj/item/weapon/gun/rifle/standard_smartmachinegun = list(CAT_LEDSUP, "T-26 Smartmachinegun", 30 , "white"),
	/obj/item/ammo_magazine/standard_smartmachinegun = list(CAT_LEDSUP, "T-26 Smartmachinegun ammo", 5 , "black"),
	/obj/item/weapon/gun/rifle/standard_smartrifle = list(CAT_LEDSUP, "T-25 smartrifle", 30 , "white"),
	/obj/item/ammo_magazine/rifle/standard_smartrifle = list(CAT_LEDSUP, "T-25 smartrifle ammo", 2 , "black"),
	))


///Assoc list linking the job title with their specific points vendor
GLOBAL_LIST_INIT(job_specific_points_vendor, list(
	SQUAD_ENGINEER = GLOB.engineer_gear_listed_products,
	SQUAD_CORPSMAN = GLOB.medic_gear_listed_products,
	SQUAD_LEADER = GLOB.leader_gear_listed_products,
	SQUAD_SMARTGUNNER = GLOB.smartgunner_gear_listed_products,
))


>>>>>>> 6e5c7c586 (Fultons are now limited use and more expensive, decreases price of ASRS, and adds fultons to SL vendor and operational vendor (#7602))
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
	/obj/machinery/vending/marine/shared,
	/obj/machinery/vending/uniform_supply,
	/obj/machinery/vending/armor_supply,
	/obj/machinery/vending/marineFood,
	/obj/machinery/vending/MarineMed,
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
