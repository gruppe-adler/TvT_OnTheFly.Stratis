params ["_playerStats","_sortID","_minGames"];


_haveMinGames = [];
_haveMinGamesSortables = [];
_dontHaveMinGames = [];
_dontHaveMinGamesSortables = [];
{
    if (_forEachIndex > 0) then {
        if ((_x select 3) >= _minGames) then {
            _haveMinGames pushBack _x;
            _haveMinGamesSortables pushBack (_x select _sortID);
        } else {
            _dontHaveMinGames pushBack _x;
            _dontHaveMinGamesSortables pushBack (_x select _sortID);
        };
    };
} forEach _playerStats;


//cut everything except headline
_playerStats resize 1;

while {count _haveMinGamesSortables > 0} do {
    _maxID = _haveMinGamesSortables call grad_winrateTracker_fnc_findMax;
    _playerStats pushBack (_haveMinGames select _maxID);

    _haveMinGames deleteAt _maxID;
    _haveMinGamesSortables deleteAt _maxID;
};

while {count _dontHaveMinGamesSortables > 0} do {
    _maxID = _dontHaveMinGamesSortables call grad_winrateTracker_fnc_findMax;
    _playerStats pushBack (_dontHaveMinGames select _maxID);

    _dontHaveMinGames deleteAt _maxID;
    _dontHaveMinGamesSortables deleteAt _maxID;
};


_playerStats
