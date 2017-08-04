#include "component.hpp"

params ["_side", "_title", "_text", ["_condition",{true}]];

if (!hasInterface) exitWith {};
if (typeName _side != "ARRAY") then {_side = [_side]};
if (count _side == 0) then {_side = [east,west,independent,civilian]};
if !(side player in _side) exitWith {};
if !(call _condition) exitWith {};

["otf_notification",[_title,_text]] call bis_fnc_showNotification;
