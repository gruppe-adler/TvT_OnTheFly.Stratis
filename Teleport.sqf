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
		openMap false;
		BLUFOR_TELEPORTED = TRUE;
		publicVariable "BLUFOR_TELEPORTED";

		_blufor_marker_start = createMarkerLocal ["blufor_marker_start", _pos];
		_blufor_marker_start setMarkerTypeLocal "hd_start";
		_blufor_marker_start setMarkerColorLocal "ColorWEST";
	};
};