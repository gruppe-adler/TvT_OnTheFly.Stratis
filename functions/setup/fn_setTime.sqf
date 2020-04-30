#include "component.hpp"

if (!isServer) exitWith {};

private _date = [2] call otf_common_fnc_findMaxMoonDate;

//random time selected in mission params
if (OTF_TIMEOFDAY == -1) then {
    (_date call BIS_fnc_sunriseSunsetTime) params [["_sunrise",0],["_sunset",0]];
    if (_sunrise <= 0 || _sunset <= 0) then {
        OTF_TIMEOFDAY = 12;
    } else {
        // start max 15min before sunrise | start at least 30min before sunset
        OTF_TIMEOFDAY = [round (_sunrise + 0.25),floor _sunset] call BIS_fnc_randomInt;
    };
};

_date set [3,OTF_TIMEOFDAY];

["LOG", "SERVER_SETUP", format ["fn_setTime - Setting date to %1", _date]] call otf_common_fnc_diagReport;

[_date] call bis_fnc_setDate;
