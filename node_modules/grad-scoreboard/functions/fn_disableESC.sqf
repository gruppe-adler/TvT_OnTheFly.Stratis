params ["_display",["_disable", true]];

if (_disable) then {
    _disableESC = _display displayAddEventHandler ["KeyDown", "if ((_this select 1) == 1) then {true}"];
    uiNamespace setVariable ["grad_scoreboard_disableEscEH", _disableESC];
} else {
    _eh = uiNamespace getVariable ["grad_scoreboard_disableEscEH", -1];
    if (_eh >= 0) then {
        _display displayRemoveEventHandler ["KeyDown", _eh];
    };
};

true
