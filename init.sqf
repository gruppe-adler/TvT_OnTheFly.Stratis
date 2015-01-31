if (OPFOR_TELEPORTED) then {
	[player] execVM "onPlayerRespawn.sqf";
	[localize "str_GRAD_jip"] call AGM_Core_fnc_displayTextStructured;
};
addOnsSMAandHLC = false;

// SMA + HLC support off = false
if ((paramsArray select 6) == 0) then {
	addOnsSMAandHLC = true;
} else {
	addOnsSMAandHLC = false;
};


// global options
TROPENTARN = false;

// spawn teleports done?
OPFOR_TELEPORTED = false;
BLUFOR_TELEPORTED = false;
WINCONDITIONOPFOR = false;
WINCONDITIONBLUFOR = false;
firstspawn = false;

EDITOR_MODE = false; // check if test is in editor/singleplayer
if (!isMultiplayer) then {
	EDITOR_MODE = true;
	{_x disableAI "MOVE"} forEach allUnits;
};

if (isServer) then {
	setTimeMultiplier (paramsArray select 5);

	BLUFOR_CAPTURED = false;
	publicVariable "BLUFOR_CAPTURED";
	MISSION_COMPLETED = false;
	publicVariable "MISSION_COMPLETED";
	bluforMarkerDrawn = false;
	publicVariable "bluforMarkerDrawn";
	RESTRICTED_VEHICLES = false;
	publicVariable "RESTRICTED_VEHICLES";
	BLUFOR_SURRENDERED = false;
	publicVariable "BLUFOR_SURRENDERED";
	END_MISSION_TRIGGERED = false;
	publicVariable "END_MISSION_TRIGGERED";
	SPECTATOR_LIST = [];
	publicVariable "SPECTATOR_LIST";

	

};

if (!isServer) then {
// restriction of vehicles for blufor
if ((paramsArray select 1) == 0) then {
	RESTRICTED_VEHICLES = true;
};

// tropentarn or flecktarn?
if ((paramsArray select 2) == 1) then {
	TROPENTARN = true;
};
};



blufor_spawnDistanceMin = (paramsArray select 3);
blufor_spawnDistanceMax = (paramsArray select 4);

// respawn helper object, will be moved to objective location in teleport.sqf
opfor_teleport = opfor_teamlead addAction["<t color=""#93E352"">" + localize "str_GRAD_choose_spawn_location",{[[[false], "mission_setup\teleport.sqf"],"BIS_fnc_execVM",true,true] spawn BIS_fnc_MP;  }, _Args, 1, false, true, "","_this == _target && !OPFOR_TELEPORTED"];
blufor_teleport = blufor_teamlead addAction["<t color=""#93E352"">" + localize "str_GRAD_choose_spawn_location",{[[[false], "mission_setup\teleport.sqf"],"BIS_fnc_execVM",true,true] spawn BIS_fnc_MP;  }, _Args, 1, false, true, "","_this == _target && !BLUFOR_TELEPORTED && OPFOR_TELEPORTED"];

call compile preprocessFileLineNumbers "plank\plank_init.sqf";				//Plank
cameraOldPimped = compile preprocessFile "spectator\cameraOld_rip.sqf";	
cameraNewPimped = compile preprocessFile "spectator\camera_rip.sqf";	

enableSentences false;														//Autospotten

//abfangen ob slot belegt und dann ausführen der jeweiligen scripte
if (!isNil "opfor_teamlead") then {
	if (player == opfor_teamlead) then 												
	{
		[opfor_teamlead] execVM "mission_setup\callPlank.sqf";
	};
};


if (!isNil "opfor_engi") then {
	if (player == opfor_engi) then 												
	{
		[opfor_engi] execVM "mission_setup\callPlank.sqf";
	};
};

if (isServer) then { setDate [2035, 6, 24, (paramsArray select 0), 1]; };	//Zeit

if ((isServer) || (isDedicated)) then {

	[] execVM "objectives\detect_all_dead.sqf";
	[extraweapons_opfor] execVM "loadouts\extraweapons_opfor.sqf";
	[extraweapons_blufor] execVM "loadouts\extraweapons_blufor.sqf";
	

	respawn_helper = "Land_MetalBarrel_F" createVehicle [(getPos sector_trigger select 0),(getPos sector_trigger select 1),0];
	[respawn_helper, false] call AGM_Drag_fnc_makeDraggable;

	[] spawn {
		while {true} do {
			if ((OPFOR_TELEPORTED) && (BLUFOR_TELEPORTED)) then {

				if (getPos respawn_helper select 0 < -900) then {
					sector_trigger setPos (getPos opfor_vehicle);
					["sector_moduleWEST", getPos opfor_vehicle] call BIS_fnc_taskSetDestination;
					sleep 1;

				} else 
				{
					_pos =  [(getPos respawn_helper select 0), (getPos respawn_helper select 1), 0];
					sector_trigger setPos _pos;
					["sector_moduleWEST", _pos] call BIS_fnc_taskSetDestination;
					sleep 1;
				};
			};
		};
	};
};
// call this on server too - because of whiteboard/truck
[] execVM "mission_setup\adjustInitialSpawnPosition.sqf";
// loadout call - giving each unit the appropriate sqf file
[arsenal_blufor] execVM "loadouts\virtual_arsenal_init_blufor.sqf";
[arsenal_opfor] execVM "loadouts\virtual_arsenal_init_opfor.sqf";
if !(isDedicated) then { 
	[] execVM "mission_setup\helpBriefing.sqf";
	[] execVM "mission_setup\surrenderAction.sqf";
	["Preload"] call BIS_fnc_arsenal;

	
	if (addOnsSMAandHLC) then {
		[] execVM "loadouts\_client.sqf";
	};
	


	// Intro Gruppe Adler   

	titleCut ["", "BLACK FADED", 999]; 
	[] Spawn {

	titleText ["","PLAIN"]; 
	titleFadeOut 1;
	sleep 2;

	titleCut ["", "BLACK IN", 1];

	waitUntil {time > 3};
		["<img size= '6' shadow='false' image='pic\gruppe-adler.paa'/><br/><t size='.9' color='#FFFFFF'>TvT@OnTheFly</t>",0,0,2,2] spawn BIS_fnc_dynamicText;
	};

};

AUSMD_markers = [];
{_x addeventHandler ["Hit",{nul = [_this select 1,_this select 0] execVM "after_action_reporter\combat_engaged.sqf";}]} foreach allUnits;

{if(leader (group _x) == _x) then {nul = [_x] execVM "after_action_reporter\movement.sqf";};} foreach allUnits;
{nul = [_x] execVM "after_action_reporter_pimped\movement.sqf";} foreach allUnits;