params ["_playerName","_playerStatsArray"];

_playerStats = [];
{
    if (_forEachIndex > 0) then {
        _currentStats = _x;
        if (_currentStats select 0 == _playerName) exitWith {
            _playerStats = _currentStats;
        };
    };
} forEach _playerStatsArray;

_playerStats
