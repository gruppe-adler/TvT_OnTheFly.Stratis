#include "..\defines.hpp"

params ["_open",["_line1",""],["_line2",""]];
if (!hasInterface) exitWith {};

disableSerialization;

//open tlh
if (_open) then {

    //create tlh if not already open
    _tlh = uiNamespace getVariable ["otf_twoLineHint", displayNull];
    if (isNull _tlh) then {titleRsc ["otf_twoLineHint", "PLAIN", 1, true]};

    //set text
    disableSerialization;
    _tlh = uiNamespace getVariable "otf_twoLineHint";
    _l1 = _tlh displayCtrl otf_tlh_LINE1;
    _l2 = _tlh displayCtrl otf_tlh_LINE2;
    _l1 ctrlSetText _line1;
    _l2 ctrlSetText _line2;

//close tlh
} else {
    titleRsc ["Default", "PLAIN"];
};
