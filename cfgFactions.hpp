class cfgFactions {
    class NATO {
        commandVehicles[] = {"B_MRAP_01_F", "B_MRAP_01_F"};
        onCommandVehicleCreate = "";
        onBarrelCaseCreate = "";
        loadoutWood = "";
        loadoutDes = "";
        BFT = 1;
    };

    class us_army {
        commandVehicles[] = {"rhsusf_m998_w_s_4dr_fulltop", "rhsusf_m998_d_s_4dr_fulltop"};
        onCommandVehicleCreate = "";
        onBarrelCaseCreate = "";
        loadoutWood = "us_army";
        loadoutDes = "us_army";
        BFT = 1;
    };

    class us_marines {
        commandVehicles[] = {"rhsusf_m998_w_s_4dr_fulltop", "rhsusf_m998_d_s_4dr_fulltop"};
        onCommandVehicleCreate = "";
        onBarrelCaseCreate = "";
        loadoutWood = "us_marines_w";
        loadoutDes = "us_marines_d";
        BFT = 1;
    };

    class rus_msv {
        commandVehicles[] = {"rhs_tigr_msv", "rhs_tigr_3camo_msv"};
        onCommandVehicleCreate = "";
        onBarrelCaseCreate = "";
        loadoutWood = "rus_msv_w";
        loadoutDes = "rus_msv_d";
        BFT = 1;
    };

    class rus_spetsnaz: rus_msv {
        loadoutWood = "rus_spetsnaz";
        loadoutDes = "rus_spetsnaz";
    };

    class hr_hkov {
        commandVehicles[] = {"rhsgref_hidf_M998_4dr_fulltop", "rhsgref_hidf_M998_4dr_fulltop"};
        onCommandVehicleCreate = "";
        onBarrelCaseCreate = "";
        loadoutWood = "hr_hkov";
        loadoutDes = "hr_hkov";
        BFT = 1;
    };

    class isr_idf {
        commandVehicles[] = {"rhsusf_m998_w_s_4dr_fulltop", "rhsusf_m998_d_s_4dr_fulltop"};
        onCommandVehicleCreate = "";
        onBarrelCaseCreate = "";
        loadoutWood = "isr_idf";
        loadoutDes = "isr_idf";
        BFT = 1;
    };

    class tur_tkk {
        commandVehicles[] = {"rhsgref_hidf_M998_4dr_fulltop", "rhsgref_hidf_M998_4dr_fulltop"};
        onCommandVehicleCreate = "";
        onBarrelCaseCreate = "";
        loadoutWood = "tur_tkk";
        loadoutDes = "tur_tkk";
        BFT = 1;
    };

    class ger_heer {
        commandVehicles[] = {"Redd_Tank_LKW_leicht_gl_Wolf_Flecktarn_FueFu","Redd_Tank_LKW_leicht_gl_Wolf_Tropentarn_FueFu"};
        onCommandVehicleCreate = "if (isServer) then {_this disableTIEquipment true};";
        onBarrelCaseCreate = "";
        loadoutWood = "ger_heer_w";
        loadoutDes = "ger_heer_d";
        BFT = 1;
    };

    class ind_eastern_nationalists {
        commandVehicles[] = {"rhsgref_nat_uaz", "rhsgref_nat_uaz"};
        onCommandVehicleCreate = "";
        onBarrelCaseCreate = "";
        loadoutWood = "ind_eastern_nationalists";
        loadoutDes = "ind_eastern_nationalists";
        BFT = 0;
    };

    class ind_eastern_peasants {
        commandVehicles[] = {"rhsgref_nat_uaz", "rhsgref_nat_uaz"};
        onCommandVehicleCreate = "if (isServer) then {_this addBackpackCargoGlobal ['rhs_sidor',8]}";
        onBarrelCaseCreate = "if (isServer) then {_this addBackpackCargoGlobal ['rhs_sidor',8]}";
        loadoutWood = "ind_eastern_peasants";
        loadoutDes = "ind_eastern_peasants";
        BFT = 0;
    };

    class ind_pmc_special {
        commandVehicles[] = {"CUP_C_SUV_TK","CUP_C_SUV_TK"};
        onCommandVehicleCreate = "";
        onBarrelCaseCreate = "";
        loadoutWood = "ind_pmc_special";
        loadoutDes = "ind_pmc_special";
        BFT = 1;
    };

    class ind_pmc_west {
        commandVehicles[] = {"C_Offroad_01_F","C_Offroad_01_F"};
        onCommandVehicleCreate = "";
        onBarrelCaseCreate = "";
        loadoutWood = "ind_pmc_west";
        loadoutDes = "ind_pmc_west";
        BFT = 1;
    };

    class ind_me_terrorists {
        commandVehicles[] = {"rhsgref_nat_uaz","rhsgref_nat_uaz"};
        onCommandVehicleCreate = "if (isServer) then {_this addBackpackCargoGlobal ['rhs_sidor',8]}";
        onBarrelCaseCreate = "if (isServer) then {_this addBackpackCargoGlobal ['rhs_sidor',8]}";
        loadoutWood = "ind_me_terrorists";
        loadoutDes = "ind_me_terrorists";
        BFT = 0;
    };

    class ind_me_para {
        commandVehicles[] = {"rhsgref_nat_uaz","rhsgref_nat_uaz"};
        onCommandVehicleCreate = "if (isServer) then {_this addBackpackCargoGlobal ['rhs_sidor',8]}";
        onBarrelCaseCreate = "if (isServer) then {_this addBackpackCargoGlobal ['rhs_sidor',8]}";
        loadoutWood = "ind_me_para";
        loadoutDes = "ind_me_para";
        BFT = 0;
    };

    class spe_wehrmacht_early {
        commandVehicles[] = {"SPE_OpelBlitz","SPE_OpelBlitz"};
        onCommandVehicleCreate = "if (isServer) then {_this addBackpackCargoGlobal ['rhs_sidor',8]}";
        onBarrelCaseCreate = "if (isServer) then {_this addBackpackCargoGlobal ['rhs_sidor',8]}";
        loadoutWood = "spe_wehrmacht_early";
        loadoutDes = "spe_wehrmacht_early";
        BFT = 0;
    };

    class spe_wehrmacht_late {
        commandVehicles[] = {"SPE_OpelBlitz","SPE_OpelBlitz"};
        onCommandVehicleCreate = "if (isServer) then {_this addBackpackCargoGlobal ['rhs_sidor',8]}";
        onBarrelCaseCreate = "if (isServer) then {_this addBackpackCargoGlobal ['rhs_sidor',8]}";
        loadoutWood = "spe_wehrmacht_late";
        loadoutDes = "spe_wehrmacht_late";
        BFT = 0;
    };

    class spe_us_early {
        commandVehicles[] = {"SPE_US_M3_Halftrack_Unarmed_Open","SPE_US_M3_Halftrack_Unarmed_Open"};
        onCommandVehicleCreate = "if (isServer) then {_this addBackpackCargoGlobal ['rhs_sidor',8]}";
        onBarrelCaseCreate = "if (isServer) then {_this addBackpackCargoGlobal ['rhs_sidor',8]}";
        loadoutWood = "spe_us_early";
        loadoutDes = "spe_us_early";
        BFT = 0;
    };

    class spe_us_late {
        commandVehicles[] = {"SPE_US_M3_Halftrack_Unarmed_Open","SPE_US_M3_Halftrack_Unarmed_Open"};
        onCommandVehicleCreate = "if (isServer) then {_this addBackpackCargoGlobal ['rhs_sidor',8]}";
        onBarrelCaseCreate = "if (isServer) then {_this addBackpackCargoGlobal ['rhs_sidor',8]}";
        loadoutWood = "spe_us_late";
        loadoutDes = "spe_us_late";
        BFT = 0;
    };
};
