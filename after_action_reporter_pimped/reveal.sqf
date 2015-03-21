if (isServer) then {

did_replay = true;

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




[] spawn {
	local_recording_length = count local_recording;
	local_recording_counter = 0;
	current_markers = [];
	deadUnitMarkers = [];
	local_recording_playback_speed = 1;
	playback_speeds = [ [30,"30x"],
						[20,"20x"],
						[10,"10x"],
						[5,"5x"],
						[3,"3x"],
						[1,"1x"],
						[0,"Pause"],
						[-1,"-1x"],
						[-3,"-3x"],
						[-5,"-5x"],
						[-10,"-10x"],
						[-20,"-20x"],
						[-30,"-30x"]
					];
	
	// CREATE EVERY UNIT MARKER ONLY ONCE
	for [{_k=0}, {_k<=count players}, {_k=_k+1}] do {                    
	_prepare_unit = ((((((local_recording) select 1) select 0) select _k) select 1) select 0);
	_prepare_side = ((((((local_recording) select 1) select 0) select _k) select 1) select 1);
	_prepare_pos = ((((((local_recording) select 1) select 0) select _k) select 1) select 1);
	_prepare_dir = ((((((local_recording) select 1) select 0) select _k) select 1) select 2);
	_prepare_kindof = ((((((local_recording) select 1) select 0) select _k) select 1) select 3);
	_prepare_veh = ((((((local_recording) select 1) select 0) select _k) select 1) select 4);

	_marker = createMarker [format["%1",_prepare_unit],_prepare_pos];
	current_markers = current_markers + [_marker];
	_marker setMarkerShape "ICON";
	_marker setMarkerType _prepare_kindof;
	_marker setMarkerPos _prepare_pos;
	_marker setMarkerDir _prepare_dir;
	_marker setMarkerColor ([_prepare_side] call getSideMarkerColor);
	};


	while {true} do 
	{
		
		current_recording_length = count ((local_recording) select local_recording_counter);
		

		

		
		for [{_j=0}, {_j<current_recording_length}, {_j=_j+1}] do
		{
			_daytime = [(((local_recording) select local_recording_counter) select _i) select 0] call getDayTimeConverted;
			hintSilent format ["Replay Game Time" + " %1",_daytime];

			
			{
				_curMarker = current_markers select _x;
				_pos = (((local_recording) select local_recording_counter) select _i) select 2;
				_dir = (((local_recording) select local_recording_counter) select _i) select 3;
				_kindof = (((local_recording) select local_recording_counter) select _i) select 4;
				_veh = (((local_recording) select local_recording_counter) select _i) select 5;
				
				_curMarker setMarkerPos _pos;
				_curMarker setMarkerShape _kindof;
				_curMarker setMarkerDir _dir;


				if (_kindof == "KIA" && !(_unit in deadUnitMarkers)) then {
					_marker_kia = createMarker [format["kia_%1",_unit],_position];
					_marker_kia setMarkerShape "ICON";
					_marker_kia setMarkerType _kindof;
					_marker_kia setMarkerPos _position;
					_marker_kia setMarkerDir _dir;
					_marker_kia setMarkerColor ([_side] call getSideMarkerColor);
					deadUnitMarkers = deadUnitMarkers + [_unit];
				};
				
			} forEach current_markers;
		};

		
		local_recording_counter = local_recording_counter + local_recording_playback_speed;
		if (local_recording_counter > local_recording_length) exitWith {
			["Replay finished."] call AGM_Core_fnc_displayTextStructured;
		};
		if (local_recording_counter < 0) then {
			local_recording_playback_speed = 1;
			["Replay restarted."] call AGM_Core_fnc_displayTextStructured;	
		};
		
		sleep 1;
		
		//diag_log format ["CURRENT VALUES %1, counter is %2", (local_recording) select local_recording_counter, local_recording_counter];
		};
	};

};