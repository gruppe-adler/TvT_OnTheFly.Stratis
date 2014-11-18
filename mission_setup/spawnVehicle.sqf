_position = _this select 0;
_vehicle = _this select 1;

if (player == blufor_teamlead) then {

_spawnpos = _position findEmptyPosition [20,100,_vehicle];
_veh1 = _vehicle createVehicle _spawnpos;

if (side player == west) then {["Vehicle spawned."] call AGM_Core_fnc_displayTextStructured;};

player removeAction createVehicleHEMTT; 

if (RESTRICTED_VEHICLES) exitWith {};

player removeAction createVehicleLittlebird;

};