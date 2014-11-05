if (side player == east && !OPFOR_TELEPORTED) then {
hintSilent "Spawnpunkt auswählen.";
openMap [true,false];

onMapSingleClick "[_pos] call teleportOpforGroup; onMapSingleClick ''; true";
};

if (side player == west && OPFOR_TELEPORTED) then {
hintSilent "Spawnpunkt auswählen.";
openMap [true,false];

onMapSingleClick "[_pos] call teleportOpforGroup; onMapSingleClick ''; true";
};


teleportOpforGroup = {
	_pos = _this select 0;

	if (side player == west && !OPFOR_TELEPORTED) then {
		_blufor_marker = createMarker ["blufor_marker", _pos];
		_blufor_marker setMarkerType "hd_objective";
		_blufor_marker setMarkerColor "ColorEAST";


		createMarkerLocal [_inner_circle, [0,0]];

		_inner_circle setMarkerShapeLocal "ELLIPSE";
		_inner_circle setMarkerColorLocal "ColorBlack";
		_inner_circle setMarkerSizeLocal [3000,3000];
		_inner_circle setMarkerTypeLocal "Ellipse";
	
		_outer_circle setMarkerShapeLocal "ELLIPSE";
		_outer_circle setMarkerColorLocal "ColorBlack";
		_outer_circle setMarkerSizeLocal [6000,6000];
		_outer_circle setMarkerTypeLocal "Ellipse";
		
		_blufor_marker = createMarker ["blufor_marker", _pos];
		_blufor_marker setMarkerType "hd_objective";
		_blufor_marker setMarkerColor "ColorEAST";
	};
	
	if (side player == east && !OPFOR_TELEPORTED) then {

		
		{_x setPos _pos } forEach units group player;
		openMap false;
		

		_opfor_marker = createMarker ["opfor_marker", _pos];
		_opfor_marker setMarkerType "hd_objective";
		_opfor_marker setMarkerColor "ColorWEST";

		OPFOR_TELEPORTED = TRUE;
		publicVariable "OPFOR_TELEPORTED";
	};

	if (side player == west && OPFOR_TELEPORTED) then {
	
		{_x setPos _pos } forEach units group player;
		_emptyPosition = _pos findEmptyPosition [0,100];
		blufor_vehicle setPos _emptyPosition;

		openMap false;
		BLUFOR_TELEPORTED = TRUE;
		publicVariable "BLUFOR_TELEPORTED";

		_blufor_marker_start = createMarkerLocal ["blufor_marker_start", _pos];
		_blufor_marker_start setMarkerTypeLocal "hd_start";
		_blufor_marker_start setMarkerColorLocal "ColorWEST";
	};
};