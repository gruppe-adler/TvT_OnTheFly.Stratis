#include "component.hpp"

if (!isServer) exitWith {};

params ["_target"];

_condition = "
    (WEST countSide thisList) > 0 && (EAST countSide thisList) == 0;
";

_onActivation = "
    OTF_BLUFORINCONTROL = true;
    publicVariable 'OTF_BLUFORINCONTROL';
    [[],'Report','BLUFOR is capturing!'] remoteExec ['otf_common_fnc_sideNotification',0,false];
    [OTF_TARGETOBJECT,true,[0,0,0.5]] remoteExec ['otf_common_fnc_attachSmokeSource',0,false];
";

_onDeactivation = "
    OTF_BLUFORINCONTROL = false;
    publicVariable 'OTF_BLUFORINCONTROL';
    [[],'Report','BLUFOR is no longer capturing.'] remoteExec ['otf_common_fnc_sideNotification',0,false];
    [OTF_TARGETOBJECT,false] remoteExec ['otf_common_fnc_attachSmokeSource',0,false];
";


_trigger = createTrigger ["EmptyDetector", [0,0,0], false];
_trigger setTriggerArea [OTF_CAPTURERADIUS,OTF_CAPTURERADIUS,0,false];
_trigger setTriggerActivation ["ANY", "PRESENT", true];
_trigger setTriggerStatements [_condition,_onActivation,_onDeactivation];
_trigger setTriggerTimeout [4,4,4,true];
_trigger attachTo [_target,[0,0,0]];

missionNamespace setVariable ["otf_setup_triggerCreated", true, true];

INFO_1("Objective trigger created: %1.", _trigger);


OTF_TRIGGER = _trigger;
