#include "component.hpp"

if (!isServer) exitWith {};

private _target = [] call otf_setup_fnc_targetObject;
[] call otf_setup_fnc_playZoneMarkers;
[] call otf_setup_fnc_createTasks;
[_target] call otf_setup_fnc_createTrigger;

[_target] remoteExec ["otf_objectives_fnc_drawTargetOnMap",0,_target];

missionNamespace setVariable ["otf_setup_playZoneSetupDone",true,true];
