_unit = _this select 0;

if (!firstspawn) exitWith{firstspawn = true;};

if (!local _unit) exitWith {};

removeHeadgear _unit:
removeGoggles _unit;
removeVest _unit;
removeBackpack _unit;
removeUniform _unit;
removeAllWeapons _unit:
removeAllAssignedItems _unit;

// join civilian side, because end trigger relies on side
[_unit] joinSilent (createGroup civilian);
// set position above objective

// make invisible
fnc_hide = {
(_this select 0) hideObject (_this select 1);
};

[[_unit, true],"fnc_hide", true, false, true] call BIS_fnc_MP; 

_unit addAction["<t color='#d18d1f'>Activate Spectator Cam</t> (right click to exit)",{[[[], "spectator\callSpectator.sqf"],"BIS_fnc_execVM",true,true] spawn BIS_fnc_MP;  }, _Args, 1, false, false, "","_this == _target"];


// make floating forever
// _unit doesnt seem to work on dedicated?! trying player
[_unit] spawn {while {true} do {
	obj = _this select 0;
	respawn_above_objective = [(getPos respawn_helper select 0), (getPos respawn_helper select 1), 200];
		while {true} do {
		obj setvelocity [0,0,0];
		obj setPos respawn_above_objective;
		sleep 0.2;
		};
	sleep 5;
	};
};

sleep 2;
// start spec cam
[_unit] call BIS_fnc_cameraOld;