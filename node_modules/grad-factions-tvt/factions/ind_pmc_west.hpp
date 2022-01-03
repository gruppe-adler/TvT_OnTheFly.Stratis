class ind_pmc_west {
	class AllUnits {
		primaryWeapon[] = {
			"rhs_weap_hk416d10",
			"rhs_weap_hk416d145_wd",
			"rhs_weap_hk416d145_d",
			"rhs_weap_m4a1_blockII_bk",
			"rhs_weap_mk18_wd",
			"rhs_weap_mk18_KAC",
			"rhs_weap_mk18_KAC_d",
			"rhs_weap_mk18_d",
			"rhs_weap_mk18_KAC_bk",
			"rhs_weap_mk18_bk",
			"rhs_weap_mk18"
		};
		primaryWeaponMagazine = "rhs_mag_30Rnd_556x45_M855A1_PMAG";
		primaryWeaponMuzzle[] = {
			"",
			"rhsusf_acc_SF3P556",
			"rhsusf_acc_SFMB556"
		};
		primaryWeaponOptics[] = {
			"optic_ACO_grn",
			"rhsusf_acc_EOTECH",
			"rhsusf_acc_eotech_552",
			"rhsusf_acc_eotech_552_d",
			"rhsusf_acc_eotech_552_wd",
			"rhsusf_acc_compm4",
			"rhsusf_acc_T1_high"
		};
		primaryWeaponPointer[] = {
			"rhsusf_acc_anpeq15side",
			"rhsusf_acc_anpeq15side_bk",
			"rhsusf_acc_anpeq15",
			"rhsusf_acc_anpeq15_bk",
			"rhsusf_acc_anpeq16a",
			"rhsusf_acc_M952V"
		};
		primaryWeaponUnderbarrel = "";
		primaryWeaponUnderbarrelMagazine = "";
		secondaryWeapon = "";
		secondaryWeaponMagazine = "";
		handgunWeapon = "hgun_Pistol_heavy_01_F";
		handgunWeaponMagazine = "11Rnd_45ACP_Mag";
		handgunMuzzle = "muzzle_snds_acp";
		handgunOptics = "optic_MRD";
		uniform[] = {
			"U_BG_Guerilla2_1",
			"U_BG_Guerilla2_2",
			"U_BG_Guerilla2_3",
			"U_BG_Guerilla1_1",
			"U_I_C_Soldier_Para_1_F",
			"rhs_uniform_g3_m81",
			"rhs_uniform_g3_blk",
			"UK3CB_NAP_B_U_Tshirt_BLK",
			"UK3CB_ADM_B_U_Tshirt_01_WDL",
			"UK3CB_ADM_B_U_Tshirt_01_WDL_03",
			"UK3CB_ADE_O_U_02_D",
			"UK3CB_ADE_O_U_02_G",
			"UK3CB_ADE_O_U_02_C",
			"UK3CB_NAP_B_U_Officer_Uniform_WDL_GRN",
			"UK3CB_NAP_B_U_Officer_Uniform_WDL_BLK",
			"UK3CB_NAP_B_U_Officer_Uniform_GRN_BLK",
			"UK3CB_ADM_B_U_Shirt_Pants_01_BLU_DDPM",
			"UK3CB_ADM_B_U_Shirt_Pants_01_BLU_WDL",
			"UK3CB_ADM_B_U_Shirt_Pants_01_BLU_WDL_ALT",
			"UK3CB_ADM_B_U_Shirt_Pants_01_GRN_WDL",
			"UK3CB_ADM_B_U_Shirt_Pants_01_GRN_WDL_ALT"
		};
		vest = "rhsusf_mbav_light";
		backpack = "";
		headgear[] = {
			"",
			"H_Cap_blk",
			"H_Cap_oli",
			"H_Cap_tan_specops_US",
			"H_Watchcap_camo",
			"H_Watchcap_khk"
		};
		goggles[] = {
			"",
			"rhs_googles_clear",
			"rhs_googles_black",
			"G_Aviator"
		};
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
				LIST_7("rhs_mag_30Rnd_556x45_M855A1_PMAG"),
				LIST_1("rhs_mag_an_m8hc"),
				LIST_1("11Rnd_45ACP_Mag"),
				LIST_2("rhs_mag_m67")
			};
		};

		//autorifleman
		class Soldier_AR_F: Soldier_F {
			primaryWeapon = "rhs_weap_m249_pip_S";
			primaryWeaponOptics = "";
			primaryWeaponMuzzle = "";
			primaryWeaponPointer = "";
			primaryWeaponMagazine = "rhsusf_200rnd_556x45_mixed_box";
			handgunWeapon = "";
			handgunWeaponMagazine = "";
			handgunMuzzle = "";
			handgunOptics = "";
			vest = "rhsusf_mbav_mg";
			backpack[] = {
				"B_AssaultPack_rgr",
				"B_AssaultPack_cbr",
				"B_AssaultPack_khk",
				"rhsusf_falconii_mc",
				"B_rhsusf_B_BACKPACK"
			};
			addItemsToVest[] = {
				LIST_1("rhsusf_200rnd_556x45_mixed_box"),
				LIST_1("rhsusf_100Rnd_556x45_soft_pouch"),
				LIST_2("rhs_mag_m67")
			};
			addItemsToBackpack[] = {
				LIST_2("rhsusf_200rnd_556x45_mixed_box"),
			};
		};

		//light AT
		class Soldier_LAT_F: Soldier_F {
			secondaryWeapon = "rhs_weap_m72a7";
		};

		//ammo bearer
		class Soldier_A_F: Soldier_F {
			backpack[] = {
				"B_AssaultPack_rgr",
				"B_AssaultPack_cbr",
				"B_AssaultPack_khk",
				"rhsusf_falconii_mc",
				"B_rhsusf_B_BACKPACK"
			};
			addItemsToBackpack[] = {
				LIST_2("rhsusf_200rnd_556x45_mixed_box")
			};
		};

		//assistant autorifleman
		class Soldier_AAR_F: Soldier_F {
			backpack[] = {
				"B_AssaultPack_rgr",
				"B_AssaultPack_cbr",
				"B_AssaultPack_khk",
				"rhsusf_falconii_mc",
				"B_rhsusf_B_BACKPACK"
			};
			addItemsToBackpack[] = {
				LIST_2("rhsusf_200rnd_556x45_mixed_box")
			};
		};

		//medic
		class Medic_F: Soldier_F {
			vest = "rhsusf_mbav_medic";
			backpack[] = {
				"B_AssaultPack_rgr",
				"B_AssaultPack_cbr",
				"B_AssaultPack_khk",
				"rhsusf_falconii_mc",
				"B_rhsusf_B_BACKPACK"
			};
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
			headgear = "rhsusf_bowman_cap";
			vest = "rhsusf_mbav_rifleman";
			backpack = "TFAR_rt1523g";
			addItemsToBackpack[] =  {
				LIST_2("rhs_mag_m18_green"),
				LIST_2("rhs_mag_m18_red")
			};
		};

		//team leader
		class Soldier_TL_F: Soldier_F {
			headgear = "rhsusf_bowman_cap";
			vest = "rhsusf_mbav_rifleman";
			primaryWeapon[] = {
				"rhs_weap_m4a1_blockII_M203_bk",
				"rhs_weap_m4a1_blockII_M203",
				"rhs_weap_m4a1_blockII_M203_wd",
				"rhs_weap_mk18_m320"
			};
			backpack[] = {
				"B_AssaultPack_rgr",
				"B_AssaultPack_cbr",
				"B_AssaultPack_khk",
				"rhsusf_falconii_mc",
				"B_rhsusf_B_BACKPACK"
			};
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
		};
	};
};
