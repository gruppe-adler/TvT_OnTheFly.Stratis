private ['_islands', '_targetPositions', '_positionsForCurrentWorld', '_targetPosition'];

// Please insert new islands alphabetically by file ending!

// Readable List: 
// Altis,
// Bornholm,
// Chernarus
// Chernarus Summer,
// Clafghan,
// Desert,
// Fatah,
// Podagorsk,
// Capraia,
// Sarahni, 
// Sarugao, 
// Shapur, 
// Stratis, 
// Takistan, 
// Thirsk, 
// Panthera, 
// Bystrica, 
// X-Cam Prototype
// Zargabad


islands = [
	'Altis',
	'bornholm',
	'Chernarus',
	'Chernarus_Summer',
	'clafghan',
	'Desert_E',
	'fata',
	'FDF_Isle1_a',
	'IsolaDiCapraia',
	'Sara',
	'Sara_dbe1',
	'saru',
	'Shapur_BAF',
	'Stratis',
	'takistan',
	'Thirsk',
	'Panthera3',
	'Woodland_ACR',
	'xcam_prototype',
	'Zargabad'
];
targetPositions = [
	[ [14300,16200], [14600, 16700], 'Altis'],
	[ [3000, 5400], [3900, 4900], 'bornholm' ], 
	[ [4100,11000], [4860, 9740], 'Chernarus'],
	[ [4100,11000], [4860, 9740], 'Chernarus_Summer'],
	[ [15550,920], [15850, 370], 'clafghan'],
	[ [1500, 50], [1900, 50], 'Desert_E'],
	[ [7700, 1600], [8400, 2000], 'fata'],
	[ [7777, 4280], [9200, 4280], 'FDF_Isle1_a'],
	[ [1240, 9450], [1240, 8450], 'IsolaDiCapraia'],
	[ [18080, 18535], [18200, 18060], 'Sara'],
	[ [18080, 18535], [18200, 18060], 'Sara_dbe1'],
	[ [9800, 4700], [9800, 3800], 'saru'],
	[ [160, 640], [800, 135], 'Shapur_BAF'],
	[ [1540, 5015], [1800, 6000], 'Stratis'],
	[ [7700, 1600], [8250, 2130], 'takistan'],
	[ [1100, 3200], [1700, 3000], 'Thirsk'],
	[ [4080, 7580], [4860, 7600], 'Panthera3'],
	[ [7500, 7600], [7500, 7300], 'Woodland_ACR'],
	[ [4000, 4150], [4450, 3830], 'xcam_prototype'],
	[ [3400, 4320], [3400, 3600], 'Zargabad']
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
	vehiclePosition_blufor = vehiclePositionsForCurrentWorld select 0;
	vehiclePosition_opfor = vehiclePositionsForCurrentWorld select 1;
	weaponCachePosition_opfor = [-1000,-1000];
	sleep 0.1;
	//hintSilent format["%1",vehiclePosition];
	[whiteboard,vehiclePosition_opfor] execVM "mission_setup\teleportUnitToEmptySpot.sqf";
	sleep 0.1;
	[spectator_vehicle,vehiclePosition_opfor] execVM "mission_setup\teleportUnitToEmptySpot.sqf";
	sleep 0.1;
	[arsenal_blufor,vehiclePosition_blufor] execVM "mission_setup\teleportUnitToEmptySpot.sqf";
	sleep 0.1;
	arsenal_opfor setPos weaponCachePosition_opfor;
	sleep 0.1;
	[extraweapons_blufor,vehiclePosition_blufor] execVM "mission_setup\teleportUnitToEmptySpot.sqf";
	sleep 0.1;
	extraweapons_opfor setPos weaponCachePosition_opfor];
};
