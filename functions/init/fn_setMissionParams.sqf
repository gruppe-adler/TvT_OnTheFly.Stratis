#include "component.hpp"

OTF_DEBUGMODE = ("DebugMode" call BIS_fnc_getParamValue) == 1;
OTF_RANKEDMODE = if (OTF_DEBUGMODE) then {false} else {("RankedMode" call BIS_fnc_getParamValue) == 1};
OTF_BLUFORSTARTDIST = "BluforSpawnDist" call BIS_fnc_getParamValue;

OTF_WEATHERSETTING = "WeatherSetting" call BIS_fnc_getParamValue;
OTF_TIMEOFDAY = "TimeOfDay" call BIS_fnc_getParamValue;

OTF_BLUFORFACTION = [
    "us_army",
    "rus_msv",
    "ind_eastern_nationalists",
    "ind_pmc_special",
    "ind_me_terrorists",
    "ger_heer"
] select ("BluforFaction" call BIS_fnc_getParamValue);

OTF_OPFORFACTION = [
    "us_army",
    "rus_msv",
    "ind_eastern_nationalists",
    "ind_pmc_special",
    "ind_me_terrorists",
    "ger_heer"
] select ("OpforFaction" call BIS_fnc_getParamValue);

otf_init_missionParamsDone = true;
