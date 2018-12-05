class us_army {
	class AllUnits {
        primaryWeapon = "rhs_weap_m4a1_carryhandle";
		primaryWeaponMagazine = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
		primaryWeaponMuzzle = "";
        primaryWeaponOptics = "";
		primaryWeaponPointer = "";
		primaryWeaponUnderbarrel = "";
		primaryWeaponUnderbarrelMagazine = "";
		secondaryWeapon = "";
		secondaryWeaponMagazine = "";
		handgunWeapon = "rhsusf_weap_m9";
		handgunWeaponMagazine = "rhsusf_mag_15Rnd_9x19_JHP";
		uniform = "rhs_uniform_cu_ocp";
        vest = "rhsusf_iotv_ocp_Rifleman";
		backpack = "";
		headgear = "rhsusf_ach_helmet_ocp";
		nvgoggles = "";
		radio = "TFAR_anprc152";
		binoculars = "Binocular";
		map = "ItemMap";
		gps = "ItemGPS";
		compass = "ItemCompass";
        addItemsToUniform[] = {
			LIST_6("ACE_fieldDressing"),
			LIST_3("ACE_CableTie"),
			LIST_2("ACE_morphine"),
            LIST_2("ACE_Chemlight_HiWhite"),
			"ACE_epinephrine",
			"ACE_Flashlight_MX991",
			"ACE_MapTools"
	  	};
        addItemsToBackpack[] = {};
	};

	class Type {
        //rifleman
		class Soldier_F {
			addItemsToVest[] = {
				LIST_7("rhs_mag_30Rnd_556x45_M855A1_Stanag"),
				LIST_2("rhs_mag_an_m8hc"),
				LIST_2("rhsusf_mag_15Rnd_9x19_JHP"),
				LIST_2("rhs_mag_m67")
			};
		};

        //autorifleman
		class Soldier_AR_F: Soldier_F {
			primaryWeapon = "rhs_weap_m249_pip_S";
			primaryWeaponMagazine = "rhs_200rnd_556x45_M_SAW";
			handgunWeapon = "";
			handgunWeaponMagazine = "";
			vest = "rhsusf_iotv_ocp_SAW";
			backpack = "rhsusf_assault_eagleaiii_ocp";
			headgear = "rhsusf_ach_helmet_ESS_ocp";
			addItemsToVest[] = {
				LIST_2("rhs_mag_an_m8hc"),
				LIST_2("rhs_mag_m67"),
				"rhsusf_100Rnd_556x45_soft_pouch"
			};
			addItemsToBackpack[] = {
				LIST_2("rhs_200rnd_556x45_M_SAW")
			};
		};

        //light AT
		class Soldier_LAT_F: Soldier_F {
			secondaryWeapon = "rhs_weap_M136";
		};

        //ammo bearer
		class Soldier_A_F: Soldier_F {
			backpack = "rhsusf_assault_eagleaiii_ocp";
			addItemsToBackpack[] = {
				LIST_2("rhs_200rnd_556x45_M_SAW")
			};
		};

		//assistant autorifleman
		class Soldier_AAR_F: Soldier_F {
			backpack = "rhsusf_assault_eagleaiii_ocp";
			addItemsToBackpack[] = {
				LIST_2("rhs_200rnd_556x45_M_SAW")
			};
		};

        //medic
		class Medic_F: Soldier_F {
			vest = "rhsusf_iotv_ocp_Medic";
			backpack = "rhsusf_assault_eagleaiii_ocp";
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
			primaryWeaponOptics = "rhsusf_acc_compm4";
			vest = "rhsusf_iotv_ocp_Squadleader";
			backpack = "TFAR_rt1523g_rhs";
			headgear = "rhsusf_ach_helmet_headset_ess_ocp";
			addItemsToBackpack[] =  {
				LIST_2("rhs_mag_m18_green"),
				LIST_2("rhs_mag_m18_purple")
			};
        };

        //team leader
		class Soldier_TL_F: Soldier_F {
			primaryWeapon = "rhs_weap_m4a1_carryhandle_m203";
			primaryWeaponOptics = "rhsusf_acc_compm4";
			vest = "rhsusf_iotv_ocp_Teamleader";
			backpack = "rhsusf_assault_eagleaiii_ocp";
			headgear = "rhsusf_ach_helmet_headset_ocp";
			addItemsToBackpack[] = {
				LIST_2("1Rnd_SmokeGreen_Grenade_shell"),
				LIST_2("1Rnd_SmokePurple_Grenade_shell"),
				LIST_2("1Rnd_SmokeRed_Grenade_shell")
			};
		};
	};

	class Rank {
		class LIEUTENANT {
			headgear = "rhsusf_patrolcap_ocp";
			backpack = "TFAR_rt1523g_big_rhs";
		};
	};
};
