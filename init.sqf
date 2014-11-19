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
 ["B_soldier_AR_F", "blufor_mggunner"],
 ["O_medic_F", "opfor_medic"],
 ["O_recon_medic_F", "opfor_medic"],
 ["O_soldierU_medic_F", "opfor_medic"],
 ["O_G_medic_F", "opfor_medic"],
 ["O_G_Soldier_M_F", "opfor_m14"],
 ["O_soldier_M_F", "opfor_m14"],
 ["O_recon_M_F", "opfor_m14"],
 ["O_soldierU_M_F", "opfor_m14"],
 ["O_G_Soldier_AR_F", "opfor_pkm"],
 ["O_Soldier_AR_F", "opfor_pkm"],
 ["O_soldierU_AR_F", "opfor_pkm"],
 ["O_Soldier_AAR_F", "opfor_pkm"],
 ["O_soldierU_AAR_F", "opfor_pkm"],
 ["O_G_Soldier_TL_F", "opfor_l1a1"],
 ["O_soldierU_F", "opfor_l1a1"],
 ["O_Soldier_TL_F", "opfor_l1a1"],
 ["O_recon_TL_F", "opfor_l1a1"],
 ["O_soldierU_TL_F", "opfor_l1a1"],
 ["O_G_officer_F", "opfor_l1a1"],
 ["O_officer_F", "opfor_l1a1"],
 ["O_Soldier_TL_F", "opfor_l1a1"],
 ["O_recon_TL_F", "opfor_l1a1"],
 ["O_soldierU_TL_F", "opfor_l1a1"],
 ["O_G_Soldier_GL_F", "opfor_akfamily"],
 ["O_Soldier_GL_F", "opfor_akfamily"],
 ["O_SoldierU_GL_F", "opfor_akfamily"],
 ["O_G_Soldier_F", "opfor_akfamily"],
 ["O_G_Soldier_lite_F", "opfor_akfamily"],
 ["O_Soldier_F", "opfor_akfamily"],
 ["O_Soldier_lite_F", "opfor_akfamily"],
 ["O_soldierU_F", "opfor_akfamily"],
 ["O_soldierU_A_F", "opfor_akfamily"],
 ["O_G_Soldier_A_F", "opfor_akfamily"],
 ["O_Soldier_A_F", "opfor_akfamily"]
 
] execVM "loadouts\autoloadouts.sqf";

// spawn distances from objective min/max
if ((paramsArray select 1) == 0) then {
	RESTRICTED_VEHICLES = true;
	publicVariable "RESTRICTED_VEHICLES";
};

blufor_spawnDistanceMin = (paramsArray select 2);
blufor_spawnDistanceMax = (paramsArray select 3);

// respawn helper object, will be moved to objective location in teleport.sqf
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

if (isServer || isDedicated) then {

respawn_helper = "Land_MetalBarrel_F" createVehicle [(getPos sector_trigger select 0),(getPos sector_trigger select 1),0];
[respawn_helper, false] call AGM_Drag_fnc_makeDraggable;

[] spawn {
		while {true} do {
			if ((OPFOR_TELEPORTED) && (BLUFOR_TELEPORTED)) then {

			_pos =  [(getPosATL respawn_helper select 0), (getPosATL respawn_helper select 1), 0];
			sector_trigger setPosATL _pos;
			["sector_moduleWEST", pos] call BIS_fnc_taskSetDestination;
			sleep 1;
			};
		};
	};
};