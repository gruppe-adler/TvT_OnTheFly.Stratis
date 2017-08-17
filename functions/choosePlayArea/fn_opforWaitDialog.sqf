if (!hasInterface) exitWith {};

if ([player] call otf_common_fnc_isCommander) then {
    [true,"CHOOSE PLAYZONE (LMOUSE)","CONFIRM (ENTER)"] call otf_ui_fnc_twoLineHint;
} else {
    if (playerSide == EAST) then {
        [true,"COMMANDER IS CHOOSING PLAYZONE","PLEASE WAIT"] call otf_ui_fnc_twoLineHint;
    } else {
        [true,"OPFOR IS CHOOSING PLAYZONE","PLEASE WAIT"] call otf_ui_fnc_twoLineHint;
    };
};
