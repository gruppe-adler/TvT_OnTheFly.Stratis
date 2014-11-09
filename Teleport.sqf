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


		createMarkerLocal [_inner_circle, _pos];
		_inner_circle setMarkerShapeLocal "ELLIPSE";
		_inner_circle setMarkerColorLocal "ColorBlack";
		_inner_circle setMarkerSizeLocal [blufor_spawnDistanceMin,blufor_spawnDistanceMin];
		_inner_circle setMarkerTypeLocal "Ellipse";
		_inner_circle setMarkerBrushLocal "SolidBorder";
		_varname setMarkerTextLocal "Hostage cellphone signal";
	
		createMarkerLocal [_outer_circle, _pos];
		_outer_circle setMarkerShapeLocal "ELLIPSE";
		_outer_circle setMarkerColorLocal "ColorBlack";
		_outer_circle setMarkerSizeLocal [blufor_spawnDistanceMax,blufor_spawnDistanceMax];
		_outer_circle setMarkerTypeLocal "Ellipse";
		_outer_circle setMarkerBrushLocal "SolidBorder";
		
		_blufor_marker = createMarker ["blufor_marker", _pos];
		_blufor_marker setMarkerType "hd_objective";
		_blufor_marker setMarkerColor "ColorEAST";
	};
	
	if (side player == east && !OPFOR_TELEPORTED) then {

		
		{_emptyPosition_unit = _pos findEmptyPosition [0,50];
		_x setPos _emptyPosition_unit; sleep 0.1;  } forEach units group player;
		openMap false;
		

		_opfor_marker = createMarker ["opfor_marker", _pos];
		_opfor_marker setMarkerType "hd_objective";
		_opfor_marker setMarkerColor "ColorWEST";

		OPFOR_TELEPORTED = TRUE;
		publicVariable "OPFOR_TELEPORTED";
	};

	if (side player == west && OPFOR_TELEPORTED) then {
	
		// entfernung marker zu spawnpunkt zu klein oder groß?
		_distance = _pos distance (getMarkerPos "opfor_marker");
		if (_distance < blufor_spawnDistanceMin) exitWith {hintSilent format ["Too close from Objective (%1 m). Must be at least %2.", _distance, blufor_spawnDistanceMin];};
		if (_distance > blufor_spawnDistanceMax) exitWith {hintSilent format ["Too far away from Objective (%1 m). Must be at max %2.", _distance, blufor_spawnDistanceMax];};

		// teleport und gucken, ob posi frei ist
		{_emptyPosition_unit = _pos findEmptyPosition [0,50];
		_x setPos _emptyPosition_unit; sleep 0.1; } forEach units group player;
		sleep 0.5;
		_emptyPosition_vehicle = _pos findEmptyPosition [0,100,"B_Truck_01_covered_F"];
		blufor_vehicle setPos _emptyPosition_vehicle;

		openMap false;
		BLUFOR_TELEPORTED = TRUE;
		publicVariable "BLUFOR_TELEPORTED";

		_blufor_marker_start = createMarkerLocal ["blufor_marker_start", _pos];
		_blufor_marker_start setMarkerTypeLocal "hd_start";
		_blufor_marker_start setMarkerColorLocal "ColorWEST";
	};
};