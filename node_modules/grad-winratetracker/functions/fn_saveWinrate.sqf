params [["_winningPlayerNames",[]],["_losingPlayerNames",[]],"_winningSidesNames","_losingSidesNames"];
private ["_addWin","_addLoss","_teamStatsArray"];

if (!isServer) exitWith {};

_missionName = [missionConfigFile >> "CfgWinrateTracker" >> "missionName", "text", missionName] call CBA_fnc_getConfigEntry;
if (_missionName == "") then {_missionName = missionName};

//PLAYER STATS =================================================================
_playerStatsArrayName = format ["grad_winrateTracker_%1_playerStats", _missionName];
_playerStatsArray = profileNamespace getVariable [_playerStatsArrayName,[]];
if (count _playerStatsArray == 0) then {_playerStatsArray pushBack ["PLAYER","WINS","LOSSES","GAMES","WINRATE"]};
{
    _isWinner = _forEachIndex == 1;
    if (_isWinner) then {_addWin = 1; _addLoss = 0} else {_addWin = 0; _addLoss = 1};
    {
        _playerName = _x;
        _stats = [_playerName,_playerStatsArray] call grad_winrateTracker_fnc_findPlayerStats;

        //initialize player stats if this is their first game
        if (count _stats == 0) then {
            _stats = [_playerName,0,0,0,0.5];
            _pushBackID = _playerStatsArray pushBack _stats;
            _stats = _playerStatsArray select _pushBackID;
        };

        _stats params [["_statsName",""],["_wins",0],["_losses",0],["_games",0],["_winrate",0.5]];
        _stats set [1,_wins + _addWin];
        _stats set [2,_losses + _addLoss];
        _stats set [3,_games + 1];
        _stats set [4,(_wins + _addWin)/(_games + 1)];
    } forEach _x;
} forEach [_losingPlayerNames,_winningPlayerNames];

profileNamespace setVariable [_playerStatsArrayName,_playerStatsArray];

//TEAM STATS ===================================================================
if (!isNil "_winningSidesNames" && !isNil "_losingSidesNames") then {
    _winningSidesNames = if (typeName _winningSidesNames == "ARRAY") then {_winningSidesNames} else {[_winningSidesNames]};
    _losingSidesNames = if (typeName _losingSidesNames == "ARRAY") then {_losingSidesNames} else {[_losingSidesNames]};

    _teamStatsArrayName = format ["grad_winrateTracker_%1_teamStats", _missionName];
    _teamStatsArray = profileNamespace getVariable [_teamStatsArrayName,[]];

    //initialize team stats if this is the first save
    if (count _teamStatsArray == 0) then {
        _teamStatsArray pushBack (["TOTAL GAMES"] + _winningSidesNames + _losingSidesNames);
        _data = [0];
        for [{_i=0}, {_i<(count _winningSidesNames + count _losingSidesNames)}, {_i=_i+1}] do {
            _data pushBack 0;
        };
        _teamStatsArray pushBack _data;
    };

    _data = (_teamStatsArray select 1);

    //set total games
    _totalGames = (_data select 0) + 1;
    _data set [0,_totalGames];

    //set winrates
    {
        _isWinner = _forEachIndex == 1;
        {
            _teamName = _x;
            _teamID = [_teamName,_teamStatsArray] call grad_winrateTracker_fnc_findTeamName;
            _teamWinrate = [_teamID,_teamStatsArray] call grad_winrateTracker_fnc_getTeamWinrate;

            if (_teamID >= 0) then {
                _totalWins = (_totalGames - 1) * _teamWinrate;
                if (_isWinner) then {_totalWins = _totalWins + 1};
                _teamWinrate = _totalWins/_totalGames;
                _data set [_teamID,_teamWinrate];
            };
        } forEach _x;
    } forEach [_losingSidesNames, _winningSidesNames];

    profileNamespace setVariable [_teamStatsArrayName,_teamStatsArray];
};


//SAVE, COMPILE ARRAY FOR GRAD SCOREBOARD AND RETURN ===========================
saveProfileNamespace;

if (isNil "_teamStatsArray") then {_teamStatsArray = []};

[_playerStatsArray,_teamStatsArray,_missionName] call grad_winrateTracker_fnc_logReport;

_scoreBoardArray = [_playerStatsArray,_teamStatsArray] call grad_winrateTracker_fnc_compileForScoreboard;

_scoreBoardArray
