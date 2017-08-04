params ["_cv"];

if (!hasInterface) exitWith {};
if (isNil "_cv") exitWith {};
if (isNull _cv) exitWith {};

//buy action
[
    _cv,
    "blu_" + OTF_BLUFORFACTION,
    _cv,
    _cv,
    "COMMANDVEHICLE",
    "Buy equipment",
    {side (_this select 1) == WEST && alive (_this select 0)}
] call grad_lbm_fnc_addInteraction;
