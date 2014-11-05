
player globalChat "Spawnpunkt auswählen.";
openMap [true, false];
onMapSingleClick "player setPos _pos; true; onMapSingleClick '';"; 
player removeAction id1;
openMap [false, false];


