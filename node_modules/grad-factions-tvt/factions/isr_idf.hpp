class isr_idf {
	class AllUnits {
		primaryWeapon = "arifle_TRG21_F";
		primaryWeaponMagazine = "";
		primaryWeaponMuzzle = "";
		primaryWeaponOptics = "FHQ_optic_MARS";
		primaryWeaponPointer = "";
		primaryWeaponUnderbarrel = "";
		primaryWeaponUnderbarrelMagazine = "";
		secondaryWeapon = "";
		secondaryWeaponMagazine = "";
		handgunWeapon = "";
		handgunWeaponMagazine = "";
		uniform = "rhs_uniform_m88_patchless";
		vest = "rhsusf_iotv_ocp_Rifleman";
		backpack = "";
		headgear = "rhsusf_ach_bare";
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
				LIST_2("rhs_mag_an_m8hc"),
				LIST_2("rhs_mag_m67")
			};
		};

		//autorifleman
		class Soldier_AR_F: Soldier_F {
			primaryWeapon = "LMG_Zafir_F";
			primaryWeaponOptics = "";
			primaryWeaponMagazine = "150Rnd_762x54_Box";
			headgear = "rhsusf_ach_bare_ess";
			backpack = "rhsusf_falconii_mc";
			addItemsToVest[] = {
				LIST_1("150Rnd_762x54_Box"),
				LIST_2("rhs_mag_an_m8hc"),
				LIST_2("rhs_mag_m67")
			};
			addItemsToBackpack[] = {
				LIST_2("150Rnd_762x54_Box_Tracer"),
				LIST_1("150Rnd_762x54_Box")
			};
		};

		//light AT
		class Soldier_LAT_F: Soldier_F {
			secondaryWeapon = "rhs_weap_m72a7";
		};

		//ammo bearer
		class Soldier_A_F: Soldier_F {
			backpack = "rhsusf_falconii_mc";
			addItemsToBackpack[] = {
				LIST_2("150Rnd_762x54_Box_Tracer"),
				LIST_1("150Rnd_762x54_Box")
			};
		};

		//assistant autorifleman
		class Soldier_AAR_F: Soldier_F {
			backpack = "rhsusf_falconii_mc";
			addItemsToBackpack[] = {
				LIST_2("150Rnd_762x54_Box_Tracer"),
				LIST_1("150Rnd_762x54_Box")
			};
		};

		//medic
		class Medic_F: Soldier_F {
			backpack = "rhsusf_falconii_mc";
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
			backpack = "TFAR_rt1523g";
			headgear = "rhsusf_ach_bare_headset";
			addItemsToBackpack[] =  {
				LIST_2("rhs_mag_m18_green"),
				LIST_2("rhs_mag_m18_red")
			};
		};

		//team leader
		class Soldier_TL_F: Soldier_F {
			primaryWeapon = "arifle_TRG21_GL_F";
			backpack = "rhsusf_falconii_mc";
			headgear = "rhsusf_ach_bare_headset";
			addItemsToBackpack[] = {
				LIST_2("1Rnd_SmokeGreen_Grenade_shell"),
				LIST_2("1Rnd_SmokePurple_Grenade_shell"),
				LIST_2("1Rnd_SmokeRed_Grenade_shell")
			};
		};
	};

	class Rank {
		class LIEUTENANT {
			backpack = "TFAR_rt1523g_big";
			headgear = "rhsusf_patrolcap_ocp";
		};
	};
};
