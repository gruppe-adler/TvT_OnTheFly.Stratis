#include "component.hpp"

params ["_entry",["_default",-1]];

private _cfg = missionConfigFile >> "CfgIslands" >> worldName;
if (!isClass _cfg) exitWith {ERROR_1("Config for island %1 not found.", worldName); _default};

private _return = [_cfg,_entry,_default] call BIS_fnc_returnConfigEntry;

if (_return isEqualType "" && {_return == "true"}) then {_return = true};

_return
