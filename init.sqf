if (OPFOR_TELEPORTED) then {
	[player] execVM "onPlayerRespawn.sqf";
	["Sorry, you joined too late. Spectate & enjoy!"] call AGM_Core_fnc_displayTextStructured;
};

// global options
TROPENTARN = false;

// spawn teleports done?
OPFOR_TELEPORTED = false;
BLUFOR_TELEPORTED = false;
firstspawn = false;

EDITOR_MODE = false; // check if test is in editor/singleplayer
if (!isMultiplayer) then {
	EDITOR_MODE = true;
};

player setVariable ["dontHaveLoadout",true];
loadoutNotfallSchalter = player addAction["<t color=""#93E352"">" + "Loadout setzen",{[[[], "loadouts\_client.sqf"],"BIS_fnc_execVM",player,false] spawn BIS_fnc_MP;  }, _Args, 1, false, true, "","_this == _target && _this getVariable 'dontHaveLoadout'"];


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

	respawn_helper = "Land_MetalBarrel_F" createVehicle [(getPos sector_trigger select 0),(getPos sector_trigger select 1),0];
	[respawn_helper, false] call AGM_Drag_fnc_makeDraggable;

	[] spawn {
		while {true} do {
			if ((OPFOR_TELEPORTED) && (BLUFOR_TELEPORTED)) then {

				if (getPos respawn_helper select 0 < -900) then {
					sector_trigger setPos getPos opfor_vehicle;
					["sector_moduleWEST", getPos opfor_vehicle] call BIS_fnc_taskSetDestination;

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
if !(isDedicated) then { 
	[] execVM "mission_setup\helpBriefing.sqf";
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

#include "\task_force_radio\functions\common.sqf";

if ((isServer) or (isDedicated)) then {
tf_no_auto_long_range_radio = true;
publicVariable "tf_no_auto_long_range_radio";
tf_same_sw_frequencies_for_side = true;
publicVariable "tf_same_sw_frequencies_for_side";
tf_same_lr_frequencies_for_side = true;
publicVariable "tf_same_lr_frequencies_for_side";

_settingsSwWest = false call TFAR_fnc_generateSwSettings;
_settingsSwWest set [2, ["311","312","313","314","315","316","317","318 "]];
tf_freq_west = _settingsSwWest;

_settingsSwEast = false call TFAR_fnc_generateSwSettings;
_settingsSwEast set [2, ["311","312","313","314","315","316","317","318 "]];
tf_freq_east = _settingsSwEast;

};

AUSMD_markers = [];
{_x addeventHandler ["Hit",{nul = [_this select 1,_this select 0] execVM "after_action_reporter\combat_engaged.sqf";}]} foreach allUnits;

{if(leader (group _x) == _x) then {nul = [_x] execVM "after_action_reporter\movement.sqf";};} foreach allUnits;