#include "..\dialog\ui_toolkit.hpp"
#include "..\dialog\defines.hpp"

params ["_totalWidth"];
_width = ((_totalWidth/80) min 1) max 0.35;

_fnc_setPos = {
    params ["_ctrl", "_w"];
    _pos = ctrlPosition _ctrl;
    _pos set [0,CENTER(1,_w * Y_SCALE)];
    _pos set [2,_w * Y_SCALE];
    _ctrl ctrlSetPosition _pos;
    _ctrl ctrlCommit 0;
};

_display = findDisplay grad_scoreboard_DIALOG;
if (isNull _display) exitWith {};

[_display displayCtrl grad_scoreboard_TITLEBAR, _width] call _fnc_setPos;
[_display displayCtrl grad_scoreboard_MAINBACKGROUND, _width] call _fnc_setPos;
[_display displayCtrl grad_scoreboard_SBTITLEBACKGROUND, _width] call _fnc_setPos;
[_display displayCtrl grad_scoreboard_MAINLISTNBOXTITLE, _width] call _fnc_setPos;
[_display displayCtrl grad_scoreboard_MAINLISTNBOX, _width] call _fnc_setPos;

[_display displayCtrl grad_scoreboard_MYSTATSTITLE, _width] call _fnc_setPos;
[_display displayCtrl grad_scoreboard_MYSTATSBACKGROUND, _width] call _fnc_setPos;
[_display displayCtrl grad_scoreboard_MSTITLEBACKGROUND, _width] call _fnc_setPos;
[_display displayCtrl grad_scoreboard_MYSTATSLISTNBOXTITLE, _width] call _fnc_setPos;
[_display displayCtrl grad_scoreboard_MYSTATSLISTNBOX, _width] call _fnc_setPos;
