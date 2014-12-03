_side = _this select 0;

if (side player != _side) exitWith {};

titleCut ["", "BLACK OUT", 1];
sleep 0.7;
titleCut ["", "BLACK IN", 1];