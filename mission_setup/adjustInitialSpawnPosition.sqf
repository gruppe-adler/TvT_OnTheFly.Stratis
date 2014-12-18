private ['_islands', '_targetPositions', '_positionsForCurrentWorld', '_targetPosition'];

_islands = [
	'Desert_E',
	'Bornholm',
	'Woodland_ACR'
];
_targetPositions = [
	[ [1500,   50], [1900,   50], 'Desert_E' ],
	[ [3000, 5400], [3900, 4900], 'Bornholm' ], 
	[ [7500, 7600], [7500, 7300], 'Woodland_ACR' ]
];

_positionsForCurrentWorld = _targetPositions select (_islands find worldName);

if (side player == blufor) then {
	_targetPosition = _positionsForCurrentWorld select 0;
	hint format ['foo %1', _targetPosition select 0];
} else {
	_targetPosition = _positionsForCurrentWorld select 1;
};

hint format ['x: %1, y: %2', _targetPosition select 0, _targetPosition select 1];

player setPos (_targetPosition findEmptyPosition [2, 150, typeOf player]);
