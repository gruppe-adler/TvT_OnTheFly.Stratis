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
(_this select 0) hideObjectGlobal (_this select 1);
};

[[_unit, true],"fnc_hide", true, true, true] call BIS_fnc_MP; 

_unit addAction["<t color='#d18d1f'>Activate Spectator Cam</t> (right click to exit)","spectator\callSpectator.sqf", _Args, 1, false, false, "","_this == _target"];


// make floating forever
// _unit doesnt seem to work on dedicated?! trying player
[_unit] spawn {while {true} do {
	_obj = _this select 0;
	_respawn_above_objective = [(getPosATL sector_trigger select 0), (getPosATL sector_trigger select 1), 200];
		while {true} do {
		_obj setvelocity [0,0,0];
		_obj setPosATL _respawn_above_objective;
		sleep 0.2;
		};
	sleep 5;
	};
};

sleep 1;
// start spec cam
[_unit] call BIS_fnc_cameraOld;

(findDisplay 46) displayAddEventHandler ["MouseButtonDown", "if (_this select 1 == 1) then {call mouseclickhint};"];

mouseclickhint = {
	
	['Rechtsklick beendet die Cam. Starte sie über Mausrad neu.'] call AGM_Core_fnc_displayTextStructured;
};