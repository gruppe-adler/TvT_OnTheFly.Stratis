params ["_subIndex", "_array"];

_longestWidth = 0;
{
    _string = _x select _subIndex;
    if (typeName _string != "STRING") then {_string = str _string};
    if (count _string > _longestWidth) then {_longestWidth = count _string};
} forEach _array;

_longestWidth
