#include "..\dialog\defines.hpp"

private ["_additionalWidth","_doSort","_subIndex","_ascending"];
params [["_duration", -1],"_scoreArray","_dialogTitle",["_showRank",false],["_sort", false],["_additionalArray",[]],["_additionalTitle",""],["_additionalShowRank",false],["_additionalSort", false],["_disableSimulation",false]];

disableSerialization;

//sort
if (typeName _sort == "BOOL") then {_sort = [_sort]};
_sort params ["_doSort", ["_subIndex", 0], ["_ascending", false]];
if (_doSort) then {
    [_scoreArray,_subIndex,_ascending] call grad_scoreboard_fnc_sort;
};
if (typeName _additionalSort == "BOOL") then {_additionalSort = [_additionalSort]};
_additionalSort params ["_doSort", ["_subIndex", 0], ["_ascending", false]];
if (_doSort) then {
    [_additionalArray,_subIndex,_ascending] call grad_scoreboard_fnc_sort;
};


//add rank numbers
if (_showRank) then {
    {
        _scoreArray set [_forEachIndex, if (_forEachIndex == 0) then {["RANK"] + _x} else {[_forEachIndex] + _x}];
    } forEach _scoreArray;
};
if (_additionalShowRank) then {
    {
        _additionalArray set [_forEachIndex, if (_forEachIndex == 0) then {["RANK"] + _x} else {[_forEachIndex] + _x}];
    } forEach _additionalArray;
};


//create dialog
createDialog "grad_scoreboard";
_display = findDisplay grad_scoreboard_DIALOG;
_titleCtrl = _display displayCtrl grad_scoreboard_TITLEBAR;
_listnboxCtrl = _display displayCtrl grad_scoreboard_MAINLISTNBOX;
_listnboxTitleCtrl = _display displayCtrl grad_scoreboard_MAINLISTNBOXTITLE;
_additionalTitleCtrl = _display displayCtrl grad_scoreboard_MYSTATSTITLE;
_additionalListnboxCtrl = _display displayCtrl grad_scoreboard_MYSTATSLISTNBOX;
_additionalListnboxTitleCtrl = _display displayCtrl grad_scoreboard_MYSTATSLISTNBOXTITLE;
_additionalBackground = _display displayCtrl grad_scoreboard_MYSTATSBACKGROUND;
_additionalTitleBackground = _display displayCtrl grad_scoreboard_MSTITLEBACKGROUND;


//disable ESC key
if (_duration > 0) then {
    [_display,true] call grad_scoreboard_fnc_disableESC;
    if (_disableSimulation) then {
        (vehicle player) enableSimulation false;
        player enableSimulation false;
    };
    [{
        params ["_display","_disableSimulation"];
        [_display, false] call grad_scoreboard_fnc_disableESC;
        _display closeDisplay 2;

        if (_disableSimulation) then {
            (vehicle player) enableSimulation true;
            player enableSimulation true;
        };
    }, [_display,_disableSimulation], _duration] call CBA_fnc_waitAndExecute;
};


//fill main dialog
_titleCtrl ctrlSetText (toUpper _dialogTitle);
_mainWidth = [_scoreArray, _listnboxCtrl, _listnboxTitleCtrl] call grad_scoreboard_fnc_setColumnsPos;
[_scoreArray, _listnboxCtrl, _listnboxTitleCtrl] call grad_scoreboard_fnc_fillListNBox;
[_scoreArray, _listnboxCtrl] call grad_scoreboard_fnc_selectOwnName;


//fill additional dialog
if (count _additionalArray > 0) then {
    _additionalTitleCtrl ctrlSetText (toUpper _additionalTitle);
    _additionalWidth = [_additionalArray, _additionalListnboxCtrl, _additionalListnboxTitleCtrl] call grad_scoreboard_fnc_setColumnsPos;
    [_additionalArray, _additionalListnboxCtrl, _additionalListnboxTitleCtrl] call grad_scoreboard_fnc_fillListNBox;
    [_additionalTitleCtrl,_additionalListnboxCtrl,_additionalListnboxTitleCtrl,_additionalBackground,_additionalTitleBackground] call grad_scoreboard_fnc_ctrlShowEach;
} else {
    _additionalWidth = 0;
};


//set dialog width
[_mainWidth max _additionalWidth] call grad_scoreboard_fnc_setWidth;
