vehicle_position = _this select 0;

player removeAction choose_vehicle; 

// add littlebird to action menu
littleBird = player addaction ["<t color=""#93E352"">" + "Littlebird",{
_position = vehicle_position findEmptyPosition [20,100,"B_Heli_Light_01_F"];
_veh1 = "B_Heli_Light_01_F" createVehicle _position;
if (side player == west) then {["Littlebird gespawned."] call AGM_Core_fnc_displayTextStructured;};

player removeAction littleBird; player removeAction HEMTT;
}];

// add hemtt to action menu
HEMTT = player addaction ["<t color=""#93E352"">" + "HEMTT",{
_position = vehicle_position findEmptyPosition [20,100,"B_Truck_01_covered_F"];
_veh2 = "B_Truck_01_covered_F" createVehicle _position;

if (side player == west) then {["HEMTT gespawned."] call AGM_Core_fnc_displayTextStructured;};

player removeAction littleBird; player removeAction HEMTT;	
}];