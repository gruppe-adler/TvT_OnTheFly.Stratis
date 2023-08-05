#define MEDICITEMS_BASE \
LIST_10("ACE_fieldDressing"), \
LIST_3("ACE_morphine"), \
LIST_3("ACE_tourniquet"), \
LIST_2("ACE_epinephrine")

class spe_us_late {
	class AllUnits {
		uniform = "U_SPE_US_Private";
        vest = "V_SPE_US_Vest_Carbine_pick";
        backpack = "B_SPE_US_Bandoleer_3";
        headgear = "H_SPE_US_Helmet_29ID_Scrim_ns";
        primaryWeapon = "SPE_M1_Garand";
        primaryWeaponMagazine = "SPE_8Rnd_762x63";
        primaryWeaponOptics = "";
        primaryWeaponPointer = "";
        primaryWeaponMuzzle = "";
        primaryWeaponUnderbarrel = "";
        primaryWeaponUnderbarrelMagazine = "";
        secondaryWeapon = "";
        secondaryWeaponMagazine = "";
        secondaryWeaponOptics = "";
        secondaryWeaponPointer = "";
        secondaryWeaponMuzzle = "";
        secondaryWeaponUnderbarrel = "";
        secondaryWeaponUnderbarrelMagazine = "";
        handgunWeapon = "";
        handgunWeaponMagazine = "";
        handgunWeaponOptics = "";
        handgunWeaponPointer = "";
        handgunWeaponMuzzle = "";
        handgunWeaponUnderbarrel = "";
        handgunWeaponUnderbarrelMagazine = "";
        binoculars = "SPE_Binocular_US";
        map = "ItemMap";
        compass = "SPE_US_ItemCompass";
        watch = "SPE_US_ItemWatch";
        gps = "";
        radio = "";
        nvgoggles = "";
        goggles = "";
    };

	class Type {

		//rifleman - "SPE_M1_Garand"
		class Soldier_F {
            primaryWeaponMuzzle = "SPE_ACC_M1_Bayo";
			addItemsToUniform[] = {
                "ACE_Flashlight_KSF1",
			    "ACE_MapTools",
				MEDICITEMS_BASE
            };
            addItemsToVest[] = {
                LIST_2("SPE_US_M18"),
                LIST_15("SPE_8Rnd_762x63")
            };
            addItemsToBackpack[] = {
                LIST_1("ACE_EntrenchingTool"),
                LIST_2("SPE_M39")
            };
		};

		//autorifleman - SPE_M1918A2_BAR
		class Soldier_AR_F: Soldier_F {
			primaryWeapon = "SPE_M1918A2_BAR";
            primaryWeaponMagazine = "SPE_20Rnd_762x63";
            backpack = "B_SPE_US_Backpack_Bandoleer";
            vest = "V_SPE_US_Vest_Carbine_pick";
            addItemsToVest[] = {
                LIST_7("SPE_20Rnd_762x63"),
                LIST_1("SPE_M39"),
                LIST_2("SPE_US_M18")
            };
            addItemsToBackpack[] = {
                LIST_1("ACE_EntrenchingTool"),
                LIST_13("SPE_20Rnd_762x63")
            };
		};

		//light AT - "SPE_M1_Garand" + SPE_M1A1_Bazooka
		class Soldier_LAT_F: Soldier_F {
            backpack = "B_SPE_US_RocketBag_Empty";
			secondaryWeapon = "SPE_M1A1_Bazooka";
            secondaryWeaponMagazine = "SPE_1Rnd_60mm_M6";
            addItemsToVest[] = {
                LIST_2("SPE_US_M18"),
                LIST_15("SPE_8Rnd_762x63")
            };
            addItemsToBackpack[] = {
                LIST_2("SPE_1Rnd_60mm_M6")
            };
		};

		//MG - M1919A6
		class Soldier_A_F: Soldier_F {
            backpack = "B_SPE_US_Backpack_pick";
			primaryWeapon = "SPE_M1919A6";
            primaryWeaponMagazine = "SPE_50Rnd_762x63";
            handgunWeapon = "SPE_M1911";
            handgunWeaponMagazine = "SPE_7Rnd_45ACP_1911";
            addItemsToVest[] = {
                LIST_2("SPE_US_M18"),
                LIST_5("SPE_7Rnd_45ACP_1911"),
                LIST_1("ACE_EntrenchingTool")
            };
            addItemsToBackpack[] = {
                LIST_6("SPE_50Rnd_762x63")
            };
		};

		//assistant autorifleman - "SPE_M1_Garand"
		class Soldier_AAR_F: Soldier_F {
			primaryWeaponMuzzle = "SPE_ACC_M1_Bayo";
            backpack = "B_SPE_US_packboard_ammo";
            addItemsToVest[] = {
                LIST_2("SPE_US_M18"),
                LIST_15("SPE_8Rnd_762x63")
            };
            addItemsToBackpack[] = {
                LIST_1("ACE_EntrenchingTool"),
                LIST_9("SPE_50Rnd_762x63")
            };
		};

		//medic - "SPE_M1_Garand"
		class Medic_F: Soldier_F {
            goggles = "G_SPE_Ful_Vue_Reinforced";
            uniform = "U_SPE_US_Med";
            backpack = "B_SPE_US_M36_Bandoleer";
			primaryWeaponMuzzle = "SPE_ACC_M1_Bayo";
            addItemsToVest[] = {
                LIST_2("SPE_US_M18"),
                LIST_15("SPE_8Rnd_762x63")
            };
            addItemsToBackpack[] = {
				LIST_30("ACE_fieldDressing"),
				LIST_15("ACE_morphine"),
				LIST_15("ACE_epinephrine"),
				LIST_2("ACE_bloodIV"),
                LIST_3("ACE_bloodIV_500"),
                LIST_3("ACE_tourniquet")
			};
		};

		//team leader - Tompson
		class Soldier_TL_F: Soldier_F {
            goggles = "G_SPE_Cigar_Moza";
			backpack = "B_SPE_US_Radio_alt";
            uniform = "U_SPE_US_Sergeant";
            primaryWeapon = "SPE_M1A1_Thompson";
            primaryWeaponMagazine = "SPE_30Rnd_Thompson_45ACP";
            addItemsToVest[] = {
                LIST_7("SPE_30Rnd_Thompson_45ACP")
            };
            addItemsToBackpack[] = {
                LIST_1("ACE_EntrenchingTool"),
                LIST_3("SPE_M39"),
                LIST_3("SPE_US_M18"),
                LIST_7("SPE_30Rnd_Thompson_45ACP")
            };
		};

		//squad leader - SPE_M1903A3_Springfield
		class Soldier_SL_F: Soldier_TL_F {
            goggles = "G_SPE_Pipe_Sir_Winston";
			headgear = "H_SPE_US_Pilot_Cap";
            uniform = "U_SPE_US_Technician";
		};
	};
};

