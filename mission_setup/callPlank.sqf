_target = _this select 0;

if (_target == opfor_teamlead) then {

//hintSilent "plank called";

[] spawn {
	while {true} do {

		sleep 1;
		//hintSilent "checking if teleported";

		if (OPFOR_TELEPORTED) exitWith {
			[player, [0, 1, 3, 0, 0, 0, 0, 0, 3, 1]] call plank_deploy_fnc_init;
			player setVariable ["buildReady", false];
			buildReadyAction1 = player addAction["<t color='#ff5555'>End Placement</t>",{player setVariable ["buildReady", true]; player removeAction buildReadyAction1;}];
			};

		};
};

};


if (_target == opfor_engi) then {

[] spawn {
	while {true} do {

		sleep 1;
		//hintSilent "checking if teleported";

		if (OPFOR_TELEPORTED) exitWith {
			[player, [1, 0, 3, 0, 0, 0, 0, 0, 3, 0]] call plank_deploy_fnc_init;
			player setVariable ["buildReady", false];
			buildReadyAction1 = player addAction["<t color='#ff5555'>End Placement</t>",{player setVariable ["buildReady", true]; player removeAction buildReadyAction2;}];
			};

		};
};

};