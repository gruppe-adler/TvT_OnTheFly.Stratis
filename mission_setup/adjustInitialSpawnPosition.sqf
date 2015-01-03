private ['_islands', '_targetPositions', '_positionsForCurrentWorld', '_targetPosition'];

// Please insert new islands alphabetically!

islands = [
	'Altis',
	'bornholm',
	'Chernarus_Summer',
	'Desert_E',
	'IsolaDiCapraia',
	'Sara',
	'Sara_dbe1',
	'Stratis',
	'takistan',
	'Panthera3',
	'Woodland_ACR',
	'Zargabad'
];
targetPositions = [
	[ [14300,16200], [14600, 16700], 'Altis']
	[ [3000, 5400], [3900, 4900], 'bornholm' ], 
	[ [4100,11000], [4860, 9740], 'Chernarus_Summer'],
	[ [1500,   50], [1900,   50], 'Desert_E' ],
	[ [1240,9450], [1240, 8450], 'IsolaDiCapraia'],
	[ [18080,18535], [18200, 18060], 'Sara'],
	[ [18080,18535], [18200, 18060], 'Sara_dbe1'],
	[ [1540,5015], [1800, 6000], 'Stratis'],
	[ [7700,1600], [8250, 2130], 'takistan'],
	[ [4080,7580], [4860, 7600], 'Panthera3'],
	[ [7500, 7600], [7500, 7300], 'Woodland_ACR' ],
	[ [3400,4320], [3400, 3600], 'Zargabad']
];




if !(isDedicated) then {
	waitUntil {player == player}; 
	playerPositionsForCurrentWorld = targetPositions select (islands find worldName);
	if (side player == blufor) then {
		playerPosition = playerPositionsForCurrentWorld select 0;
	} else {
		playerPosition = playerPositionsForCurrentWorld select 1;
	};
	//hintSilent format["%1",playerPosition];
	[player,playerPosition] execVM "mission_setup\teleportUnitToEmptySpot.sqf";
};

if ((isDedicated) || (isServer)) then {
	vehiclePositionsForCurrentWorld = targetPositions select (islands find worldName);
	vehiclePosition = vehiclePositionsForCurrentWorld select 1;
	
	//hintSilent format["%1",vehiclePosition];
	[whiteboard,vehiclePosition] execVM "mission_setup\teleportUnitToEmptySpot.sqf";
	[spectator_vehicle,vehiclePosition] execVM "mission_setup\teleportUnitToEmptySpot.sqf";
};