hintSilent "Spawnpunkt auswählen.";
openMap [true,false];
if (side player == east) then {
onMapSingleClick "[_pos] call teleportOpforGroup; [_pos] call createMarkerWest; onMapSingleClick ''; true";
} else {
onMapSingleClick "[_pos] call teleportBluforGroup; onMapSingleClick ''; true";
};


teleportOpforGroup = {
	_pos = _this select 0;
	{_x setPos _pos } forEach units group player;
	openMap false;
	OPFOR_TELEPORTED = TRUE;
	publicVariable "OPFOR_TELEPORTED";

	if (side player == east) then { 
		_inner_marker = createMarkerLocal ["opfor_marker", _pos];
		_inner_marker setMarkerTypeLocal "hd_objective";
		_inner_marker setMarkerColorLocal "ColorWEST";
	};
};

createMarkerWest = {
if (side player == west) then {
		_inner_marker = createMarkerLocal ["blufor_marker", _pos];
		_inner_marker setMarkerTypeLocal "hd_objective";
		_inner_marker setMarkerColorLocal "ColorEAST";
	};
};

teleportBluforGroup = {
	_pos = _this select 0;
	{_x setPos _pos } forEach units group player;
	openMap false;
	BLUFOR_TELEPORTED = TRUE;
	publicVariable "BLUFOR_TELEPORTED";

	if (side player == west) then {
	_inner_marker = createMarkerLocal ["blufor_marker_start", _pos];
	_inner_marker setMarkerTypeLocal "hd_start";
	_inner_marker setMarkerColorLocal "ColorWEST";
	};

};