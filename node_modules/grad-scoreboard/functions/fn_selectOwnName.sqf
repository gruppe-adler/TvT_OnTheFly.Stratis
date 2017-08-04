params ["_scoreArray", "_listnboxCtrl"];

_ownIndex = -1;
{
    _rowIndex = _forEachIndex;
    {
        _item = if (typeName _x != "STRING") then {str _x} else {_x};
        if (profileName == _item) exitWith {_ownIndex = _rowIndex};
    } forEach _x;
    if (_ownIndex != -1) exitWith {};
} forEach _scoreArray;

if (_ownIndex >= 0) then {
    _listnboxCtrl lnbSetCurselRow ((_ownIndex-1) max 0);
};

true
