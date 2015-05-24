
// takes location, distance, classname

_location = _this select 0;
_distance = _this select 1;
_classname = _this select 2;

_spawn_area = [];

while{ count _spawn_area < 1} do {
	_spawn_area = [_location,_distance] call get_vec_spawn_point;
	sleep 0.04;
	_distance = _distance + 5;
};

_vehicle = _classname createVehicle (_spawn_area select 0);

_vehicle