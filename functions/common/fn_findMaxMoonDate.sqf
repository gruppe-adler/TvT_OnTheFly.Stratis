#include "component.hpp"

params ["_month"];
private ["_maxMoonDate"];

private _maxMoonPhase = 0;
private _monthDays = [2015,_month] call BIS_fnc_monthDays;
for [{_i=1}, {_i<=_monthDays}, {_i=_i+1}] do {
    _date = [2015,_month,_i,0,0];
    if (moonPhase _date > _maxMoonPhase) then {_maxMoonPhase = moonPhase _date; _maxMoonDate = _date};
};

_maxMoonDate
