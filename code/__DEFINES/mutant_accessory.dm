#define MUTCOLORS			1
#define MUTCOLORS2			2
#define MUTCOLORS3			3
#define MUTCOLOR_MATRIXED	4
#define HAIR				5
#define FACEHAIR			6
#define EYECOLOR			7
// Defines for whether an accessory should have one or three colors to choose for
#define USE_ONE_COLOR		5
#define USE_MATRIXED_COLORS	6

// Which color source we're using when the accessory is added
#define DEFAULT_PRIMARY		1
#define DEFAULT_SECONDARY	2
#define DEFAULT_TERTIARY	3
#define DEFAULT_MATRIXED	4 //uses all three colors for a matrix
#define DEFAULT_SKIN_OR_PRIMARY	5 //Uses skin tone color if the character uses one, otherwise primary

// Defines for extra bits of accessories
#define COLOR_SRC_PRIMARY	1
#define COLOR_SRC_SECONDARY	2
#define COLOR_SRC_TERTIARY	3
#define COLOR_SRC_MATRIXED	4

// Defines for mutant bodyparts indexes
#define MUTANT_INDEX_NAME		"name"
#define MUTANT_INDEX_COLOR_LIST	"color"

//The color list that is passed to color matrixed things when a person is husked
#define HUSK_COLOR_LIST list(list(0.64, 0.64, 0.64, 0), list(0.64, 0.64, 0.64, 0), list(0.64, 0.64, 0.64, 0), list(0, 0, 0, 1))

//Defines for an accessory to be randomed
#define ACC_RANDOM		"random"

#define MAXIMUM_MARKINGS_PER_LIMB 3

#define PREVIEW_PREF_JOB "Job"
#define PREVIEW_PREF_UNDERWEAR "Underwear"
#define PREVIEW_PREF_NAKED "Naked"

#define FLEXIBLE_SPECIES "Anthropomorph" = TRUE, "Humanoid" = TRUE, "Genemodder" = TRUE, "Insectoid" = TRUE
#define LIZARD_SPECIES "Unathi" = TRUE, "Lizardperson" = TRUE
#define AQUATIC_SPECIES "Akula" = TRUE, "Aquatic" = TRUE
#define VULPINE_SPECIES "Vulpkanin" = TRUE
#define FELINE_SPECIES "Tajara" = TRUE
#define MOTH_SPECIES "Moth" = TRUE

#define SKYRAT_HAIR_ELIGIBLE_SPECIES "Anthropomorph", "Humanoid", "Genemodder", "Insectoid", "Vulpkanin", "Lizardperson", "Unathi", "Akula", "Aquatic"
#define SKYRAT_FACE_HAIR_ELIGIBLE_SPECIES SKYRAT_HAIR_ELIGIBLE_SPECIES
