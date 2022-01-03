class hr_hkov {
	class AllUnits {
		primaryWeapon = "rhs_weap_vhsd2";
		primaryWeaponMagazine = "rhsgref_30rnd_556x45_vhs2";
		primaryWeaponMuzzle = "";
		primaryWeaponOptics = "rhsusf_acc_RX01";
		primaryWeaponPointer = "";
		primaryWeaponUnderbarrel = "";
		primaryWeaponUnderbarrelMagazine = "";
		secondaryWeapon = "";
		secondaryWeaponMagazine = "";
		handgunWeapon = "";
		handgunWeaponMagazine = "";
		uniform = "rhssaf_uniform_m10_digital";
		vest = "rhssaf_vest_otv_md2camo";
		backpack = "";
		headgear = "rhssaf_helmet_m97_digital";
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
				LIST_7("rhsgref_30rnd_556x45_vhs2"),
				LIST_2("rhs_mag_an_m8hc"),
				LIST_2("rhs_mag_m67")
			};
		};

		//autorifleman
		class Soldier_AR_F: Soldier_F {
			primaryWeapon = "rhs_weap_m249_pip_S";
			primaryWeaponOptics = "";
			primaryWeaponMagazine = "rhsusf_200rnd_556x45_mixed_box";
			handgunWeapon = "";
			handgunWeaponMagazine = "";
			headgear = "rhssaf_helmet_m97_digital_black_ess_bare";
			backpack = "rhssaf_kitbag_digital";
			addItemsToVest[] = {
				LIST_1("rhsusf_200rnd_556x45_mixed_box"),
				LIST_2("rhs_mag_an_m8hc"),
				LIST_2("rhs_mag_m67")
			};
			addItemsToBackpack[] = {
				LIST_4("rhsusf_200rnd_556x45_mixed_box")
			};
		};

		//light AT
		class Soldier_LAT_F: Soldier_F {
			secondaryWeapon = "rhs_weap_M136";
		};

		//ammo bearer
		class Soldier_A_F: Soldier_F {
			backpack = "rhssaf_kitbag_digital";
			addItemsToBackpack[] = {
				LIST_4("rhsusf_200rnd_556x45_mixed_box")
			};
		};

		//assistant autorifleman
		class Soldier_AAR_F: Soldier_F {
			backpack = "rhssaf_kitbag_digital";
			addItemsToBackpack[] = {
				LIST_4("rhsusf_200rnd_556x45_mixed_box")
			};
		};

		//medic
		class Medic_F: Soldier_F {
			backpack = "rhssaf_kitbag_digital";
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
			primaryWeapon = "rhs_weap_vhsd2_bg";
			backpack = "rhssaf_kitbag_digital";
			addItemsToBackpack[] = {
				LIST_2("1Rnd_SmokeGreen_Grenade_shell"),
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
