_target = _this select 0;

_maxSize = 200; //marker precision (radius)
 
_animationSpeed = 0.05;
_size = 1;

_points = 0;
_maxPoints = 5400; // 1.5h
_hideMarker = false;



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
		if (!_hideMarker) then {
			_pulseMarker setMarkerAlphaLocal _pulsesize/_pulseMaxSize;
			} else {
			_inner_marker setMarkerAlphaLocal 0;
		};
		_pulsemarker setMarkerSizeLocal [_pulsesize,_pulsesize];
		sleep _pulseSpeed;
		};
	};

// CLIENTS ZEIGEN MARKER
[_inner_marker,_target,_hideMarker] spawn 
	{
	_targMarker = _this select 0;
	_targ = _this select 1;
	while {true} do {
		waitUntil {(_targ getVariable ["tf_range",0] == 50000)};
		hintSilent format ["erstes dings gesendet"];
		if ((_targ getVariable ["tf_range",0]) > 10000) then 
			{
			hintSilent format ["über 10k"];
			_hideMarker = false;
			} else {
			hintSilent format ["unter 10k"];
			_hideMarker = true;

		};
		if (!alive _targ) exitWith {};
		sleep 1;
		_targMarker setPos (getPos _targ);
	};
};

