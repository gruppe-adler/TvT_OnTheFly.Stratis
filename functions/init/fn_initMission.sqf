#include "component.hpp"

[] call otf_init_fnc_setMissionParams;
[] call otf_init_fnc_setIslandParams;
[] call otf_init_fnc_pubVars;
[] call otf_groupsettings_fnc_setGroupSettings;

[{!isNull player || isDedicated},{

    [] call otf_init_fnc_moveToInitPos;

    //setup on mission start
    [{missionNamespace getVariable ["otf_init_missionParamsDone", false]}, {
        [] call otf_init_fnc_setLoadoutFaction;
        [] call otf_setup_fnc_setTime;
        [] call otf_setup_fnc_setWeather;
        [] call otf_setup_fnc_setMapRespawnPos;
    }, []] call CBA_fnc_waitUntilAndExecute;

    //auto choose spawns if commanders are not available
    [otf_choosePlayArea_fnc_autoChooseOpforSpawn, [], 10] call CBA_fnc_waitAndExecute;
    [{missionNamespace getVariable ["otf_setup_playZoneSetupDone", false]}, {[otf_choosePlayArea_fnc_autoChooseBluforSpawn, [], 10] call CBA_fnc_waitAndExecute}, []] call CBA_fnc_waitUntilAndExecute;

    //choose play area dialogs
    [{missionNamespace getVariable ["otf_init_pubVarsDone", false]}, {
        [] call otf_choosePlayArea_fnc_chooseOpforSpawn;
        [] call otf_choosePlayArea_fnc_chooseBluforSpawn;
        [] call otf_setup_fnc_setMoney;
        [] call otf_setup_fnc_setRandomFortifications;
    }, []] call CBA_fnc_waitUntilAndExecute;

    //setup play area, spawn target, create markers, tasks
    [{missionNamespace getVariable ["otf_init_opforSpawnChosen", false]}, {
        [] call otf_setup_fnc_playZone;
    }, []] call CBA_fnc_waitUntilAndExecute;

    //exit JIP
    if (hasInterface && didJIP && missionNamespace getVariable ["otf_init_gamestarted", false] && {(playerSide in [EAST,WEST])}) exitWith {player allowDamage true; player setDamage 1};
    if (hasInterface && didJIP) then {[player] remoteExec ["otf_common_fnc_addToZeus",2,false]};

    //log
    if (isServer) then {[{["PRINT", "SERVER_SETUP"] call otf_common_fnc_diagReport}, [], 15] call CBA_fnc_waitAndExecute};

    //teleport opfor
    [{missionNamespace getVariable ["otf_setup_playZoneSetupDone", false]}, {
        [EAST] call otf_setup_fnc_teleportSide;
    }, []] call CBA_fnc_waitUntilAndExecute;

    //create commandvehicle
    [{missionNamespace getVariable ["otf_init_bluforSpawnChosen", false] && {!(OTF_BLUFORSPAWNPOS isEqualTo [0,0,0])}}, {
        [] call otf_setup_fnc_createCommandVehicle;
    }, []] call CBA_fnc_waitUntilAndExecute;

    //teleport blufor
    [{missionNamespace getVariable ["otf_setup_cvCreated", false]}, {
        [WEST] call otf_setup_fnc_teleportSide;
        [{[] call otf_setup_fnc_startGame}, [], 10] call CBA_fnc_waitAndExecute;
    }, []] call CBA_fnc_waitUntilAndExecute;


    //start game
    [{missionNamespace getVariable ["otf_init_gamestarted", false]}, {
        [] call otf_objectives_fnc_checkBluKilled;
        [] call otf_objectives_fnc_checkOpfKilled;
        [] call otf_objectives_fnc_checkCapture;
        [] call otf_objectives_fnc_endMission;
    }, []] call CBA_fnc_waitUntilAndExecute;

}, []] call CBA_fnc_waitUntilAndExecute;
