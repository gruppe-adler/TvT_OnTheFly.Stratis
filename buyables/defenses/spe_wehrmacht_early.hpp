class Defenses: defenses_base {

    class Land_HBarrier_5_F: Land_HBarrier_5_F {};
    class Land_BagFence_Long_F: Land_BagFence_Long_F {};
    class ACE_EntrenchingTool: ACE_EntrenchingTool {};
    class B_Mortar_01_F: B_Mortar_01_F {};

     class SPE_MG34_Lafette_Deployed {
        kindOf = "Vehicles";
        price = 1000;
        stock = 4;
    };

    class SPE_Pak40 {
        kindOf = "Vehicles";
        price = 3000;
        stock = 4;
    };

	class Land_SPE_Sandbag_Nest {
		displayName = "Sandbag Nest";
        description = "1x Sandbag Nest<br/><br/>1x Razorwire";

        price = 2000;
        stock = 10;

        code = "if (player == _this select 0) then {[player,'Land_SPE_Sandbag_Nest',1] call grad_fortifications_fnc_addFort; [player,'Land_BagFence_Long_F',2] call grad_fortifications_fnc_addFort; [player,'Land_BagFence_Round_F',2] call grad_fortifications_fnc_addFort; [player,'Land_Razorwire_F',1] call grad_fortifications_fnc_addFort;};";
	};

	class Land_SPE_Sandbag_Long_Thick: Land_SPE_Sandbag_Nest{
		displayName = "Sandbags Long";
        description = "1x Sandbags Long";
		code = "if (player == _this select 0) then {[player,'Land_SPE_Sandbag_Long_Thick',1] call grad_fortifications_fnc_addFort; [player,'Land_BagFence_Long_F',2] call grad_fortifications_fnc_addFort; [player,'Land_BagFence_Round_F',2] call grad_fortifications_fnc_addFort;};";
	};

	class Land_SPE_Sandbag_Curve: Land_SPE_Sandbag_Nest{
		displayName = "Sandbags Curve";
        description = "1x Sandbags Curve";
		code = "if (player == _this select 0) then {[player,'Land_SPE_Sandbag_Curve',1] call grad_fortifications_fnc_addFort; [player,'Land_BagFence_Long_F',2] call grad_fortifications_fnc_addFort; [player,'Land_BagFence_Round_F',2] call grad_fortifications_fnc_addFort;};";
	};
};
