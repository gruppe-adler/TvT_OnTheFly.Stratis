#include "component.hpp"

if (!isServer) exitWith {};

[] call otf_init_fnc_saveTeammembers;

missionNamespace setVariable ["otf_init_gamestarted",true,true];
missionNamespace setVariable ["otf_init_gameStartTime",CBA_missionTime,true];

[[EAST],"BLUFOR SPAWNED","Game started."] remoteExec ["otf_common_fnc_sideNotification",0,false];

[{[] remoteExec ["otf_setup_fnc_resetBuildTimes",0,true]}, [], 300] call CBA_fnc_waitAndExecute;
