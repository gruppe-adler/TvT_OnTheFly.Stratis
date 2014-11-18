_unit = _this select 0;

if (!firstspawn) exitWith{firstspawn = true;};
removeHeadgear _unit:
removeGoggles _unit;
removeVest _unit;
removeBackpack _unit;
removeUniform _unit;
removeAllWeapons _unit:
removeAllAssignedItems _unit;

// join civilian side, because end trigger relies on side
[player] joinSilent (createGroup civilian);
// set position above objective
_unit attachTo [respawn_helper,[0,0,200]];
// make invisible
hideObjectGlobal _unit;

_unit addAction ["<t color='#d18d1f'>Activate Spectator Cam</t> (right click to exit)", "spectator\callSpectator.sqf"];
// make floating
// start spec cam
[player] call BIS_fnc_cameraOld;