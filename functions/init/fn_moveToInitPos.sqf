#include "component.hpp"

private _posOpf = ["spawnPosOpf",[0,0,0]] call otf_common_fnc_getIslandCfgValue;
private _posBlu = ["spawnPosBlu",[0,0,0]] call otf_common_fnc_getIslandCfgValue;

{
    if (local _x) then {
        _x allowDamage false;
        _searchPos = if (side _x == WEST) then {_posBlu} else {_posOpf};

        _maxDist = 10;
        _pos = [];
        while {count _pos == 0} do {
            _pos = _searchPos findEmptyPosition [0,_maxDist,"B_Soldier_F"];
            _maxDist = _maxDist + 5;
        };

        _x setPos _pos;
    };
    false
} count playableUnits;
