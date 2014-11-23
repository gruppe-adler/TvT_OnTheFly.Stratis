// global options
TROPENTARN = false;

// spawn teleports done?
OPFOR_TELEPORTED = false;
BLUFOR_TELEPORTED = false;
firstspawn = false;

setTimeMultiplier (paramsArray select 5);


if (isServer) then {
	MISSION_COMPLETED = false;
	publicVariable "MISSION_COMPLETED";
	bluforMarkerDrawn = false;
	publicVariable "bluforMarkerDrawn";
	RESTRICTED_VEHICLES = false;
	publicVariable "RESTRICTED_VEHICLES";

};

// restriction of vehicles for blufor
if ((paramsArray select 1) == 0) then {
	RESTRICTED_VEHICLES = true;
	publicVariable "RESTRICTED_VEHICLES";
};

// tropentarn or flecktarn?
if ((paramsArray select 2) == 1) then {
	TROPENTARN = true;
	publicVariable "TROPENTARN";
};


blufor_spawnDistanceMin = (paramsArray select 3);
blufor_spawnDistanceMax = (paramsArray select 4);

// respawn helper object, will be moved to objective location in teleport.sqf
opfor_teleport = opfor_teamlead addAction["<t color=""#93E352"">" + "Spawnpunkt wählen",{[[[false], "mission_setup\teleport.sqf"],"BIS_fnc_execVM",true,true] spawn BIS_fnc_MP;  }, _Args, 1, false, true, "","_this == _target && !OPFOR_TELEPORTED"];
blufor_teleport = blufor_teamlead addAction["<t color=""#93E352"">" + "Spawnpunkt wählen",{[[[false], "mission_setup\teleport.sqf"],"BIS_fnc_execVM",true,true] spawn BIS_fnc_MP;  }, _Args, 1, false, true, "","_this == _target && !BLUFOR_TELEPORTED && OPFOR_TELEPORTED"];

call compile preprocessFileLineNumbers "plank\plank_init.sqf";				//Plank

enableSentences false;														//Autospotten

if (player == opfor_teamlead) then 												
{
[player, [0, 1, 3, 0, 0, 0, 0, 0, 3, 1]] call plank_deploy_fnc_init;
};

if (player == opfor_engi) then 												
{
[player, [1, 0, 3, 0, 0, 0, 0, 0, 3, 0]] call plank_deploy_fnc_init;
};

if (isServer) then { setDate [2035, 6, 24, (paramsArray select 0), 1]; };	//Zeit

[] execVM "objectives\detect_all_dead.sqf";

if ((isServer) || (isDedicated)) then {

respawn_helper = "Land_MetalBarrel_F" createVehicle [(getPos sector_trigger select 0),(getPos sector_trigger select 1),0];
[respawn_helper, false] call AGM_Drag_fnc_makeDraggable;

[] spawn {
		while {true} do {
			if ((OPFOR_TELEPORTED) && (BLUFOR_TELEPORTED)) then {

			_pos =  [(getPosATL respawn_helper select 0), (getPosATL respawn_helper select 1), 0];
			sector_trigger setPosATL _pos;
			["sector_moduleWEST", _pos] call BIS_fnc_taskSetDestination;
			sleep 1;
			};
		};
	};
};


// loadout call - giving each unit the appropriate sqf file
if !(isDedicated) then { 
[] execVM "loadouts\_client.sqf";
};