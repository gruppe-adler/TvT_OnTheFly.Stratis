#define PREFIX grad
#define COMPONENT winrateTracker
#include "\x\cba\addons\main\script_macros_mission.hpp"

params ["_consent",["_missionName",missionName]];

if (!isServer) exitWith {};

if (_consent == "I KNOW THIS WILL DELETE ALL STATS") then {

    INFO_1("NOW DELETING ALL STATS FOR MISSION %1",_missionName);

    _playerStatsArrayName = format ["grad_winrateTracker_%1_playerStats", _missionName];
    _teamStatsArrayName = format ["grad_winrateTracker_%1_teamStats", _missionName];

    if (isNil {profileNamespace getVariable _playerStatsArrayName}) exitWith {
        INFO_1("No stats for mission %1 found.",_missionName);
    };
    
    profileNamespace setVariable [_playerStatsArrayName,nil];
    profileNamespace setVariable [_teamStatsArrayName,nil];

    saveProfileNamespace;
};
