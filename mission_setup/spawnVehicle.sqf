_position = _this select 0;
_vehicle = _this select 1;
_side = _this select 2;
_centre = [ _position, random 1 , random 360 ] call BIS_fnc_relPos;
_centre2 = [ _position, random 30 , random 360 ] call BIS_fnc_relPos;
_spawn_area = [];
_spawn_area2 = [];
_max_distance = 50;
_min_distance_items = 5;
_max_distance_items = 20;

if (isDedicated) exitWith {};

// BLUFOR SPAWNS
if (_side == west) then {
	
	// SPAWN BLUFOR VEHICLE
	//while{ count _spawn_area < 1} do
	//	{
	//	    _spawn_area = _centre findEmptyPosition[ 10 , _max_distance , _vehicle ];
	//	    _max_distance = _max_distance + 10;
	//	};
	while{ count _spawn_area < 1} do {
	_spawn_area = [_centre,5,_max_distance,3,0,0,0] call BIS_fnc_findSafePos;
	_max_distance = _max_distance + 10;
	};
	
	_blufor_vehicle = _vehicle createVehicle _spawn_area;


	// REMOVE SPAWN ACTIONS
	
	if (_vehicle == "Leopard_2A6_Fleck" || _vehicle == "Leopard_2A6_Tarn" || _vehicle == "B_MBT_01_TUSK_F") exitWith {
		player removeAction createVehicleMBT;
		if (!IS_VANILLA) then {
			[localize "str_GRAD_vehicleSpawned"] call AGM_Core_fnc_displayTextStructured;
		} else {
			hintSilent format [localize "str_GRAD_vehicleSpawned"];
		};
		sleep 0.1;
		_blufor_vehicle disableTIEquipment true;
		[[[_spawn_area,_side,2],"mission_setup\vehiclespawn_marker.sqf"],"BIS_fnc_execVM",true,true] spawn BIS_fnc_MP;
		};

	player removeAction createVehicleHEMTT;
	player removeAction createVehicleLittlebird;
	if (!IS_VANILLA) then {
			[localize "str_GRAD_vehicleSpawned"] call AGM_Core_fnc_displayTextStructured;
		} else {
			hintSilent format [localize "str_GRAD_vehicleSpawned"];
		};
	[[[_spawn_area,_side,1],"mission_setup\vehiclespawn_marker.sqf"],"BIS_fnc_execVM",true,true] spawn BIS_fnc_MP;

	
	
	
};


// OPFOR SPAWNS
if (_side == east) then {
	
	// SPAWN MORTAR
	if (_vehicle == "O_G_Mortar_01_F") exitWith {
		while{ count _spawn_area2 < 1} do {
		_spawn_area2 = [_centre2,5,_max_distance,3,0,0,0] call BIS_fnc_findSafePos;
		_max_distance = _max_distance + 10;
		};
		[[[_spawn_area2,_side,1],"mission_setup\vehiclespawn_marker.sqf"],"BIS_fnc_execVM",true,true] spawn BIS_fnc_MP;
		opfor_vehicle = _vehicle createVehicle _spawn_area2;
		opfor_vehicle setVehicleAmmo 0.1;
		if (!IS_VANILLA) then {
			[localize "str_GRAD_mortarSpawned"] call AGM_Core_fnc_displayTextStructured;
		} else {
			hintSilent format [localize "str_GRAD_mortarSpawned"];
		};
		
		player removeAction createVehicleTransport; 
		player removeAction createVehicleTactical;
		player removeAction createVehicleMortar;
	};

	if (_vehicle == "box_nato_wpslaunch_f") exitWith {
		while{ count _spawn_area < 1} do {
		_spawn_area = [_centre,5,_max_distance,3,0,0,0] call BIS_fnc_findSafePos;
		_max_distance = _max_distance + 10;
		};
		
		opfor_box = _vehicle createVehicle _spawn_area;

		clearWeaponCargoGlobal opfor_box; 
		clearItemCargoGlobal opfor_box; 
		clearMagazineCargoGlobal opfor_box; 
		clearBackpackCargoGlobal opfor_box;
		sleep 0.1;
		opfor_box addweaponcargoglobal ["launch_RPG32_F", 4];
		opfor_box addmagazinecargoglobal ["RPG32_F", 4];
		opfor_box addmagazinecargoglobal ["RPG32_HE_F", 4];

		opfor_box addweaponcargoglobal ["tf47_at4_heat", 4];
		opfor_box addmagazinecargoglobal ["tf47_at4_m_HEAT", 4];

		opfor_box addmagazinecargoglobal ["ATMine_Range_Mag", 4];
		opfor_box addmagazinecargoglobal ["IEDUrbanSmall_Remote_Mag", 1];
		opfor_box addmagazinecargoglobal ["IEDLandSmall_Remote_Mag", 1];
		
		
		if (!IS_VANILLA) then {
			[localize "str_GRAD_at4Spawned"] call AGM_Core_fnc_displayTextStructured;
		} else {
			hintSilent format [localize "str_GRAD_at4Spawned"];
		};
		
		

		
		player removeAction createVehicleAt4Box;

		[[[_spawn_area,_side,2],"mission_setup\vehiclespawn_marker.sqf"],"BIS_fnc_execVM",true,true] spawn BIS_fnc_MP;
	};

	


	// SPAWN ANY OTHER OPFOR VEHICLE
	while{ count _spawn_area < 1} do {
		_spawn_area = [_centre,5,_max_distance,3,0,0,0] call BIS_fnc_findSafePos;
		_max_distance = _max_distance + 10;
		};
		[[[_spawn_area,_side,1],"mission_setup\vehiclespawn_marker.sqf"],"BIS_fnc_execVM",true,true] spawn BIS_fnc_MP;
		opfor_vehicle = _vehicle createVehicle _spawn_area;
	sleep 0.1;

	// SET FUEL TO ZERO
	opfor_vehicle setFuel 0;
	player removeAction createVehicleTransport; 
	player removeAction createVehicleTactical;
	player removeAction createVehicleMortar;

	if (!IS_VANILLA) then {
			[localize "str_GRAD_vehicleSpawned"] call AGM_Core_fnc_displayTextStructured;
		} else {
			hintSilent format [localize "str_GRAD_vehicleSpawned"];
	};
	
};