params ["_playerStatsArray","_teamStatsArray"];

//PLAYER STATS =================================================================
_playerStats = +_playerStatsArray;

_minGames = [missionConfigFile >> "CfgWinrateTracker" >> "minGamesForSort", "number", 5] call CBA_fnc_getConfigEntry;
_sortBy = [missionConfigFile >> "CfgWinrateTracker" >> "sortBy", "text", "WINRATES"] call CBA_fnc_getConfigEntry;
_sortID = (["WINS","LOSSES","GAMES","WINRATES"] find _sortBy) + 1;

if (_sortID > 0) then {[_playerStats,_sortID,_minGames] call grad_winrateTracker_fnc_sortStats};

{
    if (_forEachIndex > 0) then {
        _winrate = (_x select 4);
        _winrate = if (_winrate > 0) then {(round (_winrate * 1000)) / 10} else {_winrate};
        _winrate = (str _winrate) + "%";
        _x set [4,_winrate];
    };
} forEach _playerStats;


//TEAM STATS ===================================================================
_teamStats = +_teamStatsArray;
if (count _teamStats > 0) then {
    _stats = (_teamStats select 1);
    {
        if (_forEachIndex > 0) then {
            _winrate = _x;
            _winrate = if (_winrate > 0) then {(round (_winrate * 1000)) / 10} else {_winrate};
            _winrate = (str _winrate) + "%";
            _stats set [_forEachIndex,_winrate];
        };
    } forEach _stats;
};


//SET OTHER SETTINGS ===========================================================
_duration = [missionConfigFile >> "CfgWinrateTracker" >> "scoreBoardDuration", "number", -1] call CBA_fnc_getConfigEntry;
_mainHeadline = [missionConfigFile >> "CfgWinrateTracker" >> "playerStatsHeadline", "text", "PLAYER WINRATES"] call CBA_fnc_getConfigEntry;
_rankNumbers = true;
_sort = false;
_teamHeadline = [missionConfigFile >> "CfgWinrateTracker" >> "teamStatsHeadline", "text", "TEAM WINRATES"] call CBA_fnc_getConfigEntry;
_teamRankNumbers = false;
_teamSort = false;


//RETURN =======================================================================
[_duration,_playerStats,_mainHeadline,_rankNumbers,_sort,_teamStats,_teamHeadline,_teamRankNumbers,_teamSort]

/*
[20,[["PLAYER","WINS","LOSSES","GAMES","WINRATE"],["Tim",3,0,3,"100%"],["Tom",3,0,3,"100%"],["Herbert",3,0,3,"100%"],["Franz",3,0,3,"100%"],["Steffen",0,3,3,"0%"],["Andre",0,3,3,"0%"],["Jim",0,3,3,"0%"]],"PLAYER WINRATES",true,false,[["TOTAL GAMES","OPFOR","BLUFOR"],[3,"183.3%","0%"]],"TEAM WINRATES",false,false]
*/
