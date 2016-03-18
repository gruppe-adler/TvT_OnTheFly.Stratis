private ['_positionsForCurrentWorld', '_targetPosition'];

[] execVM "islandConfig.sqf";

// spawn outside of map on flat terrain if possible
alternativeSpawnsOutsideMap = [[-500,-500],[-500,-900]];


if !(isDedicated) then {
	waitUntil {player == player};
	playerPositionsForCurrentWorld = ISLAND_TARGET_POSITIONS select (ISLANDS find worldName);
	if !(playerPositionsForCurrentWorld select 2) then {
	playerPositionsForCurrentWorld = alternativeSpawnsOutsideMap;
	};

	if (side player == blufor) then {
		playerPosition = playerPositionsForCurrentWorld select 0;
	} else {
		playerPosition = playerPositionsForCurrentWorld select 1;
	};
	//hintSilent format["%1",playerPosition];
	[player,playerPosition] execVM "mission_setup\teleportUnitToEmptySpot.sqf";
};

if ((isDedicated) || (isServer)) then {
	vehiclePositionsForCurrentWorld = ISLAND_TARGET_POSITIONS select (ISLANDS find worldName);
	if !(vehiclePositionsForCurrentWorld select 2) then {
	vehiclePosition_blufor = alternativeSpawnsOutsideMap select 0;
	vehiclePosition_opfor = alternativeSpawnsOutsideMap select 1;
	weaponCachePosition_opfor = alternativeSpawnsOutsideMap select 1;
	} else {
	vehiclePosition_blufor = vehiclePositionsForCurrentWorld select 0;
	vehiclePosition_opfor = vehiclePositionsForCurrentWorld select 1;
	weaponCachePosition_opfor = vehiclePositionsForCurrentWorld select 1;
	};
	sleep 0.1;
	//hintSilent format["%1",vehiclePosition];
	[whiteboard,vehiclePosition_opfor] execVM "mission_setup\teleportUnitToEmptySpot.sqf";
	sleep 0.1;
	[spectator_vehicle,vehiclePosition_opfor] execVM "mission_setup\teleportUnitToEmptySpot.sqf";
	sleep 0.1;
	[arsenal_blufor,vehiclePosition_blufor] execVM "mission_setup\teleportUnitToEmptySpot.sqf";
	sleep 0.1;
	[arsenal_opfor,weaponCachePosition_opfor] execVM "mission_setup\teleportUnitToEmptySpot.sqf";

};
