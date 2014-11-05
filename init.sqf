team_blufor = {side _x == west} count playableunits;
team_opfor = {side _x == east} count playableunits;

BLUFOR_SPAWNED = FALSE;
publicVariable "BLUFOR_SPAWNED";

OPFOR_SPAWNEND = FALSE;
publicVariable "OPFOR_SPAWNEND";

opfor_teleport = opfor_teamlead addAction["Teleport","teleport.sqf"];