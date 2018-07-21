#include "component.hpp"

params ["_side"];

if (!hasInterface) exitWith {};


private _targetPos = switch (_side) do {
    case (EAST): {OTF_OPFORSPAWNPOS};
    case (WEST): {OTF_BLUFORSPAWNPOS};
    default {[0,0,0]};
};

if (_targetPos isEqualTo [0,0,0]) exitWith {ERROR_1("Can't teleport side %1 - no position.",_side)};



[false] call otf_ui_fnc_twoLineHint;
if !([player] call otf_common_fnc_isCommander) then {
    player say "taskSucceeded";
};



[{
    params ["_targetPos","_side"];
    _nearRoads = _targetPos nearRoads 25;

    {
        if (local _x && {side _x == _side}) then {
            _pos = if (count _nearRoads > 0) then {([_nearRoads select 0,[0,10]] call otf_common_fnc_findRandomPos)} else {[0,0,0]};
            _maxDist = 10;
            while {_pos isEqualTo [0,0,0]} do {
                _pos = [_targetPos,[0,_maxDist]] call otf_common_fnc_findRandomPos;
                _maxDist = _maxDist + 5;
            };


            _onTPStart = if (isPlayer _x) then {
                {
                    /* [false] call otf_choosePlayArea_fnc_showWeatherPreview; */
                    openMap [false, false];
                    _markObject = if (side player == WEST) then {OTF_COMMANDVEHICLE} else {OTF_TARGETOBJECT};
                    _markerDescription = if (side player == WEST) then {"Commandvehicle"} else {"Barrel"};
                    [_markObject,_markerDescription,30] call otf_common_fnc_temp3dMarker;
                };
            } else {{}};

            [_x,_pos,_onTPStart,{},[]] call otf_common_fnc_teleport;
        };
        false
    } count playableUnits;

}, [_targetPos,_side], random 2] call CBA_fnc_waitAndExecute;
