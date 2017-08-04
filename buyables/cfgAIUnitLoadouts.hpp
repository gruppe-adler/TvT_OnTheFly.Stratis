#include "..\list_macros.hpp"

class cfgAIUnitLoadouts {
    class ind_me_terrorists {
        class baseAI {
            uniform[] = {
                "LOP_U_AM_Fatigue_01_3",
                "LOP_U_AM_Fatigue_02_5",
                "LOP_U_AM_Fatigue_01_5",
                "LOP_U_AM_Fatigue_02_6",
                "LOP_U_AM_Fatigue_02_2",
                "LOP_U_AM_Fatigue_02",
                "LOP_U_AM_Fatigue_01"
            };
            headgear[] = {
                "LOP_H_Shemag_BLK",
                "LOP_H_Shemag_GRE",
                "LOP_H_Shemag_OLV",
                "LOP_H_Shemag_TAN",
                "LOP_H_Turban",
                "LOP_H_Turban_mask",
                "LOP_H_Pakol"
            };
            vest = "";
            backpack = "";

            primaryWeapon = "rhs_weap_m38";
            addItemsToUniform[] = {
                LIST_12("rhsgref_5Rnd_762x54_m38"),
                LIST_6("ACE_fieldDressing"),
                LIST_2("ACE_morphine")
            };
        };

        class marksman: baseAI {};
        class rifleman: baseAI {};
        class riflemanAT: baseAI {
            secondaryWeapon = "rhs_weap_rpg26";
        };
        class autorifleman: baseAI {
            primaryWeapon = "rhs_weap_akm";
            addItemsToUniform[] = {
                LIST_8("rhs_30Rnd_762x39mm"),
                "rhs_mag_rgo"
            };
        };
        class suicideBomber: baseAI {
            primaryWeapon = "";
            addItemsToUniform[] = {};
            vest = "LOP_6sh46";
            addItemsToVest[] = {
                "DemoCharge_Remote_Mag"
            };
        };
    };

    class ind_eastern_nationalists {
        class baseAI {
            uniform[] = {
                "rhsgref_uniform_woodland_olive",
                "rhsgref_uniform_woodland",
                "rhsgref_uniform_flecktarn"
            };
            headgear[] = {
                "",
                "rhs_beanie_green",
                "H_Booniehat_oli",
            };
            vest[] = {
                "V_TacVest_blk",
                "V_Chestrig_oli",
                "V_TacVest_camo"
            };
            backpack = "";

            primaryWeapon[] = {
                "rhs_weap_akms",
                "rhs_weap_m70b1",
                "rhs_weap_m92"
            };
            addItemsToUniform[] = {
                LIST_6("ACE_fieldDressing"),
    			LIST_2("ACE_morphine"),
    			LIST_2("rhs_mag_rdg2_white"),
    			"ACE_epinephrine"
            };
            addItemsToVest[] = {
                LIST_6("rhs_30Rnd_762x39mm"),
                "rhs_mag_f1"
            };
        };

        class rifleman: baseAI {};
        class riflemanAT: baseAI {
            secondaryWeapon = "rhs_weap_rpg26";
        };
        class militiaman: baseAI {
            primaryWeapon = "rhs_weap_kar98k";
            addItemsToVest[] = {
                LIST_10("rhsgref_5Rnd_792x57_kar98k")
            };
        };
        class machinegunner: baseAI {
            primaryWeapon = "rhs_weap_pkm";
            backpack[] = {
                "B_AssaultPack_blk",
                "B_TacticalPack_oli",
                "B_AssaultPack_rgr"
            };
            addItemsToVest[] = {
                "rhs_100Rnd_762x54mmR_green",
                "rhs_mag_f1"
            };
            addItemsToBackpack[] = {
                "rhs_100Rnd_762x54mmR",
                "rhs_100Rnd_762x54mmR_green"
            };
        };
        class marksman: baseAI {
            primaryWeapon = "rhs_weap_m76";
            addItemsToVest[] = {
                LIST_8("rhsgref_10Rnd_792x57_m76")
            };
        };
    };
};
