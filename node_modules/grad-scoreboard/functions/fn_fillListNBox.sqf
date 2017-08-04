params ["_scoreArray", "_listnboxCtrl", "_listnboxTitleCtrl"];

_fnc_toString = {
    params ["_row",["_allcaps",false]];
    _rowArray = [];
    {
        _item = if (typeName _x != "STRING") then {str _x} else {_x};
        _item = if (_allcaps) then {toUpper _item} else {_item};
        _rowArray pushBack _item;
    } forEach _row;
    _rowArray
};

//add titles
_listnboxTitleCtrl lnbAddRow ([_scoreArray select 0, true] call _fnc_toString);

//add rows
for [{_i=1}, {_i<(count _scoreArray)}, {_i=_i+1}] do {
    _rowArray = [_scoreArray select _i] call _fnc_toString;
    _listnboxCtrl lnbAddRow _rowArray;
};


true
