_player_action = _this select 0;
vehicle_position = getPos player;



vehicle_classname_transport = "I_G_Van_01_transport_F";
vehicle_classname_tactical = "I_G_Offroad_01_armed_F";
vehicle_classname_mortar = "O_G_Mortar_01_F";
vehicle_classname_littlebird = "B_Heli_Light_01_F";
vehicle_classname_hemtt = "B_Truck_01_covered_F";

if (player == opfor_teamlead) then {
	player removeAction choose_vehicle_opfor; 
	 createVehicleTransport = opfor_teamlead addAction["<t color=""#93E352"">" + "Spawn Transporter",
	 {[vehicle_position,vehicle_classname_transport,east] execVM "mission_setup\spawnVehicle.sqf";}, _Args, 1, false, true, "","_this == _target"];

	if (RESTRICTED_VEHICLES) exitWith {};

	 createVehicleTactical = opfor_teamlead addAction["<t color=""#93E352"">" + "Spawn Tactical",
	 {[vehicle_position,vehicle_classname_tactical,east] execVM "mission_setup\spawnVehicle.sqf";}, _Args, 1, false, true, "","_this == _target"];

	 createVehicleMortar = opfor_teamlead addAction["<t color=""#93E352"">" + "Spawn Mortar",
	 {[vehicle_position,vehicle_classname_mortar,east] execVM "mission_setup\spawnVehicle.sqf";}, _Args, 1, false, true, "","_this == _target"];
};

if (player == blufor_teamlead) then {
	player removeAction choose_vehicle_blufor; 
	 createVehicleHEMTT = blufor_teamlead addAction["<t color=""#93E352"">" + "Spawn HEMTT",
 	{[vehicle_position,vehicle_classname_hemtt,west] execVM "mission_setup\spawnVehicle.sqf";}, _Args, 1, false, true, "","_this == _target"];

	if (RESTRICTED_VEHICLES) exitWith {};

 	createVehicleLittlebird = blufor_teamlead addAction["<t color=""#93E352"">" + "Spawn Littlebird",
 	{[vehicle_position,vehicle_classname_littlebird,west] execVM "mission_setup\spawnVehicle.sqf";}, _Args, 1, false, true, "","_this == _target"];
};