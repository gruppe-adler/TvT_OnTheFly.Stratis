// original script by austin_medic, pimped by nomisum
local_recording = [];
single_current_values = [];
all_current_values = [];

//hint "movement initialized";
while{!WINCONDITIONBLUFOR && !WINCONDITIONOPFOR} do
{

	{	_unit = _x;
		_oldveh = vehicle _unit;
		_pos = getpos _unit;
		_kindof = "mil_arrow";
		_side = side (group _unit);
		
		_dir = (getDir _unit);
		if(!alive _unit) then {_kindof = "KIA"};

		
		
		if(vehicle _unit == _unit) then 
		{
			_kindof =  "mil_dot";
		};
		/*
		_newveh = vehicle _unit;
		if(_newveh != _oldveh) then
		{
			_kindof = "hd_pickup";
		};*/

		// current values: position, side, kindof
		single_current_values = [_pos,_side,_kindof,_dir,_unit];

		all_current_values = all_current_values + [single_current_values];
	} forEach playableUnits;
	local_recording = local_recording + [all_current_values];
	all_current_values = [];
	sleep 2;
	

};