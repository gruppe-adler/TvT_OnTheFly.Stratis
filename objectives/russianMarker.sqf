_target = _this select 0;

_maxSize = 100; //marker precision (radius)
 
_animationSpeed = 0.05;
_size = 1;


// waitUntil { ((OPFOR_TELEPORTED) && (BLUFOR_TELEPORTED)) };


_inner_marker = createMarkerLocal ["opfor_marker", getPos _target];
_inner_marker setMarkerTypeLocal "mil_unknown";
_inner_marker setMarkerColorLocal "ColorRed";
_inner_marker setMarkerShapeLocal "ELLIPSE";
_inner_marker setMarkerSizeLocal [_size, _size];
_inner_marker setMarkerBrushLocal "Border";

[_inner_marker,_size,_maxSize,_animationSpeed] spawn 
	{
	private ["_pulsemarker","_pulsesize","_pulseMaxSize"];
	_pulsemarker = _this select 0;
	_pulsesize = _this select 1;
	_pulseMaxSize = _this select 2;
	_pulseSpeed = _this select 3;
	_modifier = 1;
	while {true} do {
		if (_pulsesize > _pulseMaxSize) then {
		_pulsesize = 1;
		_modifier = 1;
		};
		_pulsesize = _pulsesize + _modifier;
		_modifier = _modifier + 0.1;
	_pulseMarker setMarkerAlphaLocal _pulsesize/_pulseMaxSize;
	_pulsemarker setMarkerSizeLocal [_pulsesize,_pulsesize];
	sleep _pulseSpeed;
	};
};

while {true} do {
	if ((_target getVariable ["tf_range",true]) > 10000) then 
		{
		_inner_marker setMarkerAlphaLocal 1;
		} else {
		_inner_marker setMarkerAlphaLocal 0;
	};
	sleep 1;
	_inner_marker setPos (getPos _target);
};