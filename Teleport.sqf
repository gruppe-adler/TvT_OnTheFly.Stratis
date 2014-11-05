teleportName = this select 0;

player globalChat "Spawnpunkt auswählen.";
openMap [true,false];
onMapSingleClick "[teleportName] call teleportGroup; onMapSingleClick ''; true";

teleportGroup = {
_teleportName2 = this select 0;
{ _x setPos _pos } forEach units group player;
player removeAction _teleportName2;
openMap false;
blufor_teleport = blufor_teamlead addAction["Teleport","teleport.sqf", blufor_teleport];
};