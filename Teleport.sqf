hintSilent "Spawnpunkt auswählen.";
openMap [true,false];
if (side player == east) then {
onMapSingleClick "[_pos] call teleportOpforGroup; onMapSingleClick ''; true";
} else {
onMapSingleClick "[_pos] call teleportBluforGroup; onMapSingleClick ''; true";
};


teleportOpforGroup = {
	_pos = _this select 0;
	{_x setPos _pos } forEach units group player;
	openMap false;
	OPFOR_TELEPORTED = TRUE;
	publicVariable "OPFOR_TELEPORTED";
};

teleportBluforGroup = {
	_pos = _this select 0;
	{_x setPos _pos } forEach units group player;
	openMap false;
	BLUFOR_TELEPORTED = TRUE;
	publicVariable "BLUFOR_TELEPORTED";
};