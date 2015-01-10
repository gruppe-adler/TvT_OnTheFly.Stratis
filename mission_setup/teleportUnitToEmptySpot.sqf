_object = _this select 0;
_position = _this select 1;
_positionlist = [];
_max_distance = 15;
_centre = [ _position, random 10 , random 360 ] call BIS_fnc_relPos;

while { count _positionlist < 1 } do
		{
		    _positionlist = _centre findEmptyPosition[ 2 , _max_distance , "B_Truck_01_transport_F"];
		    _max_distance = _max_distance + 15;
		};

_object setPos _positionlist;