_position = _this select 0;
_vehicle = _this select 1;
_side = _this select 2;
_centre = [ _position, random 5 , random 360 ] call BIS_fnc_relPos;
_centre2 = [ _position, random 30 , random 360 ] call BIS_fnc_relPos;
_centre3 = [ _position, random 200 , random 360 ] call BIS_fnc_relPos;
_centre4 = [ _position, random 200 , random 360 ] call BIS_fnc_relPos;
_centre5 = [ _position, random 200 , random 360 ] call BIS_fnc_relPos;
_centre6 = [ _position, random 200 , random 360 ] call BIS_fnc_relPos;
_spawn_area = [];
_spawn_area2 = [];
_max_distance = 50;
_min_distance_items = 5;
_max_distance_items = 20;
_vehicle_classname_mortar = "O_G_Mortar_01_F";

if (isDedicated) exitWith {};

if (player == blufor_teamlead) then {
	
	while{ count _spawn_area < 1 } do
		{
		    _spawn_area = _centre findEmptyPosition[ 10 , _max_distance , "B_Truck_01_transport_F" ];
		    _max_distance = _max_distance + 10;
		};

blufor_vehicle = _vehicle createVehicle _spawn_area;

if (side player == west) then {["Vehicle spawned."] call AGM_Core_fnc_displayTextStructured;};
	player removeAction createVehicleHEMTT; 
	if (RESTRICTED_VEHICLES) exitWith {};
	player removeAction createVehicleLittlebird;
};

if (player == opfor_teamlead) then {["Vehicle spawned."] call AGM_Core_fnc_displayTextStructured;
	player removeAction createVehicleTransport; 
	
	if (!RESTRICTED_VEHICLES) then {
	player removeAction createVehicleTactical;
	player removeAction createVehicleMortar;
	};

	while{ count _spawn_area < 1 } do
		{
		    _spawn_area = _centre findEmptyPosition[ 10 , _max_distance , "B_Truck_01_transport_F" ];
		    _max_distance = _max_distance + 10;
		};

	if (_vehicle == "mortar") exitWith {
		while{ count _spawn_area2 < 1 } do
		{
		    _spawn_area2 = _centre2 findEmptyPosition[ _min_distance_items , _max_distance_items , "O_G_Mortar_01_F" ];
		    _max_distance_items = _max_distance_items + 10;
		};
	opfor_vehicle = _vehicle_classname_mortar createVehicle _spawn_area2;
	opfor_vehicle setVehicleAmmo 0.1;
	};
	
	opfor_vehicle = _vehicle createVehicle _spawn_area;
	
	sleep 0.1;

	opfor_vehicle setFuel 0;
	if (_vehicle == "I_G_Offroad_01_armed_F") then {
	opfor_vehicle setVehicleAmmo 0.2;
	};


	while{ count _spawn_area2 < 1 } do
		{
		    _spawn_area2 = _centre2 findEmptyPosition[ _min_distance_items , _max_distance_items , "AGM_JerryCan" ];
		    _max_distance_items = _max_distance_items + 10;
		};
	_jerrycan1 = "AGM_JerryCan" createVehicle _spawn_area2;

};