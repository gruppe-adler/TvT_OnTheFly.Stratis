#include "component.hpp"

if (!isServer) exitWith {};

[] call otf_init_fnc_saveTeammembers;

missionNamespace setVariable ["otf_init_gamestarted",true,true];
missionNamespace setVariable ["otf_init_gameStartTime",CBA_missionTime,true];

[[EAST],"BLUFOR SPAWNED","Game started."] remoteExec ["otf_common_fnc_sideNotification",0,false];
[["GradReplayAccuracy",3] call BIS_fnc_getParamValue] remoteExec ["grad_replay_fnc_init",0,true];

[{[] remoteExec ["otf_setup_fnc_resetBuildTimes",0,true]}, [], 300] call CBA_fnc_waitAndExecute;
