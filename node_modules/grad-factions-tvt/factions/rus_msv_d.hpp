class rus_msv_d: rus_msv_w {
    class AllUnits: AllUnits {
        uniform = "rhs_uniform_emr_des_patchless";
        vest = "rhsgref_6b23_khaki_rifleman";
        headgear = "rhs_6b27m_green";
    };

    class Type: Type {
        //rifleman
        class Soldier_F: Soldier_F {

        };

        //autorifleman
        class Soldier_AR_F: Soldier_AR_F {
            headgear = "rhs_6b27m_green_ess";
        };

        //light AT
        class Soldier_LAT_F: Soldier_LAT_F {

        };

        //ammo bearer
        class Soldier_A_F: Soldier_A_F {

        };

        //medic
        class Medic_F: Medic_F {
            vest = "rhsgref_6b23_khaki_medic";
        };

        //squad leader
        class Soldier_SL_F: Soldier_SL_F {
            vest = "rhsgref_6b23_khaki_rifleman";
            headgear = "rhs_6b27m_green_ess";
        };

        //team leader
        class Soldier_TL_F: Soldier_TL_F {
            vest = "rhsgref_6b23_khaki_rifleman";
            headgear = "rhs_6b27m_green_ess";
        };
    };

    class Rank: Rank {
        class LIEUTENANT: LIEUTENANT {
            headgear = "rhs_fieldcap_khk";
        };
    };
};
