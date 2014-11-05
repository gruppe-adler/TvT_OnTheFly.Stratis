player globalChat "Spawnpunkt auswählen.";
openMap [true,false];
if (side player == east) then {
onMapSingleClick "[_pos] call teleportOpforGroup; onMapSingleClick ''; true";
} else {
onMapSingleClick "[_pos] call teleportBluforGroup; onMapSingleClick ''; true";
};


teleportOpforGroup = {
_pos = _this select 0;
	{_x setPos _pos } forEach units group player;
	player removeAction opfor_teleport;
	openMap false;
	blufor_teleport = blufor_teamlead addAction["Teleport","teleport.sqf", blufor_teleport];
};

teleportBluforGroup = {
_pos = _this select 0;
	{_x setPos _pos } forEach units group player;
	player removeAction blufor_teleport;
	openMap false;
};