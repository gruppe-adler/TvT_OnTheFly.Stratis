#include "component.hpp"

if (!isServer) exitWith {};

private _target = [] call otf_setup_fnc_targetObject;
[] call otf_setup_fnc_playZoneMarkers;
[] call otf_setup_fnc_createTasks;
[_target] call otf_setup_fnc_createTrigger;

missionNamespace setVariable ["otf_setup_playZoneSetupDone",true,true];
