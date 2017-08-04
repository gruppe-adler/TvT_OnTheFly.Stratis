params ["_array", "_subIndex", "_ascending"];

//copy original array, delete headline
_oldArray = +_array;
_oldArray deleteAt 0;

//create array of sortable entries and sort
_arrayOfSubEntries = [];
{
    _arrayOfSubEntries pushBack [(_x select _subIndex),_forEachIndex];
} forEach _oldArray;
_arrayOfSubEntries sort _ascending;

//apply same order to original array (account for removed headline)
{
    _originalIndex = _x select 1;
    _array set [_forEachIndex+1,_oldArray select _originalIndex];
} forEach _arrayOfSubEntries;
