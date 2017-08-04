class Defenses {
    displayName = "Defenses";
    kindOf = "Other";

    class RHS_Stinger_AA_pod_WD {
        kindOf = "Vehicles";
        displayName = "Stinger AA Pod";
        price = 1500;
        stock = 2;
    };

    class RHS_M2StaticMG_WD {
        kindOf = "Vehicles";
        displayName = "M2 Static MG";
        price = 1500;
        stock = 4;
    };

    class Land_HBarrier_1_F {
        displayName = "H-Barrier (1)";
        price = 200;
        stock = 20;
        code = "if (player == _this select 0) then {[player,_this select 1] call grad_fortifications_fnc_addFort;}";
    };

    class Land_HBarrier_3_F {
        displayName = "H-Barrier (3)";
        price = 350;
        stock = 15;
        code = "if (player == _this select 0) then {[player,_this select 1] call grad_fortifications_fnc_addFort;}";
    };

    class Land_HBarrier_5_F {
        displayName = "H-Barrier (5)";
        price = 500;
        stock = 10;
        code = "if (player == _this select 0) then {[player,_this select 1] call grad_fortifications_fnc_addFort;}";
    };

    class Land_BagFence_Short_F {
        displayName = "Sandbags (short)";
        price = 200;
        stock = 20;
        code = "if (player == _this select 0) then {[player,_this select 1] call grad_fortifications_fnc_addFort;}";
    };

    class Land_BagFence_Long_F {
        displayName = "Sandbags (long)";
        price = 300;
        stock = 20;
        code = "if (player == _this select 0) then {[player,_this select 1] call grad_fortifications_fnc_addFort;}";
    };

    class Land_BagFence_Round_F{
        displayName = "Sandbags (round)";
        price = 300;
        stock = 20;
        code = "if (player == _this select 0) then {[player,_this select 1] call grad_fortifications_fnc_addFort;}";
    };

    class Land_Razorwire_F {
        displayName = "Razorwire";
        price = 150;
        stock = 20;
        code = "if (player == _this select 0) then {[player,_this select 1] call grad_fortifications_fnc_addFort;}";
    };
};
