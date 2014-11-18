_unit = _this select 0;

if (!firstspawn) exitWith{firstspawn = true;};

_unit setPos [getPos sector_trigger select 0, getPos sector_trigger select 1, 200];
hideObjectGlobal _unit;
_unit enablesimulation false;
[player] call BIS_fnc_cameraOld;
_unit addAction ["<t color='#d18d1f'>Activate Spectator Cam</t> (right click to exit)", {[player] call BIS_fnc_cameraOld;}];