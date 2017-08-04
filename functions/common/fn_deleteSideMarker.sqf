/*    Deletes local marker for one side
*
*     Params:
*     0:    side
*     1:    name
*/

if (!isRemoteExecuted && isMultiplayer) exitWith {
    _this remoteExec ["otf_common_fnc_deleteSideMarker",0,false];
};

if (!hasInterface) exitWith {};

params [
    "_side",
    "_name"
];

if (side player != _side) exitWith {};

if (getMarkerType _name != "" || getMarkerColor _name != "") then {
    deleteMarkerLocal _name;
};
