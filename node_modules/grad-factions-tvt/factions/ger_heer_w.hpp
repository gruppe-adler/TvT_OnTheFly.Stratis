class ger_heer_w {
	class AllUnits {
        primaryWeapon[] = {
            "rhs_weap_g36kv",
            "rhs_weap_g36c"
        };
        primaryWeaponMagazine = "rhssaf_30rnd_556x45_EPR_G36";
		primaryWeaponMuzzle = "";
		primaryWeaponOptics[] = {
            "rhsusf_acc_eotech_552",
            "rhsusf_acc_mrds",
            "rhsusf_acc_RX01",
            "rhsusf_acc_T1_high"
        };
		primaryWeaponPointer = "";
		primaryWeaponUnderbarrel = "";
		primaryWeaponUnderbarrelMagazine = "";
		secondaryWeapon = "";
		secondaryWeaponMagazine = "";
		handgunWeapon = "rhsusf_weap_m9";
        handgunWeaponMagazine = "rhsusf_mag_15Rnd_9x19_JHP";
		uniform = "SMM_Uniform_BW_FT";
        vest = "SMM_Vest_BW_FT";
		backpack = "";
		headgear = "SMM_Helmet_A_BW_FT";
		nvgoggles = "";
		radio = "TFAR_anprc152";
		binoculars = "Binocular";
		map = "ItemMap";
		gps = "ItemGPS";
		compass = "ItemCompass";
        addItemsToUniform[] = {
            LIST_6("ACE_fieldDressing"),
			LIST_2("ACE_morphine"),
            LIST_2("ACE_Chemlight_HiWhite"),
			"ACE_epinephrine",
			"ACE_Flashlight_MX991",
			"ACE_MapTools"
        };
        addItemsToVest[] = {};
        addItemsToBackpack[] = {};
	};

	class Type {
        //rifleman
		class Soldier_F {
            addItemsToVest[] = {
				LIST_7("rhssaf_30rnd_556x45_EPR_G36"),
				LIST_2("rhs_mag_an_m8hc"),
				LIST_2("rhsusf_mag_15Rnd_9x19_JHP"),
				LIST_2("rhs_mag_m67")
			};
		};

        //autorifleman
		class Soldier_AR_F: Soldier_F {
            primaryWeapon = "hlc_lmg_MG3";
            primaryWeaponOptics = "";
            primaryWeaponMagazine = "hlc_100Rnd_762x51_M_MG3";
            handgunWeapon = "";
            handgunWeaponMagazine = "";
            backpack = "SMM_Kitbag_BW_FT";
            addItemsToVest[] = {
				LIST_2("hlc_50Rnd_762x51_B_MG3"),
				LIST_2("rhs_mag_an_m8hc"),
				LIST_2("rhs_mag_m67")
			};
            addItemsToBackpack[] = {
                LIST_3("hlc_100Rnd_762x51_M_MG3")
            };
		};

        //light AT
		class Soldier_LAT_F: Soldier_F {
            secondaryWeapon = "rhs_weap_M136";
		};

        //ammo bearer
		class Soldier_A_F: Soldier_F {
            backpack = "SMM_Kitbag_BW_FT";
            addItemsToBackpack[] = {
                LIST_3("hlc_100Rnd_762x51_M_MG3")
            };
		};

		//assistant autorifleman
		class Soldier_AAR_F: Soldier_F {
            backpack = "SMM_Kitbag_BW_FT";
            addItemsToBackpack[] = {
                LIST_2("hlc_100Rnd_762x51_M_MG3"),
                "hlc_100Rnd_762x51_M_MG3"
            };
		};

        //medic
		class Medic_F: Soldier_F {
            backpack = "SMM_Kitbag_BW_FT";
            addItemsToBackpack[] = {
                LIST_20("ACE_fieldDressing"),
                LIST_10("ACE_fieldDressing"),
                LIST_15("ACE_morphine"),
                LIST_15("ACE_epinephrine"),
                LIST_2("ACE_bloodIV_250")
            };
		};

        //squad leader
        class Soldier_SL_F: Soldier_F {
            backpack = "TFAR_rt1523g_bwmod";
            addItemsToBackpack[] =  {
				LIST_2("rhs_mag_m18_green"),
				LIST_2("rhs_mag_m18_purple"),
				LIST_2("rhs_mag_m18_red")
			};
        };

        //team leader
		class Soldier_TL_F: Soldier_F {
            primaryWeapon = "rhs_weap_g36kv_ag36";
            backpack = "SMM_Kitbag_BW_FT";
            addItemsToBackpack[] = {
				LIST_2("1Rnd_SmokeGreen_Grenade_shell"),
				LIST_2("1Rnd_SmokePurple_Grenade_shell"),
				LIST_2("1Rnd_SmokeRed_Grenade_shell")
			};
		};
	};

	class Rank {
		class LIEUTENANT {
            backpack = "TFAR_rt1523g_big_bwmod";
            headgear = "SMM_MilCap_BW_FT";
		};
	};
};
