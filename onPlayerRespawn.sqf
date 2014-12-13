_unit = _this select 0;

if (!firstspawn) exitWith {firstspawn = true;};

if (!local _unit) exitWith {};

if (winConditionOpfor || winConditionBlufor || BLUFOR_CAPTURED || BLUFOR_SURRENDERED) exitWith {
	pos = getPos whiteboard;
	_emptyPosition_unit = pos  findEmptyPosition [5,100];
	player setPos _emptyPosition_unit;
	if (!isNil "BIS_DEBUG_CAM") then {BIS_DEBUG_CAM = null;};  
};


removeAllWeapons player:
removeAllActions player;
// join civilian side, because end trigger relies on side
[_unit] joinSilent (createGroup civilian);
// set position above objective


_unit addAction["<t color='#d18d1f'>Activate Spectator Cam</t> (right click to exit)","spectator\callSpectator.sqf", _Args, 1, false, false, "","_this == _target || _this in _target"];

sleep 0.1;
_unit moveInCargo spectator_vehicle;
// start spec cam
[_unit] execVM "spectator\callSpectator.sqf";

(findDisplay 46) displayAddEventHandler ["MouseButtonDown", "if (_this select 1 == 1) then {call mouseclickhint};"];

mouseclickhint = {
	
	['Rechtsklick beendet die Cam. Starte sie über Mausrad neu.'] call AGM_Core_fnc_displayTextStructured;
};