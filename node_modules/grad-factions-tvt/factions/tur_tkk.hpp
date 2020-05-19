class tur_tkk {
	class AllUnits {
        primaryWeapon = "hlc_rifle_g3a3";
        primaryWeaponMagazine = "hlc_20rnd_762x51_b_G3";
		primaryWeaponMuzzle = "";
		primaryWeaponOptics[] = {};
		primaryWeaponPointer = "";
		primaryWeaponUnderbarrel = "";
		primaryWeaponUnderbarrelMagazine = "";
		secondaryWeapon = "";
		secondaryWeaponMagazine = "";
		handgunWeapon = "";
        handgunWeaponMagazine = "";
		uniform = "LOP_U_Fatigue_BDU_TURK_TUBITAK_01";
        vest[] = {
            "PO_V_SPCS_TUB_RIF",
            "PO_V_SPCS_TUB_RIF2"
        };
		backpack = "";
		headgear = "PO_H_PASGT_TUB";
		nvgoggles = "";
		radio = "TFAR_anprc152";
		binoculars = "Binocular";
		map = "ItemMap";
		gps = "ItemGPS";
		compass = "ItemCompass";
        addItemsToUniform[] = {
            MEDICITEMS_BASE,
            LIST_2("ACE_Chemlight_HiWhite"),
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
				LIST_7("hlc_20rnd_762x51_b_G3"),
				LIST_1("rhs_mag_an_m8hc"),
				LIST_1("rhs_mag_m67")
			};
		};

        //autorifleman
		class Soldier_AR_F: Soldier_F {
            primaryWeapon = "hlc_lmg_MG3";
            primaryWeaponOptics = "";
            primaryWeaponMagazine = "hlc_50Rnd_762x51_M_MG3";
            handgunWeapon = "";
            handgunWeaponMagazine = "";
            vest = "PO_V_SPCS_TUB_MG";
            backpack = "LOP_B_FP_MG42_tub";
            addItemsToVest[] = {
				LIST_2("hlc_50Rnd_762x51_M_MG3"),
				LIST_2("rhs_mag_an_m8hc"),
				LIST_2("rhs_mag_m67")
			};
            addItemsToBackpack[] = {
                LIST_8("hlc_50Rnd_762x51_M_MG3")
            };
		};

        //light AT
		class Soldier_LAT_F: Soldier_F {
            secondaryWeapon = "rhs_weap_rpg26";
		};

        //ammo bearer
		class Soldier_A_F: Soldier_F {
            backpack = "LOP_B_FP_MG42_tub";
            addItemsToBackpack[] = {
                LIST_5("hlc_50Rnd_762x51_M_MG3")
            };
		};

		//assistant autorifleman
		class Soldier_AAR_F: Soldier_F {
            backpack = "LOP_B_FP_MG42_tub";
            addItemsToBackpack[] = {
                LIST_5("hlc_50Rnd_762x51_M_MG3")
            };
		};

        //medic
		class Medic_F: Soldier_F {
            backpack = "LOP_B_KB_Med_tub";
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
            vest = "PO_V_SPCS_TUB_SL";
            backpack = "TFAR_rt1523g_bwmod";
            addItemsToBackpack[] =  {
				LIST_2("rhs_mag_m18_green"),
				LIST_2("rhs_mag_m18_red")
			};
        };

        //team leader
		class Soldier_TL_F: Soldier_F {
            vest = "PO_V_SPCS_TUB_TL";
		};
	};

	class Rank {
		class LIEUTENANT {
            backpack = "TFAR_rt1523g_big_bwmod";
            headgear = "PO_H_cap_tub";
		};
	};
};
