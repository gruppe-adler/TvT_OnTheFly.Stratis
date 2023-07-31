#include "component.hpp"

OTF_DEBUGMODE = ("DebugMode" call BIS_fnc_getParamValue) == 1;
OTF_RANKEDMODE = if (OTF_DEBUGMODE) then {false} else {("RankedMode" call BIS_fnc_getParamValue) == 1};
OTF_BLUFORSTARTDIST = "BluforSpawnDist" call BIS_fnc_getParamValue;

OTF_WEATHERSETTING = "WeatherSetting" call BIS_fnc_getParamValue;
OTF_TIMEOFDAY = "TimeOfDay" call BIS_fnc_getParamValue;
OTF_MONEYFACTOR = "MoneyFactor" call BIS_fnc_getParamValue;

private _factions = [
    "us_army",
    "us_marines",
    "rus_msv",
    "rus_spetsnaz",
    "hr_hkov",
    "isr_idf",
    "tur_tkk",
    "ger_heer",
    "ind_eastern_nationalists",
    "ind_pmc_special",
    "ind_pmc_west",
    "ind_me_para",
    "ind_me_terrorists",
    "ind_eastern_peasants",
    "spe_wehrmacht",
    "spe_us"
];

OTF_BLUFORFACTION = _factions select ("BluforFaction" call BIS_fnc_getParamValue);
OTF_OPFORFACTION = _factions select ("OpforFaction" call BIS_fnc_getParamValue);

otf_init_missionParamsDone = true;
