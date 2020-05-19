class ind_me_para {
	class AllUnits {
        primaryWeapon[] = {
            "rhs_weap_akm",
            "rhs_weap_akms"
        };
        primaryWeaponMagazine = "rhs_30Rnd_762x39mm_bakelite";
		primaryWeaponMuzzle = "rhs_acc_dtkakm";
		primaryWeaponOptics = "";
		primaryWeaponPointer = "";
		primaryWeaponUnderbarrel = "";
		primaryWeaponUnderbarrelMagazine = "";
		secondaryWeapon = "";
		secondaryWeaponMagazine = "";
		handgunWeapon = "";
        handgunWeaponMagazine = "";
		uniform[] = {
            "LOP_U_ISTS_Fatigue_13",
            "LOP_U_ISTS_Fatigue_05",
            "LOP_U_ISTS_Fatigue_07",
            "LOP_U_ISTS_Fatigue_14",
            "LOP_U_ISTS_Fatigue_12",
            "LOP_U_ISTS_Fatigue_06",
            "LOP_U_ISTS_Fatigue_08",
            "LOP_U_ISTS_Fatigue_09",
            "LOP_U_ISTS_Fatigue_10"
        };
        vest[] = {
            "LOP_V_CarrierLite_OLV",
            "LOP_V_CarrierLite_TAN",
            "LOP_V_CarrierLite_TRI",
            "LOP_V_CarrierLite_WDL"
        };
		backpack = "";
		headgear = "LOP_H_Shemag_BLK";
		nvgoggles = "";
		radio = "TFAR_fadak";
		binoculars = "Binocular";
		map = "ItemMap";
		gps = "ItemGPS";
		compass = "ItemCompass";
        addItemsToUniform[] = {
            MEDICITEMS_BASE,
            LIST_2("ACE_Chemlight_HiWhite"),
			"ACE_Flashlight_KSF1",
			"ACE_MapTools"
        };
        addItemsToVest[] = {};
        addItemsToBackpack[] = {};
	};

	class Type {
        //rifleman
		class Soldier_F {
            addItemsToVest[] = {
				LIST_7("rhs_30Rnd_762x39mm_bakelite"),
				LIST_2("rhs_mag_rgd5"),
				LIST_1("rhs_mag_rdg2_white")
			};
		};

        //autorifleman
		class Soldier_AR_F: Soldier_F {
            primaryWeapon = "rhs_weap_pkm";
            primaryWeaponOptics = "";
            primaryWeaponMuzzle = "";
            primaryWeaponMagazine = "rhs_100Rnd_762x54mmR";
            handgunWeapon = "";
            handgunWeaponMagazine = "";
            backpack = "B_FieldPack_khk";
            addItemsToVest[] = {
				LIST_1("rhs_100Rnd_762x54mmR"),
                LIST_2("rhs_mag_rgd5"),
				LIST_1("rhs_mag_rdg2_white")
			};
            addItemsToBackpack[] = {
                LIST_3("rhs_100Rnd_762x54mmR_green")
            };
		};

        //light AT
		class Soldier_LAT_F: Soldier_F {
            secondaryWeapon = "rhs_weap_rpg26";
		};

        //ammo bearer
		class Soldier_A_F: Soldier_F {
            backpack = "B_FieldPack_khk";
            addItemsToBackpack[] = {
                LIST_3("rhs_100Rnd_762x54mmR_green")
            };
		};

		//assistant autorifleman
		class Soldier_AAR_F: Soldier_F {
            backpack = "B_FieldPack_khk";
            addItemsToBackpack[] = {
                LIST_3("rhs_100Rnd_762x54mmR_green")
            };
		};

        //medic
		class Medic_F: Soldier_F {
            backpack = "B_FieldPack_khk";
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
            backpack = "TFAR_mr3000_rhs";
            addItemsToBackpack[] =  {
				LIST_2("rhs_mag_rdg2_white"),
				LIST_2("rhs_mag_rdg2_black")
			};
        };

        //team leader
		class Soldier_TL_F: Soldier_F {
            primaryWeapon[] = {
                "rhs_weap_akm_gp25",
                "rhs_weap_akms_gp25"
            };
            backpack = "B_FieldPack_khk";
            addItemsToBackpack[] = {
				LIST_2("rhs_GRD40_White"),
				LIST_2("rhs_GRD40_Green"),
				LIST_2("rhs_GRD40_Red")
			};
		};
	};
};
