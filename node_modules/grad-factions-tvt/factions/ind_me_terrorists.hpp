class ind_me_terrorists {
	class AllUnits {
        primaryWeapon = "rhs_weap_m38";
		primaryWeaponMagazine = "rhsgref_5Rnd_762x54_m38";
		primaryWeaponMuzzle = "";
		primaryWeaponOptics = "";
		primaryWeaponPointer = "";
		primaryWeaponUnderbarrel = "";
		primaryWeaponUnderbarrelMagazine = "";
		secondaryWeapon = "";
		secondaryWeaponMagazine = "";
		handgunWeapon = "";
		uniform[] = {
            "LOP_U_AM_Fatigue_01",
            "LOP_U_AM_Fatigue_01_3",
            "LOP_U_AM_Fatigue_01_5",
            "LOP_U_AM_Fatigue_02",
            "LOP_U_AM_Fatigue_02_2",
            "LOP_U_AM_Fatigue_02_5",
            "LOP_U_AM_Fatigue_02_6"
        };
        vest = "";
		backpack = "";
        goggles = "";
		headgear[] = {
            "H_Shemag_olive",
            "H_ShemagOpen_khk",
            "LOP_H_Shemag_TAN",
            "LOP_H_Shemag_BLK",
            "LOP_H_Turban_mask"
        };
		nvgoggles = "";
		radio = "TFAR_fadak";
		binoculars = "";
		map = "ItemMap";
		gps = "";
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
            addItemsToUniform[] = {
                LIST_10("rhsgref_5Rnd_762x54_m38"),
                "rhs_mag_rgo",
                "rhs_mag_rdg2_white"
            };
		};

        //autorifleman
		class Soldier_AR_F: Soldier_F {
            primaryWeapon = "rhs_weap_akm";
			primaryWeaponMagazine = "gm_75Rnd_762x39mm_AP_7N23_ak47_blk";
            addItemsToUniform[] ={
                LIST_3("gm_75Rnd_762x39mm_AP_7N23_ak47_blk")
            };
		};

        //light AT
		class Soldier_LAT_F: Soldier_F {
            secondaryWeapon = "rhs_weap_rpg26";
		};

        //ammo bearer
		class Soldier_A_F: Soldier_F {
            vest = "LOP_6sh46";
            addItemsToVest[] = {
                LIST_4("gm_75Rnd_762x39mm_AP_7N23_ak47_blk")
            };
		};

		//assistant autorifleman
		class Soldier_AAR_F: Soldier_F {
            vest = "LOP_6sh46";
            addItemsToVest[] = {
                LIST_4("gm_75Rnd_762x39mm_AP_7N23_ak47_blk")
            };
		};

        //medic
		class Medic_F: Soldier_F {
            vest = "LOP_6sh46";
            headgear = "LOP_H_Pakol";
            goggles = "G_Bandanna_khk";
            addItemsToVest[] = {
                LIST_20("ACE_fieldDressing"),
                LIST_15("ACE_morphine"),
                LIST_15("ACE_epinephrine"),
                LIST_2("ACE_bloodIV_250")
            };
		};

        //squad leader
        class Soldier_SL_F: Soldier_F {
            binoculars = "Binocular";
        };

        //team leader
		class Soldier_TL_F: Soldier_F {
            binoculars = "Binocular";
            headgear = "LOP_H_Pakol";
            goggles = "rhs_scarf";
		};
	};

	class Rank {
		class LIEUTENANT {

		};
	};
};
