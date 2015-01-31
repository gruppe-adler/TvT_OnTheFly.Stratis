// original script by austin_medic, pimped by nomisum
local_recording = [];

_unit = _this select 0;
_side = side _unit;
_group = group _unit;

//hint "movement initialized";
while{count units _group > 0} do
{
	local_recording = local_recording + [1];
	_oldveh = vehicle _unit;
	_pos = getpos _unit;
	waitUntil{_unit distance _pos > 50};
	_newveh = vehicle _unit;
	if(!alive _unit) then {deletevehicle _unit; _unit = leader _group;};
	_random = round(random 100000);
	_marker = createMarker [format["movement_%1_%2",_random,_side],getpos _unit];
	AUSMD_markers set [count AUSMD_markers,_marker];
	_marker setMarkerSize [0.5,0.5];
	if(_side == west) then 
	{
		_marker setMarkerColor "ColorBlue";
	};
	if(_side == resistance) then 
	{
		_marker setMarkerColor "ColorGreen";
	};
	if(_side == east) then
	{
		_marker setMarkerColor "ColorRed";
	};
	_marker setMarkerShape "ICON";
	if(vehicle _unit == _unit) then 
	{
		_marker setMarkerType "mil_arrow";
	}
	else
	{
		_marker setMarkerType "mil_dot";
	};
	if(_newveh != _oldveh) then
	{
		_marker setMarkerType "mil_pickup";
	};
	_marker setMarkerDir (getdir _unit);
	_marker setMarkerAlpha 0;
	sleep 2;
};