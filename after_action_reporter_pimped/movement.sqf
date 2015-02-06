// original script by austin_medic, pimped by nomisum
local_recording = [];
single_current_values = [];
all_current_values = [];
recording_speed = 1;

if (EDITOR_MODE) then {
	players = switchableUnits;
	} else {
	players = playableUnits;
};

//hint "movement initialized";
while{!MISSION_COMPLETED} do
{

	{	_unit = _x;
		_oldveh = vehicle _unit;
		_pos = getpos _unit;
		_side = side (group _unit);
		_side_prefix = "";
		_daytime = daytime;
		if (_side == west) then { _side_prefix = "b_";};
		if (_side == east) then { _side_prefix = "o_";};
		if (_side == independent) then { _side_prefix = "n_";};
		if (_side == civilian) then { _side_prefix = "c_";};
		_kindof = _side_prefix + "motor_inf";
		_dir = (getDir _unit);


		
		if(vehicle _unit == _unit) then 
		{
			_kindof =  "mil_triangle";
		};
		if(vehicle _unit isKindOf "Helicopter") then 
		{
			_kindof =  _side_prefix + "air";
		};
		if(vehicle _unit isKindOf "Tank") then 
		{
			_kindof =  _side_prefix + "armor";
		};
		if(vehicle _unit isKindOf "StaticMortar") then 
		{
			_kindof =  _side_prefix + "mortar";
		};

		if (_unit getVariable ["AGM_isUnconscious", false]) then {
			_kindof = _side_prefix + "med";
		};
		if(!alive _unit) then {
			_kindof = "KIA";
		};


		// current values: position, side, kindof
		single_current_values = [_pos,_side,_kindof,_dir,_unit,_daytime];

		// prevent markers to render double on the same position (e.g. full team in vehicle)
		if !(_pos in all_current_values) then {
		all_current_values = all_current_values + [single_current_values];
		};
	} forEach players;
	local_recording = local_recording + [all_current_values];
	all_current_values = [];
	sleep recording_speed;
};