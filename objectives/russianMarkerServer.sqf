_target = _this select 0;

_maxSize = 200; //marker precision (radius)
 
_animationSpeed = 0.05;
_size = 1;

_points = 0;
_maxPoints = 5400; // 1.5h
_hideMarker = false;

// waitUntil { ((OPFOR_TELEPORTED) && (BLUFOR_TELEPORTED)) };
bluforCaptured = {
	BLUFOR_CAPTURED = TRUE; publicVariable "BLUFOR_CAPTURED";
};

bluforSurrendered = {
	BLUFOR_SURRENDERED = true; publicVariable "BLUFOR_SURRENDERED";
};

_inner_marker = createMarkerLocal ["opfor_marker", getPos _target];
_inner_marker setMarkerTypeLocal "mil_unknown";
_inner_marker setMarkerColorLocal "ColorRed";
_inner_marker setMarkerShapeLocal "ELLIPSE";
_inner_marker setMarkerSizeLocal [_size, _size];
_inner_marker setMarkerBrushLocal "Border";

if (!isServer) then {
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

	while {true} do {
		waitUntil {(_target getVariable ["tf_range",0] == 50000)};
		hintSilent format ["erstes dings gesendet"];
		if ((_target getVariable ["tf_range",0]) > 10000) then 
			{
			hintSilent format ["über 10k"];
			_hideMarker = false;
			} else {
			hintSilent format ["unter 10k"];
			_hideMarker = true;

		};
		if (!alive _target) exitWith {};
		sleep 1;
		_inner_marker setPos (getPos _target);
	};
};


// SERVER ZÄHLT PUNKTE
if (isServer || isDedicated) then {
	waitUntil {(_target getVariable ["tf_range",0] == 50000)};
	while {true} do {
		if ((_target getVariable ["tf_range",0]) == 50000) then 
			{
			_points = _points + 1;
		
			//hintSilent format ["%1 Minuten gesendet",round (_points/60)];
			};
		if (_points > _maxPoints) exitWith {
			[] call bluforSurrendered;
			 [[localize "str_GRAD_winmsg_points","mp_helpers\hint.sqf"],"BIS_fnc_execVM",true,true] spawn BIS_fnc_MP; 
			};
		if (!alive _target) exitWith {
			[] call bluforCaptured;
		};
		sleep 1;
		
	};
};