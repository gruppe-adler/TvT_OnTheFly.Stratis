vehicle_position = _this select 0;

removeAllActions blufor_teamlead;

vehicle_classname_hemtt = "B_Truck_01_covered_F";
//vehicle_classname_littlebird = "B_Heli_Light_01_F";

if (TROPENTARN) then {
	vehicle_classname_littlebird = "MH6_Tropentarn";
} else {
	vehicle_classname_littlebird = "MH6_Flecktarn";
};

vehicle_classname_apc = "B_APC_Tracked_01_CRV_F";

if (RESTRICTED_VEHICLES) exitWith {
 createVehicleHEMTT = blufor_teamlead addAction["<t color=""#93E352"">" + "Spawn HEMTT",
 {[vehicle_position,vehicle_classname_hemtt,west] execVM "mission_setup\spawnVehicle.sqf";}, _Args, 1, false, true, "","_this == _target"];

 createVehicleLittlebird = blufor_teamlead addAction["<t color=""#93E352"">" + "Spawn Littlebird",
 {[vehicle_position,vehicle_classname_littlebird,west] execVM "mission_setup\spawnVehicle.sqf";}, _Args, 1, false, true, "","_this == _target"];

};

createVehicleAPC = blufor_teamlead addAction["<t color=""#93E352"">" + "Spawn APC",
{[vehicle_position,vehicle_classname_apc,west] execVM "mission_setup\spawnVehicle.sqf";}, _Args, 1, false, true, "","_this == _target"];


 
