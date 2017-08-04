private ["_overcast"];

if (!isServer) exitWith {};

//OVERCAST =====================================================================
//random
if (OTF_WEATHERSETTING == -1) then {
    _availableSettings = getArray (missionConfigFile >> "Params" >> "WeatherSetting" >> "values");
    _availableSettings = _availableSettings - [-1];
    _overcast = selectRandom _availableSettings;

//fixed
} else {
    _overcast = OTF_WEATHERSETTING;
};

["LOG", "SERVER_SETUP", format ["fn_setWeather - Set overcast to %1.", _overcast]] call otf_common_fnc_diagReport;
[_overcast * 0.01] call bis_fnc_setOvercast;

//FOG ==========================================================================
_mid = 0.03;

//extra chance of fog when its raining
if (_overcast >= 75) then {
    _mid = _mid + 0.08;
};

//extra chance of fog in the morning
if (otf_missionParam_TIMEOFDAY <= 8) then {
    _mid = _mid + 0.12;
};

_fog = random [0,_mid,0.4];

["LOG", "SERVER_SETUP", format ["fn_setWeather - Set fog to %1.", _fog]] call otf_common_fnc_diagReport;
0 setFog _fog;
