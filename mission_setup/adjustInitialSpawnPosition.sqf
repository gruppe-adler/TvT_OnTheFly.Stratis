private ['_islands', '_targetPositions', '_positionsForCurrentWorld', '_targetPosition'];

islands = [
	'Desert_E',
	'bornholm',
	'Woodland_ACR',
	'Sara',
	'Sara_dbe1',
	'takistan'
];
targetPositions = [
	[ [1500,   50], [1900,   50], 'Desert_E' ],
	[ [3000, 5400], [3900, 4900], 'bornholm' ], 
	[ [7500, 7600], [7500, 7300], 'Woodland_ACR' ],
	[ [18080,18535], [18200, 18060], 'Sara'],
	[ [18080,18535], [18200, 18060], 'Sara_dbe1'],
	[ [7700,1600], [8250, 2130], 'takistan']
];




if !(isDedicated) then {
	waitUntil {player == player}; 
	playerPositionsForCurrentWorld = targetPositions select (islands find worldName);
	if (side player == blufor) then {
		playerPosition = playerPositionsForCurrentWorld select 0;
	} else {
		playerPosition = playerPositionsForCurrentWorld select 1;
	};
	player setPos (playerPosition findEmptyPosition [2, 150, typeOf player]);
};

if ((isDedicated) || (isServer)) then {
	vehiclePositionsForCurrentWorld = targetPositions select (islands find worldName);
	vehiclePosition = vehiclePositionsForCurrentWorld select 0;
	
	hintSilent format["%1",vehiclePosition];
	whiteboard setPos vehiclePosition;
	spectator_vehicle setPos vehiclePosition;
};