// tfarSettings.sqf

compile preprocessFileLineNumbers "\task_force_radio\functions\common.sqf";

_getTsChannel = {
	_rawResponse = ("reflection" callExtension "arg(port)");
	_channel = "TFAR";
	if (count _rawResponse > 0) then {
		_response =  call compile _rawResponse;
		_responseCode = (_response select 0);
		_returnValue = (_response select 1);
		if (_responseCode == 0) then {
			_channel = _channel + "-" + _returnValue;
		} else {
			diag_log "could not get game server port: " + _returnValue;
		};
	} else {
		diag_log "no answer for reflection.so call :(";
	};

	_channel;
};

TF_GIVE_MICRODAGR_TO_SOLDIER = false;
TF_RADIO_CHANNEL_NAME = call _getTsChannel;
TF_RADIO_CHANNEL_PASSWORD = "helium";
TF_SAME_LR_FREQUENCIES_FOR_SIDE = true;
TF_SAME_SW_FREQUENCIES_FOR_SIDE = true;
TF_TERRAIN_INTERCEPTION_COEFFICIENT = 6.0;

publicVariable "TF_GIVE_MICRODAGR_TO_SOLDIER";
publicVariable "TF_RADIO_CHANNEL_NAME";
publicVariable "TF_RADIO_CHANNEL_PASSWORD";
publicVariable "TF_SAME_LR_FREQUENCIES_FOR_SIDE";
publicVariable "TF_SAME_SW_FREQUENCIES_FOR_SIDE";
publicVariable "TF_TERRAIN_INTERCEPTION_COEFFICIENT";
