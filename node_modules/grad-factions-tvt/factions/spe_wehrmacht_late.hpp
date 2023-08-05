#define MEDICITEMS_BASE \
LIST_10("ACE_fieldDressing"), \
LIST_3("ACE_morphine"), \
LIST_3("ACE_tourniquet"), \
LIST_2("ACE_epinephrine")

class spe_wehrmacht_late {
	class AllUnits {
		uniform = "U_SPE_GER_Soldier_camo4";
        vest = "V_SPE_GER_VestKar98";
        backpack = "B_SPE_GER_A_frame";
        headgear = "H_SPE_GER_HelmetCamo";
        primaryWeapon = "SPE_G43";
        primaryWeaponMagazine = "SPE_10Rnd_792x57";
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
            addItemsToUniform[] = {
                "ACE_Flashlight_KSF1",
			    "ACE_MapTools",
				MEDICITEMS_BASE
            };
            addItemsToVest[] = {
                LIST_12("SPE_10Rnd_792x57"),
                LIST_2("SPE_NB39")
            };
            addItemsToBackpack[] = {
                LIST_1("ACE_EntrenchingTool"),
                LIST_2("rhs_grenade_sthgr43_heerfrag_mag")
            };
		};

		//autorifleman - STG44
		class Soldier_AR_F: Soldier_F {
            vest = "V_SPE_DAK_VestSTG";
			primaryWeapon = "SPE_STG44";
            primaryWeaponMagazine = "SPE_32Rnd_9x19";
            addItemsToVest[] = {
                LIST_8("SPE_30Rnd_792x33")
            };
            addItemsToBackpack[] = {
                LIST_1("ACE_EntrenchingTool"),
                LIST_2("SPE_NB39"),
                LIST_2("SPE_30Rnd_792x33")
            };
		};

		//light AT - K98 + PzFst30
		class Soldier_LAT_F: Soldier_F {
			secondaryWeapon = "SPE_PzFaust_60m";
			secondaryWeaponMagazine = "SPE_1Rnd_PzFaust_60m";
            backpack = "B_SPE_GER_A_frame_Full";
            addItemsToVest[] = {
                LIST_12("SPE_10Rnd_792x57"),
                LIST_2("SPE_NB39")
            };
			addItemsToBackpack[] = {
				LIST_1("SPE_1Rnd_PzFaust_60m"),
                LIST_1("rhs_grenade_sthgr43_heerfrag_mag")
			};
		};

		//mg schütze - MG42
		class Soldier_A_F: Soldier_F {
			vest = "V_SPE_GER_VestMG";
            backpack = "B_SPE_GER_Tonister41_Frame";
            primaryWeapon = "SPE_MG42";
            primaryWeaponMagazine = "SPE_50Rnd_792x57";
            handgunWeapon = "SPE_P08";
            handgunWeaponMagazine = "SPE_8Rnd_9x19_P08";
            handgunWeaponOptics = "";
            addItemsToVest[] = {
                LIST_2("SPE_NB39"),
                LIST_5("SPE_8Rnd_9x19_P08")
            };
            addItemsToBackpack[] = {
                LIST_6("SPE_50Rnd_792x57")
            };
		};

		//assistant autorifleman - K98 + MG Ammo + Lafette
		class Soldier_AAR_F: Soldier_F {
			backpack = "B_SPE_GER_Tonister34_canvas";
            secondaryWeapon = "SPE_Lafette_Tripod";
            addItemsToVest[] = {
                LIST_12("SPE_10Rnd_792x57"),
                LIST_2("SPE_NB39")
            };
            addItemsToBackpack[] = {
                LIST_6("SPE_50Rnd_792x57")
            };
		};

		//medic - K98 + Medkram
		class Medic_F: Soldier_F {
            goggles = "G_SPE_Dienst_Brille";
            vest = "V_SPE_GER_SaniVest";
            backpack = "B_SPE_GER_MedicBackpack_Empty";
            addItemsToVest[] = {
                LIST_2("SPE_NB39"),
                LIST_10("SPE_10Rnd_792x57")
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
            primaryWeapon = "SPE_MP40";
            primaryWeaponMagazine = "SPE_32Rnd_9x19";
            addItemsToVest[] = {
                LIST_2("SPE_NB39"),
                LIST_11("SPE_32Rnd_9x19")
            };
            addItemsToBackpack[] = {
				LIST_3("SPE_NB39"),
                LIST_2("rhs_grenade_sthgr43_mag")
			};
		};

		//squad leader
		class Soldier_SL_F: Soldier_TL_F {
            goggles = "G_SPE_Cigarette_Grundstein";
			headgear = "H_SPE_GER_OfficerCap";
		};
	};
};
