vehicle_position = _this select 0;

player removeAction choose_vehicle_blufor; 

vehicle_classname_hemtt = "B_Truck_01_covered_F";
vehicle_classname_littlebird = "B_Heli_Light_01_F";

 createVehicleHEMTT = blufor_teamlead addAction["<t color=""#93E352"">" + "Spawn HEMTT",
 {[[[vehicle_position,vehicle_classname_hemtt,west], "mission_setup\spawnVehicle.sqf"],"BIS_fnc_execVM",true,true] spawn BIS_fnc_MP;  }, _Args, 1, false, true, "","_this == _target"];

if (RESTRICTED_VEHICLES) exitWith {};

 createVehicleLittlebird = blufor_teamlead addAction["<t color=""#93E352"">" + " SpawnLittlebird",
 {[[[vehicle_position,vehicle_classname_littlebird,west], "mission_setup\spawnVehicle.sqf"],"BIS_fnc_execVM",true,true] spawn BIS_fnc_MP;  }, _Args, 1, false, true, "","_this == _target"];