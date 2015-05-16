// tfarSettings.sqf

compile preprocessFileLineNumbers "\task_force_radio\functions\common.sqf";

_getTsChannel = {
	_answer = ("reflection" callExtension "arg(port)");
	_channel = "TFAR";
	if ((_answer select [0, 1]) == "0") then {
		_channel = _channel + "-" + (_answer select [2]);
	} else {
		diag_log "could not get game server port: " + _answer;
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
