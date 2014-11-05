OPFOR_TELEPORTED = false;
BLUFOR_TELEPORTED = false;

opfor_teleport = opfor_teamlead addAction["Teleport","teleport.sqf", _Args, 1, false, true, "","_this == _target && !OPFOR_TELEPORTED"];
blufor_teleport = blufor_teamlead addAction["Teleport","teleport.sqf", _Args, 1, false, true, "","_this == _target && !BLUFOR_TELEPORTED && OPFOR_TELEPORTED"];

call compile preprocessFileLineNumbers "plank\plank_init.sqf";

if (side player == east) then 
{
[player, [0, 0, 3, 0, 3, 0, 0, 0, 1, 1]] call plank_deploy_fnc_init;
};
