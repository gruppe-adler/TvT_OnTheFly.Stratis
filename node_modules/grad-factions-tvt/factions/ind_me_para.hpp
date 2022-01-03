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
			"UK3CB_ADM_B_U_CombatUniform_01_MAR_DES_CC",
			"UK3CB_ADM_B_U_CombatUniform_01_MAR_DES_DDPM",
			"UK3CB_ADM_B_U_CombatUniform_01_MAR_DES_TCC",
			"UK3CB_ADM_B_U_CombatUniform_01_MAR_DES_WDL",
			"UK3CB_ADM_B_U_CombatUniform_01_MAR",
			"UK3CB_ADM_B_U_CombatUniform_01_MAR_WDL_ALT",
			"UK3CB_ADM_B_U_CombatUniform_01_TCC_CC",
			"UK3CB_ADM_B_U_CombatUniform_01_TCC_DDPM",
			"UK3CB_ADM_B_U_CombatUniform_01_TCC_MAR_DES",
			"UK3CB_ADM_B_U_CombatUniform_01_TCC_WDL",
			"UK3CB_ADM_B_U_CombatUniform_01_WDL_CC",
			"UK3CB_ADM_B_U_CombatUniform_01_WDL_TCC"
		};
		vest[] = {
			"UK3CB_TKA_B_V_GA_LITE_DES_MARPAT",
			"UK3CB_TKA_B_V_GA_LITE_TAN",
			"UK3CB_ANP_B_V_GA_LITE_TAN"
		};
		backpack = "";
		headgear = "UK3CB_H_Shemag_blk";
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
