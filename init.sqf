// global options
TROPENTARN = true;

// spawn teleports done?
OPFOR_TELEPORTED = false;
BLUFOR_TELEPORTED = false;
firstspawn = false;


if (isServer) then {
	MISSION_COMPLETED = false;
	publicVariable "MISSION_COMPLETED";
	bluforMarkerDrawn = false;
	publicVariable "bluforMarkerDrawn";
	RESTRICTED_VEHICLES = false;
	publicVariable "RESTRICTED_VEHICLES";

};


// loadout call - giving each unit the appropriate sqf file
// B_Soldier_SL_F = NATO SQUADLEADER
//
[

 ["B_Soldier_SL_F", "blufor_squadleader"],
 ["B_soldier_AR_F", "blufor_mggunner"]

] execVM "loadouts\autoloadouts.sqf";

// spawn distances from objective min/max
if ((paramsArray select 1) == 0) then {
	RESTRICTED_VEHICLES = true;
	publicVariable "RESTRICTED_VEHICLES";
};

blufor_spawnDistanceMin = (paramsArray select 2);
blufor_spawnDistanceMax = (paramsArray select 3);

opfor_teleport = opfor_teamlead addAction["<t color=""#93E352"">" + "Spawnpunkt wählen",{[[[false], "mission_setup\teleport.sqf"],"BIS_fnc_execVM",true,true] spawn BIS_fnc_MP;  }, _Args, 1, false, true, "","_this == _target && !OPFOR_TELEPORTED"];
blufor_teleport = blufor_teamlead addAction["<t color=""#93E352"">" + "Spawnpunkt wählen",{[[[false], "mission_setup\teleport.sqf"],"BIS_fnc_execVM",true,true] spawn BIS_fnc_MP;  }, _Args, 1, false, true, "","_this == _target && !BLUFOR_TELEPORTED && OPFOR_TELEPORTED"];

call compile preprocessFileLineNumbers "plank\plank_init.sqf";				//Plank

enableSentences false;														//Autospotten

if (side player == east) then 												
{
[player, [0, 0, 1, 0, 1, 0, 0, 0, 1, 1]] call plank_deploy_fnc_init;
};

if (isServer) then { setDate [2035, 6, 24, (paramsArray select 0), 1]; };	//Zeit

[] execVM "objectives\detect_all_dead.sqf";