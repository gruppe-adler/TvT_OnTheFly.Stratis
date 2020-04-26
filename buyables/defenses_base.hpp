class defenses_base {
    displayName = "Defenses";
    kindOf = "Other";

    class Land_BagFence_Long_F {
        displayName = "Light Package";
        description = "4x Sandbags Short<br/>2x Sandbags Long<br/>2x Sandbags Round<br/>1x Razorwire";

        price = 800;
        stock = 10;

        code = "if (player == _this select 0) then {[player,'Land_BagFence_Short_F',4] call grad_fortifications_fnc_addFort; [player,'Land_BagFence_Long_F',2] call grad_fortifications_fnc_addFort; [player,'Land_BagFence_Round_F',2] call grad_fortifications_fnc_addFort; [player,'Land_Razorwire_F',1] call grad_fortifications_fnc_addFort;};";
    };

    class Land_HBarrier_5_F {
        displayName = "Medium Package";
        description = "3x H-Barrier 1<br/>2x H-Barrier 3<br/>1x H-Barrier 5";

        price = 1500;
        stock = 5;

        code = "if (player == _this select 0) then {[player,'Land_HBarrier_1_F',3] call grad_fortifications_fnc_addFort; [player,'Land_HBarrier_3_F',2] call grad_fortifications_fnc_addFort; [player,'Land_HBarrier_5_F',1] call grad_fortifications_fnc_addFort;};";
    };

    class ACE_EntrenchingTool {
        kindOf = "Items";
        displayName = "Heavy Package";
        description = "1x Entrenching Tool<br/>1x H-Barrier Wall (long)<br/>2x H-Barrier Wall (short)<br/>2x Concrete Barrier (medium)<br/>2x Concrete Barrier";

        price = 2400;
        stock = 5;

        code = "if (player == _this select 0) then {[player,'Land_HBarrierWall6_F',1] call grad_fortifications_fnc_addFort; [player,'Land_HBarrierWall4_F',2] call grad_fortifications_fnc_addFort; [player,'Land_CncBarrierMedium_F',2] call grad_fortifications_fnc_addFort; [player,'Land_CncBarrier_F',2] call grad_fortifications_fnc_addFort};";
    };

    class B_Mortar_01_F {
        price = 2500;
        stock = 1;
    };
};
