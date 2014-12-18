private ['_islands', '_targetPositions', '_positionsForCurrentWorld', '_targetPosition'];

_islands = [
	'Desert_E',
	'Bornholm',
	'Woodland_ACR',
	'Sara',
	'Sara_dbe1',
	'takistan'
];
_targetPositions = [
	[ [1500,   50], [1900,   50], 'Desert_E' ],
	[ [3000, 5400], [3900, 4900], 'Bornholm' ], 
	[ [7500, 7600], [7500, 7300], 'Woodland_ACR' ],
	[ [18080,18535], [18200, 18060], 'Sara'],
	[ [18080,18535], [18200, 18060], 'Sara_dbe1'],
	[ [7700,1600], [8250, 2130], 'takistan']
];

_positionsForCurrentWorld = _targetPositions select (_islands find worldName);

if (side player == blufor) then {
	_targetPosition = _positionsForCurrentWorld select 0;
} else {
	_targetPosition = _positionsForCurrentWorld select 1;
};

player setPos (_targetPosition findEmptyPosition [2, 150, typeOf player]);