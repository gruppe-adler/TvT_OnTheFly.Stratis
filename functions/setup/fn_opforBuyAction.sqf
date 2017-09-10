#include "component.hpp"

params ["_targetObj","_case"];

if (!hasInterface) exitWith {};
if (isNil "_targetObj") exitWith {};
if (isNull _targetObj) exitWith {};

[{
    params ["_targetObj","_case"];

    [_targetObj,"opf_" + OTF_OPFORFACTION,_case,_targetObj,"BARREL SHOP","Buy Equipment", {side (_this select 1) == EAST && alive (_this select 0)}] call grad_lbm_fnc_addInteraction;
}, _this, 2] call CBA_fnc_waitAndExecute;
