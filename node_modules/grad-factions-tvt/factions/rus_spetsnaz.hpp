class rus_spetsnaz {
	class AllUnits {
        primaryWeapon = "rhs_weap_ak103_zenitco01_b33";
		primaryWeaponMagazine = "rhs_30Rnd_762x39mm_polymer";
		primaryWeaponMuzzle = "rhs_acc_dtk3";
		primaryWeaponOptics[] = {
            "rhs_acc_okp7_picatinny",
            "rhs_acc_1p87"
        };
		primaryWeaponPointer = "rhs_acc_perst3_2dp_h";
		primaryWeaponUnderbarrel = "";
		primaryWeaponUnderbarrelMagazine = "";
		secondaryWeapon = "";
		secondaryWeaponMagazine = "";
		handgunWeapon = "";
		uniform = "rhs_uniform_gorka_r_y";
        vest = "rhs_6b23_6sh116_od";
		backpack = "";
		headgear[] = {
            "rhs_altyn_novisor_ess_bala",
            "rhs_altyn_novisor_bala"
        };
		nvgoggles = "";
		radio = "TFAR_fadak";
		binoculars = "Binocular";
		map = "ItemMap";
		gps = "ItemGPS";
		compass = "ItemCompass";
        addItemsToUniform[] = {
            MEDICITEMS_BASE,
			LIST_2("rhs_mag_rdg2_white"),
            LIST_2("ACE_Chemlight_HiWhite"),
			"ACE_Flashlight_KSF1",
			"ACE_MapTools"
		};
        addItemsToBackpack[] = {};
	};

	class Type {
        //rifleman
		class Soldier_F {
			addItemsToVest[] = {
				LIST_7("rhs_30Rnd_762x39mm_polymer"),
				LIST_2("rhs_mag_rgo")
			};
		};

        //autorifleman
		class Soldier_AR_F: Soldier_F {
			primaryWeapon = "rhs_weap_pkp";
			primaryWeaponMagazine = "rhs_100Rnd_762x54mmR";
            primaryWeaponMuzzle = "";
            primaryWeaponOptics = "";
            primaryWeaponPointer = "";
			backpack = "rhs_assault_umbts";
			addItemsToVest[] = {
				LIST_2("rhs_mag_rgo"),
                LIST_1("rhs_100Rnd_762x54mmR")
			};
			addItemsToBackpack[] = {
				LIST_2("rhs_100Rnd_762x54mmR_green")
			};
		};

        //light AT
		class Soldier_LAT_F: Soldier_F {
			secondaryWeapon = "rhs_weap_rpg26";
		};

        //ammo bearer
		class Soldier_A_F: Soldier_F {
			backpack = "rhs_assault_umbts";
			addItemsToBackpack[] = {
				LIST_2("rhs_100Rnd_762x54mmR_green")
			};
		};

		//assistant autorifleman
		class Soldier_AAR_F: Soldier_F {
			backpack = "rhs_assault_umbts";
			addItemsToBackpack[] = {
				LIST_2("rhs_100Rnd_762x54mmR_green")
			};
		};

        //medic
		class Medic_F: Soldier_F {
			backpack = "rhs_assault_umbts";
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
				LIST_3("rhs_mag_rdg2_black"),
				LIST_3("rhs_mag_rdg2_white")
			};
        };

        //team leader
		class Soldier_TL_F: Soldier_F {

		};
	};
};
