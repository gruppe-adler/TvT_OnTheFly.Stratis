local_recording_length = count local_recording;
local_recording_counter = 0;
local_recording_playback_speed = 0.1;
current_markers = [];

openMap [true,false];
did_replay = true;

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

	
		

		//_marker = createMarkerLocal [format["movement_%1_%2",_random,_side],_position];
		_marker = createMarkerLocal [format["movement_%1",_unit],_position];
		current_markers = current_markers + [_marker];
		_marker setMarkerShape "ICON";
		_marker setMarkerType _kindof;
		_marker setMarkerPos _position;
		//_marker setMarkerSize [0.5,0.5];
		//_marker setMarkerAlpha 1;	
		_marker setMarkerDir _dir;
		
		_marker setMarkerColor "ColorCivilian";	
		if(_side == west) then 
			{
				_marker setMarkerColor "ColorBLUFOR";
			};
		if(_side == resistance) then 
			{
				_marker setMarkerColor "ColorIndependent";
			};
		if(_side == east) then
			{
				_marker setMarkerColor "ColorOPFOR";
			};
	};

	
	local_recording_counter = local_recording_counter + 1;
	if (local_recording_counter == local_recording_length) exitWith {};
	sleep local_recording_playback_speed;
	{deleteMarkerLocal _x} forEach current_markers;
	//diag_log format ["CURRENT VALUES %1, counter is %2", (local_recording) select local_recording_counter, local_recording_counter];
};