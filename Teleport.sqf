hintSilent "Spawnpunkt auswählen.";
openMap [true,false];

onMapSingleClick "[_pos] call teleportOpforGroup; onMapSingleClick ''; true";


teleportOpforGroup = {
	_pos = _this select 0;

	if (side player == west && !OPFOR_TELEPORTED) then {
		_blufor_marker = createMarkerLocal ["blufor_marker", _pos];
		_blufor_marker setMarkerTypeLocal "hd_objective";
		_blufor_marker setMarkerColorLocal "ColorEAST";
	};
	
	if (side player == east && !OPFOR_TELEPORTED) then {
		
		{_x setPos _pos } forEach units group player;
		openMap false;
		OPFOR_TELEPORTED = TRUE;
		publicVariable "OPFOR_TELEPORTED";

		_opfor_marker = createMarkerLocal ["opfor_marker", _pos];
		_opfor_marker setMarkerTypeLocal "hd_objective";
		_opfor_marker setMarkerColorLocal "ColorWEST";
	};

	if (side player == west && OPFOR_TELEPORTED) then {
	
		{_x setPos _pos } forEach units group player;
		openMap false;
		BLUFOR_TELEPORTED = TRUE;
		publicVariable "BLUFOR_TELEPORTED";
		
		_blufor_marker_start = createMarkerLocal ["blufor_marker_start", _pos];
		_blufor_marker_start setMarkerTypeLocal "hd_start";
		_blufor_marker_start setMarkerColorLocal "ColorWEST";
	};
};