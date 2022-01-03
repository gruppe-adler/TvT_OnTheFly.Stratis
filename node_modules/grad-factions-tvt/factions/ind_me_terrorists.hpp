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
            "UK3CB_TKM_O_U_01",
            "UK3CB_TKM_O_U_01_B",
            "UK3CB_TKM_O_U_01_C",
            "UK3CB_TKM_O_U_01_D",
            "UK3CB_TKM_O_U_03",
            "UK3CB_TKM_O_U_03_B",
            "UK3CB_TKM_O_U_04",
			"UK3CB_TKM_O_U_04_B",
			"UK3CB_TKM_O_U_04_C",
			"UK3CB_TKM_O_U_05",
			"UK3CB_TKM_O_U_05_B",
			"UK3CB_TKM_O_U_05_C",
			"UK3CB_TKM_O_U_06",
			"UK3CB_TKM_O_U_06_B",
			"UK3CB_TKM_O_U_06_C",
        };
        vest = "";
        backpack = "";
        goggles = "";
        headgear[] = {
            "H_Shemag_olive",
            "H_ShemagOpen_khk",
            "UK3CB_H_Turban_Facewrap_01_Blk",
            "UK3CB_H_Turban_Facewrap_02_Blk",
            "UK3CB_H_Turban_Facewrap_03_Blk",
			"UK3CB_H_Turban_Facewrap_01_Red",
            "UK3CB_H_Turban_Facewrap_02_Red",
            "UK3CB_H_Turban_Facewrap_03_Red",
			"UK3CB_TKA_I_H_Shemag_Des",
			"UK3CB_H_Shemag_blk",
			"UK3CB_H_Shemag_grey",
			"UK3CB_H_Shemag_oli",
			"UK3CB_H_Shemag_red",
			"UK3CB_H_Shemag_tan",
			"UK3CB_H_Shemag_white",
			"UK3CB_H_Mil_Turban_Wrap"
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
            addItemsToUniform[] = {
                LIST_3("gm_75Rnd_762x39mm_AP_7N23_ak47_blk")
            };
        };

        //light AT
        class Soldier_LAT_F: Soldier_F {
            secondaryWeapon = "rhs_weap_rpg26";
        };

        //ammo bearer
        class Soldier_A_F: Soldier_F {
            vest = "UK3CB_V_Pouch";
            addItemsToVest[] = {
                LIST_4("gm_75Rnd_762x39mm_AP_7N23_ak47_blk")
            };
        };

        //assistant autorifleman
        class Soldier_AAR_F: Soldier_F {
            vest = "UK3CB_V_Pouch";
            addItemsToVest[] = {
                LIST_4("gm_75Rnd_762x39mm_AP_7N23_ak47_blk")
            };
        };

        //medic
        class Medic_F: Soldier_F {
            vest = "UK3CB_V_Pouch";
            headgear = "UK3CB_TKC_H_Turban_01_1";
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
            headgear = "UK3CB_TKC_H_Turban_01_1";
            goggles = "rhs_scarf";
        };
    };

    class Rank {
        class LIEUTENANT {

        };
    };
};
