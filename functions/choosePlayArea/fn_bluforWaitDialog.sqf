#include "component.hpp"

if (!hasInterface) exitWith {};

[true,"OPFOR IS CHOOSING PLAYZONE","PLEASE WAIT"] call otf_ui_fnc_twoLineHint;

_isCommander = false;
if (!isNil "bluforcommander") then {_isCommander = (player == bluforcommander)};
[{missionNamespace getVariable ["otf_init_opforSpawnChosen",false]}, {
    if (_this) then {
        [true,"CHOOSE SPAWN (LMOUSE)","CONFIRM (ENTER)"] call otf_ui_fnc_twoLineHint;
    } else {
        [true,"COMMANDER IS CHOOSING SPAWN","PLEASE WAIT"] call otf_ui_fnc_twoLineHint;
    };
}, _isCommander] call CBA_fnc_waitUntilAndExecute;
