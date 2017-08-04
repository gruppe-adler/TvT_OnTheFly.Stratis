#define PREFIX grad
#define COMPONENT winrateTracker
#include "\x\cba\addons\main\script_macros_mission.hpp"

params ["_playerStatsArray","_teamStatsArray","_missionName"];

INFO("STATS UPDATED FOR MISSION %1: ============================================",toUpper _missionName);

{
    INFO_1("%1",_x);
} forEach _playerStatsArray;

{
    INFO_1("%1",_x);
} forEach _teamStatsArray;

INFO("END OF STATS =============================================================")
