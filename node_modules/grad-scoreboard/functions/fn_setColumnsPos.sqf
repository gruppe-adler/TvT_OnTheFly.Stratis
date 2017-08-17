params ["_scoreArray", "_listnboxCtrl", "_listnboxTitleCtrl"];

_widthArray = [];
_ratioArray = [];
_posArray = [0.015];
_currentX = 0.015;
_totalWidth = 0;

for [{_i=0}, {_i < count (_scoreArray select 0)}, {_i=_i+1}] do {
    _width = [_i, _scoreArray] call grad_scoreboard_fnc_getMaxStringWidth;
    _totalWidth = _totalWidth + _width;
    _widthArray pushBack _width;
};

for [{_i=0}, {_i< (count (_scoreArray select 0)) - 1}, {_i=_i+1}] do {
    _currentX = _currentX + ((_widthArray select _i) / (_totalWidth*1.05));
    _posArray pushBack _currentX;
};

_listnboxCtrl lnbSetColumnsPos _posArray;
_listnboxTitleCtrl lnbSetColumnsPos _posArray;

_totalWidth
