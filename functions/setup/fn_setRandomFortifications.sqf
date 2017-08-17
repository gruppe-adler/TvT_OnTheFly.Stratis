#include "component.hpp"

if (!hasInterface) exitWith {};
if (playerSide != EAST) exitWith {};

private _allFortificationsWeighted = [missionConfigFile >> "cfgStartingFortifications", "randomFortificationsWeighted",[]] call BIS_fnc_returnConfigEntry;

for [{_i=0}, {_i<5}, {_i=_i+1}] do {
    _fort = _allFortificationsWeighted call BIS_fnc_selectRandomWeighted;
    [player,_fort,1] call grad_fortifications_fnc_addFort;
};
