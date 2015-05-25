
// takes location, distance, classname

_location = _this select 0;
_distance = _this select 1;
_target = _this select 2;

_spawn_area = [];

while{ count _spawn_area < 1} do {
	_spawn_area = [_location,_distance] call get_vec_spawn_point;
	sleep 0.05;
	_distance = _distance + 5;
};
playSound "beam";
titleCut ["", "BLACK OUT", 1];
BIS_DEBUG_CAM = nil;
_nul = _target setPos (_spawn_area select 0);
sleep 1.2;
titleCut ["", "BLACK IN", 1];