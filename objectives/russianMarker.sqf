_target = _this select 0;

_maxSize = 200; //marker precision (radius)
 
_animationSpeed = 0.05;
_size = 1;

_points = 0;
_maxPoints = 5400; // 1.5h
hideMarker = false;

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

if (!isDedicated) then {
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
		if (!RUSSIAN_MARKER_HIDDEN) then {
			_pulseMarker setMarkerAlphaLocal _pulsesize/_pulseMaxSize;
			} else {
			_pulsemarker setMarkerAlphaLocal 0;
		};
		_pulsemarker setMarkerSizeLocal [_pulsesize,_pulsesize];
		sleep _pulseSpeed;
		};
	};

// CLIENTS ZEIGEN MARKER
[_target,_inner_marker] spawn {
	_clientTarget = _this select 0;
	_clientMarker = _this select 0;
	while {true} do {
		waitUntil {(_clientTarget getVariable ["tf_range",0] == 50000)};
		

		if (!alive _clientTarget) exitWith {};
		sleep 1;
		_clientMarker setPos (getPos _clientTarget);
	};
	};
};


// SERVER ZÄHLT PUNKTE
if (isServer || isDedicated) then {
	waitUntil {(_target getVariable ["tf_range",0] == 50000)};
	while {true} do {
		if ((_target getVariable ["tf_range",0]) == 50000) then 
			{
			_points = _points + 1;
			RUSSIAN_MARKER_HIDDEN = false;
			publicVariable "RUSSIAN_MARKER_HIDDEN";
			//hintSilent format ["%1 Minuten gesendet",round (_points/60)];
			} else {
			RUSSIAN_MARKER_HIDDEN = true;
			publicVariable "RUSSIAN_MARKER_HIDDEN";
		};
		if (_points > _maxPoints) exitWith {
			[] call bluforSurrendered;
			 [[localize "str_GRAD_winmsg_points","mp_helpers\hint.sqf"],"BIS_fnc_execVM",true,true] spawn BIS_fnc_MP; 
			};
		if (
			(_points == 600) ||
			(_points == 1200) ||
			(_points == 1800) ||
			(_points == 2400) ||
			(_points == 3000) ||
			(_points == 3600) ||
			(_points == 4200) ||
			(_points == 4800)
			) then {
			_string = "Die Russen haben schon " + str (round(_points/60)) + " min gesendet.";
			//hintSilent format ["%1",_string];
			 [[[_string],"mp_helpers\hint.sqf"],"BIS_fnc_execVM",true,true] spawn BIS_fnc_MP; 
		};

		if (!alive _target) exitWith {
			[] call bluforCaptured;
		};
		sleep 1;
		
	};
};