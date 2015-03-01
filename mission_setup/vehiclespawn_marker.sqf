_pos = _this select 0;
_side = _this select 1;

if (side player != _side) exitWith {};

_vehicle_marker_start = createMarkerLocal ["%1_marker_vehicle", _pos];
_vehicle_marker_start setMarkerTypeLocal "mil_pickup";
if (_side == west) then {
	_vehicle_marker_start setMarkerColorLocal "ColorWEST";
} else {
	_vehicle_marker_start setMarkerColorLocal "ColorEast";
}