waitUntil { !isNull player };
      if (local player) then {
        waitUntil { time > 1 };

        
        switch (faction player) do {
               case "BLU_F":
               {[] call compile preprocessFile "loadouts\loadouts_blufor.sqf";};
               case "OPF_F":
               {[] call compile preprocessFile "loadouts\loadouts_opfor.sqf";};
               default {["ERROR: player is neither OPFOR nor BLUFOR?!",typeOf player] call BIS_fnc_logFormat;};
              };
    
            
            ["loadouts processed for player %1",typeOf player] call BIS_fnc_logFormat;
            
            switch (typeOf player) do {

            case "B_G_officer_F": {[player] call blufor_default;};
            case "B_officer_F": {[player] call blufor_default;};

            case "B_Soldier_TL_F": {[player] call blufor_default;};
            case "B_G_Soldier_TL_F": {[player] call blufor_default;};
            case "B_recon_TL_F": {[player] call blufor_default;};
            case "B_Soldier_SL_F": {[player] call blufor_default;};
            case "B_G_Soldier_SL_F": {[player] call blufor_default;};
            

            case "B_G_Soldier_GL_F": {[player] call blufor_default;};
            case "B_Soldier_GL_F": {[player] call blufor_default;};

            case "B_medic_F": {[player] call blufor_default;};
            case "B_recon_medic_F": {[player] call blufor_default;};
            case "B_G_medic_F": {[player] call blufor_default;};

            case "B_soldier_AAR_F": {[player] call blufor_default;};
            case "B_G_Soldier_AR_F": {[player] call blufor_default;};
            case "B_soldier_AR_F": {[player] call blufor_default;};

            case "B_G_Soldier_exp_F": {[player] call blufor_default;};
            case "B_soldier_exp_F": {[player] call blufor_default;};

            case "B_Soldier_04_F": {[player] call blufor_default;};
            case "B_Soldier_03_F": {[player] call blufor_default;};
            case "B_Soldier_F": {[player] call blufor_default;};
            case "B_Soldier_lite_F": {[player] call blufor_default;};
            case "B_G_Soldier_F": {[player] call blufor_default;};
            case "B_G_Soldier_lite_F": {[player] call blufor_default;};

            case "O_Soldier_LAT_F": {[player] call opfor_default;};
            case "O_recon_LAT_F": {[player] call opfor_default;};
            case "O_soldierU_LAT_F": {[player] call opfor_default;};
            case "O_G_Soldier_LAT_F": {[player] call opfor_default;};

            case "O_medic_F": {[player] call opfor_default;};
            case "O_recon_medic_F": {[player] call opfor_default;};
            case "O_soldierU_medic_F": {[player] call opfor_default;};
            case "O_G_medic_F": {[player] call opfor_default;};

            case "O_G_Soldier_exp_F": {[player] call opfor_default;};
            case "O_soldier_exp_F": {[player] call opfor_default;};
            case "O_recon_exp_F": {[player] call opfor_default;};
            case "O_soldierU_exp_F": {[player] call opfor_default;};

            case "O_G_Soldier_AR_F": {[player] call opfor_default;};
            case "O_Soldier_AR_F": {[player] call opfor_default;};
            case "O_soldierU_AR_F": {[player] call opfor_default;};
            case "O_Soldier_AAR_F": {[player] call opfor_default;};
            case "O_soldierU_AAR_F": {[player] call opfor_default;};

            case "O_G_Soldier_TL_F": {[player] call opfor_default;};
            case "O_soldierU_F": {[player] call opfor_default;};
            case "O_Soldier_TL_F": {[player] call opfor_default;};
            case "O_recon_TL_F": {[player] call opfor_default;};
            case "O_soldierU_TL_F": {[player] call opfor_default;};
            case "O_G_officer_F": {[player] call opfor_default;};
            case "O_officer_F": {[player] call opfor_default;};
            case "O_Soldier_TL_F": {[player] call opfor_default;};
            case "O_recon_TL_F": {[player] call opfor_default;};
            case "O_soldierU_TL_F": {[player] call opfor_default;};

            case "O_G_Soldier_GL_F": {[player] call opfor_default;};
            case "O_Soldier_GL_F": {[player] call opfor_default;};
            case "O_SoldierU_GL_F": {[player] call opfor_default;};
            case "O_G_Soldier_F": {[player] call opfor_default;};
            case "O_G_Soldier_lite_F": {[player] call opfor_default;};
            case "O_Soldier_F": {[player] call opfor_default;};
            case "O_Soldier_lite_F": {[player] call opfor_default;};
            case "O_soldierU_F": {[player] call opfor_default;};
            case "O_soldierU_A_F": {[player] call opfor_default;};
            case "O_G_Soldier_A_F": {[player] call opfor_default;};
            case "O_Soldier_A_F": {[player] call opfor_default;};
            default {  ["class %1 not found in matching list",typeOf player] call BIS_fnc_logFormat;};
    
     };

     } else { ["player %1 is not local to itself -.-", player] call BIS_fnc_logFormat;};
    
