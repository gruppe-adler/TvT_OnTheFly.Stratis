OPFOR_TELEPORTED = false;
BLUFOR_TELEPORTED = false;

opfor_teleport = opfor_teamlead addAction["Teleport","teleport.sqf", _Args, 1, false, true, "","_this == _target && !OPFOR_TELEPORTED"];
blufor_teleport = blufor_teamlead addAction["Teleport","teleport.sqf", _Args, 1, false, true, "","_this == _target && !BLUFOR_TELEPORTED && OPFOR_TELEPORTED"];