params ["_missionName"];
private ["_missionName"];

if (isNil "_missionName") then {
    _missionName = [missionConfigFile >> "CfgWinrateTracker" >> "missionName", "text", missionName] call CBA_fnc_getConfigEntry;
    if (_missionName == "") then {
        _missionName = missionName;
    };
};

_playerStatsArrayName = format ["grad_winrateTracker_%1_playerStats", _missionName];
_playerStatsArray = profileNamespace getVariable [_playerStatsArrayName,[]];

_teamStatsArrayName = format ["grad_winrateTracker_%1_teamStats", _missionName];
_teamStatsArray = profileNamespace getVariable [_teamStatsArrayName,[]];

[_playerStatsArray,_teamStatsArray]
