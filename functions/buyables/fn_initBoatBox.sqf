params ["_box","_type","_amount"];

_box setVariable ["otf_buyables_boatType",_type];
_box setVariable ["otf_buyables_boatsInBox",_amount];

[_box,1] call ace_cargo_fnc_setSize;

if (!hasInterface) exitWith {};

_onAction = {
    [_this select 0, _this select 1] remoteExec ["otf_buyables_fnc_unloadBoat",2,false];
};

_condition = {
    (_this select 0) getVariable ["otf_buyables_boatsInBox",0] > 0
};

_action = ["otf_spawnBoatAction", "Unload boat", "\A3\ui_f\data\igui\cfg\actions\unloadVehicle_ca.paa", _onAction, _condition] call ace_interact_menu_fnc_createAction;
[_box, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;
