vehicle_position = _this select 0;

player removeAction choose_vehicle_opfor; 

vehicle_classname_transport = "I_G_Van_01_transport_F";
vehicle_classname_tactical = "I_G_Offroad_01_armed_F";

 createVehicleTransport = opfor_teamlead addAction["<t color=""#93E352"">" + "Spawn Transporter",
 {[vehicle_position,vehicle_classname_transport,east] execVM "mission_setup\spawnVehicle.sqf";}, _Args, 1, false, true, "","_this == _target"];

if (RESTRICTED_VEHICLES) exitWith {};

 createVehicleTactical = opfor_teamlead addAction["<t color=""#93E352"">" + "Spawn Tactical",
 {[vehicle_position,vehicle_classname_tactical,east] execVM "mission_setup\spawnVehicle.sqf";}, _Args, 1, false, true, "","_this == _target"];
