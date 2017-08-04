#include "component.hpp"

params ["_markObject","_markerDescription","_timeOut"];

_function = {
    params ["_args", "_handle"];
    _args params ["_markObject", "_markerDescription"];

    if (typeName _markObject == "OBJECT" && {isNull _markObject}) exitWith {[_handle] call CBA_fnc_removePerFrameHandler;};
    _pos = if (typeName _markObject == "OBJECT") then {getPosATL _markObject} else {_markObject};
    drawIcon3D ["a3\ui_f\data\gui\Rsc\RscDisplayIntel\azimuth_ca.paa", [1,1,1,1], _pos vectorAdd [0,0,1], 1, 1, 45, format ["%1 (%2m)", _markerDescription, round (player distance _pos)], 1, 0.04, "PuristaMedium","center",true];
};
_handle = [_function, 0, [_markObject, _markerDescription]] call CBA_fnc_addPerFrameHandler;

[{
    params ["_handle"];
    [_handle] call CBA_fnc_removePerFrameHandler;
}, _handle, _timeOut] call CBA_fnc_waitAndExecute;
