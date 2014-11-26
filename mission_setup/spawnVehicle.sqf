_position = _this select 0;
_vehicle = _this select 1;

if (player == blufor_teamlead) then {
	_centre = [ pos, random 5 , random 360 ] call BIS_fnc_relPos;
	_spawn_area = [];
	_max_distance = 50;
	while{ count _spawn_area < 1 } do
		{
		    _spawn_area = _centre findEmptyPosition[ 10 , _max_distance , "B_Truck_01_transport_F" ];
		    _max_distance = _max_distance + 10;
		};

_veh1 = _vehicle createVehicle _spawn_area;

if (side player == west) then {["Vehicle spawned."] call AGM_Core_fnc_displayTextStructured;};

player removeAction createVehicleHEMTT; 

if (RESTRICTED_VEHICLES) exitWith {};

player removeAction createVehicleLittlebird;

};