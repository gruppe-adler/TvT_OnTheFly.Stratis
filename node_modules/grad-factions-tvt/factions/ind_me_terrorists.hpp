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
		uniform = "LOP_U_AM_Fatigue_01_3";
        vest = "";
		backpack = "";
		headgear = "H_Shemag_olive";
		nvgoggles = "";
		radio = "TFAR_fadak";
		binoculars = "";
		map = "ItemMap";
		gps = "";
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
			primaryWeaponMagazine = "rhs_30Rnd_762x39mm";
            uniform = "LOP_U_AM_Fatigue_02_5";
            headgear = "LOP_H_Shemag_TAN";
            addItemsToUniform[] ={
                LIST_6("rhs_30Rnd_762x39mm")
            };
		};

        //light AT
		class Soldier_LAT_F: Soldier_F {
            secondaryWeapon = "rhs_weap_rpg26";
            uniform = "LOP_U_AM_Fatigue_01_5";
            headgear = "H_ShemagOpen_khk";
		};

        //ammo bearer
		class Soldier_A_F: Soldier_F {
            uniform = "LOP_U_AM_Fatigue_02_6";
            vest = "LOP_6sh46";
            headgear = "LOP_H_Shemag_BLK";
            addItemsToVest[] = {
                LIST_6("rhs_30Rnd_762x39mm")
            };
		};

		//assistant autorifleman
		class Soldier_AAR_F: Soldier_F {
            uniform = "LOP_U_AM_Fatigue_02_6";
            vest = "LOP_6sh46";
            headgear = "LOP_H_Shemag_BLK";
            addItemsToVest[] = {
                LIST_6("rhs_30Rnd_762x39mm")
            };
		};

        //medic
		class Medic_F: Soldier_F {
            uniform = "LOP_U_AM_Fatigue_02_2";
            vest = "LOP_6sh46";
            goggles = "G_Bandanna_khk";
            headgear = "LOP_H_Pakol";
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
            uniform = "LOP_U_AM_Fatigue_02";
            headgear = "LOP_H_Turban_mask";
        };

        //team leader
		class Soldier_TL_F: Soldier_F {
            binoculars = "Binocular";
            uniform = "LOP_U_AM_Fatigue_01";
            headgear = "LOP_H_Pakol";
            goggles = "rhs_scarf";
		};
	};

	class Rank {
		class LIEUTENANT {

		};
	};
};
