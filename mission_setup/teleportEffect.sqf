_side = _this select 0;
_pos = _this select 1;

if (side player != _side) exitWith {};

_centre = [ _pos, random 5 , random 360 ] call BIS_fnc_relPos;
_spawn_area = [];
_max_distance = 50;
	while{ count _spawn_area < 1 } do
		{
		    _spawn_area = _centre findEmptyPosition[ 2 , _max_distance , "B_static_AT_F" ];
		    _max_distance = _max_distance + 10;

		};

waitUntil {count _spawn_area >= 1;};
playSound "beam";
titleCut ["", "BLACK OUT", 1];
BIS_DEBUG_CAM = nil;
sleep 1.2;
player setPos _spawn_area;
titleCut ["", "BLACK IN", 1];
