openMap [true,false];

playback_speed_hint = {
    _kindof = _this select 0;
    
    playback_speed_x = playback_speed_x + _kindof;
    

    playback_speed_x = [playback_speed_x, playback_speeds] call checkArrayLength;
    local_recording_playback_speed = (playback_speeds select playback_speed_x) select 0;
    local_recording_playback_speed_text = (playback_speeds select playback_speed_x) select 1;

    [localize 'str_GRAD_hint_playback_speed_hint' + local_recording_playback_speed_text] call AGM_Core_fnc_displayTextStructured;
};

"PV_playback_speed_hint" addPublicVariableEventHandler {(_this select 1) spawn playback_speed_hint};


checkSpeedKey = {
   private ["_speedKey","_value"];
    _speedKey = _this select 0;
    _value = -2;
    //hintSilent "checkSpeedKey";
    switch _speedKey do
        {
            case 199: {_value = -1;};
            case 207: {_value = 1;};
            default {};
        };
    If(_value > -2)then{    
    [_value] call playback_speed_hint;
    PV_playback_speed_hint = [_value];
   publicVariable "PV_playback_speed_hint";
    };
};

replayKeyDown = (finddisplay 46) displayaddeventhandler ["keydown","
	[_this select 1] call checkSpeedKey;
	"];