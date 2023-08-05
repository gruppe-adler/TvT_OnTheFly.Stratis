#define MEDICITEMS_BASE \
LIST_10("ACE_fieldDressing"), \
LIST_3("ACE_morphine"), \
LIST_3("ACE_tourniquet"), \
LIST_2("ACE_epinephrine")

class spe_wehrmacht_early {
	class AllUnits {
		uniform = "U_SPE_GER_Soldier_camo";
        vest = "V_SPE_GER_VestKar98";
        backpack = "B_SPE_GER_A_frame";
        headgear = "H_SPE_GER_HelmetCamo";
        primaryWeapon = "SPE_K98";
        primaryWeaponMagazine = "SPE_5Rnd_792x57";
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
        goggles = "";
        handgunWeaponUnderbarrelMagazine = "";
        binoculars = "SPE_Binocular_GER";
        map = "ItemMap";
        compass = "SPE_GER_ItemCompass_deg";
        watch = "SPE_GER_ItemWatch";
        gps = "";
        radio = "";
        nvgoggles = "";
    };

	class Type {
		//rifleman - K98
		class Soldier_F {
			primaryWeaponMuzzle = "SPE_ACC_K98_Bayo";
            addItemsToUniform[] = {
                "ACE_Flashlight_KSF1",
			    "ACE_MapTools",
				MEDICITEMS_BASE
            };
            addItemsToVest[] = {
                LIST_20("SPE_5Rnd_792x57"),
                LIST_2("SPE_Shg24")
            };
            addItemsToBackpack[] = {
                LIST_1("ACE_EntrenchingTool"),
                LIST_2("SPE_NB39")
            };
		};

		//autorifleman - MP40
		class Soldier_AR_F: Soldier_F {
            vest = "V_SPE_DAK_VestMP40";
			primaryWeapon = "SPE_MP40";
            primaryWeaponMagazine = "SPE_32Rnd_9x19";
            addItemsToVest[] = {
                LIST_14("SPE_32Rnd_9x19")
            };
            addItemsToBackpack[] = {
                LIST_1("ACE_EntrenchingTool"),
                LIST_2("SPE_NB39")
            };
		};

		//light AT - K98 + PzFst30
		class Soldier_LAT_F: Soldier_F {
			primaryWeaponMuzzle = "SPE_ACC_K98_Bayo";
			secondaryWeapon = "SPE_PzFaust_30m";
			secondaryWeaponMagazine = "SPE_1Rnd_PzFaust_30m";
            backpack = "B_SPE_GER_A_frame_Full";
            addItemsToVest[] = {
                LIST_2("SPE_NB39"),
                LIST_15("SPE_5Rnd_792x57")
            };
			addItemsToBackpack[] = {
				LIST_2("SPE_1Rnd_PzFaust_30m")
			};
		};

		//mg schütze - MG34
		class Soldier_A_F: Soldier_F {
			vest = "V_SPE_GER_VestMG";
            backpack = "B_SPE_GER_Tonister41_Frame";
            primaryWeapon = "SPE_MG34";
            primaryWeaponMagazine = "SPE_50Rnd_792x57";
            handgunWeapon = "SPE_P08";
            handgunWeaponMagazine = "SPE_8Rnd_9x19_P08";
            handgunWeaponOptics = "";
            addItemsToVest[] = {
                LIST_2("SPE_NB39"),
                LIST_3("SPE_8Rnd_9x19_P08")
            };
            addItemsToBackpack[] = {
                LIST_6("SPE_50Rnd_792x57")
            };
		};

		//assistant autorifleman - K98 + MG Ammo + Lafette
		class Soldier_AAR_F: Soldier_F {
			backpack = "B_SPE_GER_Tonister34_canvas";
            primaryWeaponMuzzle = "SPE_ACC_K98_Bayo";
            secondaryWeapon = "SPE_Lafette_Tripod";
            addItemsToVest[] = {
                LIST_2("SPE_NB39"),
                LIST_15("SPE_5Rnd_792x57")
            };
            addItemsToBackpack[] = {
                LIST_6("SPE_50Rnd_792x57")
            };
		};

		//medic - K98 + Medkram
		class Medic_F: Soldier_F {
            goggles = "G_SPE_Dienst_Brille";
			primaryWeaponMuzzle = "SPE_ACC_K98_Bayo";
            vest = "V_SPE_GER_SaniVest";
            backpack = "B_SPE_GER_MedicBackpack_Empty";
            addItemsToVest[] = {
                LIST_2("SPE_NB39"),
                LIST_15("SPE_5Rnd_792x57")
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

		//team leader - K98 Rifle Grenade
		class Soldier_TL_F: Soldier_F {
            goggles = "G_SPE_Binoculars";
			vest = "V_SPE_DAK_VestMP40";
            backpack = "B_SPE_GER_Radio";
            primaryWeapon = "SPE_K98_GW";
            primaryWeaponMagazine = "SPE_5Rnd_792x57";
            primaryWeaponMuzzle = "SPE_ACC_GW_SB_Empty";
            addItemsToVest[] = {
                LIST_2("SPE_Shg24"),
                LIST_15("SPE_5Rnd_792x57")
            };
            addItemsToBackpack[] = {
				LIST_7("SPE_1Rnd_G_NBGR_42")
			};
		};

		//squad leader
		class Soldier_SL_F: Soldier_TL_F {
            goggles = "G_SPE_Cigarette_Grundstein";
			headgear = "H_SPE_GER_OfficerCap";
		};
	};
};
