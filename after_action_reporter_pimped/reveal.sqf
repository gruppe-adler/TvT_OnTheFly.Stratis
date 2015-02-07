did_replay = true;

local_recording_length = count local_recording;
local_recording_counter = 0;
local_recording_playback_speed = 0.1;
current_markers = [];
deadUnitMarkers = [];
playback_speed_x = 4;
playback_speeds = [ [0.04,"25x"],
					[0.065,"15x"],
					[0.1,"10x"],
					[0.2,"5x"],
					[0.5,"2.5x"],
					[1,"1x"],
					[2,"0.5x"],
					[4,"0.25x"]
				];

openMap [true,false];
[localize 'str_GRAD_hint_replay_started'] call AGM_Core_fnc_displayTextStructured;


getDayTimeConverted = {
	_getdaytime = _this select 0;
	//daytime = 1.66046
	_hour = floor _getdaytime;
	_minute = floor ((_getdaytime - _hour) * 60);

	_second = floor (((((_getdaytime) - (_hour))*60) - _minute)*60);
	_time24 = text format ["%1:%2:%3",_hour,_minute,_second];
	if (_minute < 10) then {
	_time24 = text format ["%1:0%2:%3",_hour,_minute,_second];
	};
	if (_second < 10) then {
	_time24 = text format ["%1:%2:0%3",_hour,_minute,_second];
	};
	if (_second < 10 && _minute < 10) then {
	_time24 = text format ["%1:0%2:0%3",_hour,_minute,_second];
	};
//_time24 = 1:39:37
	_time24
};




playback_speed_hint = {
	_kindof = _this select 0;
	
	playback_speed_x = playback_speed_x + _kindof;
	

	playback_speed_x = [playback_speed_x, playback_speeds] call checkArrayLength;
	local_recording_playback_speed = (playback_speeds select playback_speed_x) select 0;
	local_recording_playback_speed_text = (playback_speeds select playback_speed_x) select 1;

	[localize 'str_GRAD_hint_playback_speed_hint' + local_recording_playback_speed_text] call AGM_Core_fnc_displayTextStructured;
};

checkArrayLength = {
	_value = _this select 0;
	_array = _this select 1;

	if (_value < 0) then {_value = 0};
	if (_value > count _array - 1) then {_value = count _array - 1};

	_value
};

getSideMarkerColor = {
	_mySide = _this select 0;

	_result = "ColorCivilian";	
		if(_mySide == west) then 
			{
				_result = "ColorBLUFOR";
			};
		if(_mySide == resistance) then 
			{
				_result = "ColorIndependent";
			};
		if(_mySide == east) then
			{
				_result = "ColorOPFOR";
			};
	_result
};

checkSpeedKey = {
	_speedKey = _this select 0;
	//hintSilent "checkSpeedKey";
	switch _speedKey do
		{
			case 199: {[-1] call playback_speed_hint;};
			case 207: {[1] call playback_speed_hint;};
			default {}
		};
};
replayKeyDown = (finddisplay 46) displayaddeventhandler ["keydown","
	[_this select 1] call checkSpeedKey;
	"];

while {true} do 
{
	//diag_log format ["%1", (local_recording select 0) select 0];
	current_recording_length = count ((local_recording) select local_recording_counter);
	//diag_log format ["%1 current, %2 target", local_recording_counter,local_recording_length];

	//hintSilent format ["%1 current, %2 target", local_recording_counter,local_recording_length];

	
	for [{_i=0}, {_i<current_recording_length}, {_i=_i+1}] do
	{
		_position = (((local_recording) select local_recording_counter) select _i) select 0;
		_side = (((local_recording) select local_recording_counter) select _i) select 1;
		_kindof = (((local_recording) select local_recording_counter) select _i) select 2;
		_dir = (((local_recording) select local_recording_counter) select _i) select 3;
		_unit = (((local_recording) select local_recording_counter) select _i) select 4;
		_daytime = [(((local_recording) select local_recording_counter) select _i) select 5] call getDayTimeConverted;

	
		

		//_marker = createMarkerLocal [format["movement_%1_%2",_random,_side],_position];
		if !(_kindof == "KIA") then {
			_marker = createMarkerLocal [format["movement_%1",_unit],_position];
			current_markers = current_markers + [_marker];
			_marker setMarkerShape "ICON";
			_marker setMarkerType _kindof;
			_marker setMarkerPos _position;
			_marker setMarkerDir _dir;
			_marker setMarkerColor ([_side] call getSideMarkerColor);
		};
		

		if (_kindof == "KIA" && !(_unit in deadUnitMarkers)) then {
			_marker_kia = createMarkerLocal [format["kia_%1",_unit],_position];
			_marker_kia setMarkerShape "ICON";
			_marker_kia setMarkerType _kindof;
			_marker_kia setMarkerPos _position;
			_marker_kia setMarkerDir _dir;
			_marker_kia setMarkerColor ([_side] call getSideMarkerColor);
			deadUnitMarkers = deadUnitMarkers + [_unit];
		};
		hintSilent format [localize "str_GRAD_hint_replay_timestamp" + " %1",_daytime];
	};

	
	local_recording_counter = local_recording_counter + 1;
	if (local_recording_counter == local_recording_length) exitWith {
		[localize 'str_GRAD_hint_replay_finished'] call AGM_Core_fnc_displayTextStructured;
	};
	player removeEventHandler  ["keyDown", replayKeyDown];
	sleep local_recording_playback_speed;
	{deleteMarkerLocal _x} forEach current_markers;
	//diag_log format ["CURRENT VALUES %1, counter is %2", (local_recording) select local_recording_counter, local_recording_counter];
};