class cfgFactions {
    class NATO {
        commandVehicles[] = {"B_MRAP_01_F", "B_MRAP_01_F"};
        onCommandVehicleCreate = "";
        loadoutWood = "";
        loadoutDes = "";
        BFT = 1;
    };

    class us_army {
        commandVehicles[] = {"rhsusf_m998_w_s_4dr_fulltop", "rhsusf_m998_d_s_4dr_fulltop"};
        onCommandVehicleCreate = "";
        loadoutWood = "us_army";
        loadoutDes = "us_army";
        BFT = 1;
    };

    class ger_heer {
        commandVehicles[] = {"Redd_Tank_LKW_leicht_gl_Wolf_Flecktarn_FueFu","Redd_Tank_LKW_leicht_gl_Wolf_Tropentarn_FueFu"};
        onCommandVehicleCreate = "if (isServer) then {_this disableTIEquipment true};";
        loadoutWood = "ger_heer_w";
        loadoutDes = "ger_heer_d";
        BFT = 1;
    };

    class rus_msv {
        commandVehicles[] = {"rhs_tigr_msv", "rhs_tigr_3camo_msv"};
        onCommandVehicleCreate = "";
        propagandaTowerSounds[] = {"uo_propaganda_rus_1","uo_propaganda_rus_2","uo_propaganda_rus_3","uo_propaganda_rus_4","uo_propaganda_rus_5"};
        loadoutWood = "rus_msv_w";
        loadoutDes = "rus_msv_d";
        BFT = 1;
    };

    class ind_eastern_nationalists {
        commandVehicles[] = {"rhsgref_nat_uaz", "rhsgref_nat_uaz"};
        onCommandVehicleCreate = "";
        propagandaTowerSounds[] = {"uo_propaganda_rus_1","uo_propaganda_rus_2","uo_propaganda_rus_3","uo_propaganda_rus_4","uo_propaganda_rus_5"};
        loadoutWood = "ind_eastern_nationalists";
        loadoutDes = "ind_eastern_nationalists";
        BFT = 0;
    };

    class ind_me_terrorists {
        commandVehicles[] = {"LOP_ISTS_Landrover","LOP_ISTS_Landrover"};
        onCommandVehicleCreate = "";
        loadoutWood = "ind_me_terrorists";
        loadoutDes = "ind_me_terrorists";
        BFT = 0;
    };

    class ind_PMC_special {
        commandVehicles[] = {"CUP_C_SUV_TK","CUP_C_SUV_TK"};
        onCommandVehicleCreate = "";
        loadoutWood = "ind_pmc_special";
        loadoutDes = "ind_pmc_special";
        BFT = 1;
    };
};
