#include "component.hpp"

if (!isServer) exitWith {};

//random
if (OTF_TIMEOFDAY == -1) then {
    OTF_TIMEOFDAY = selectRandom [7,8,9,10,11,12,13,14,15,16,17,18];
};

_date = [2] call otf_common_fnc_findMaxMoonDate;
_date set [3,OTF_TIMEOFDAY];

["LOG", "SERVER_SETUP", format ["fn_setTime - Setting date to %1", _date]] call otf_common_fnc_diagReport;

[_date] call bis_fnc_setDate;
