#include "component.hpp"

private _maxDist = 30;
private _targetSpawnPos = [];

while {count _targetSpawnPos == 0} do {
    _targetSpawnPos = OTF_OPFORSPAWNPOS findEmptyPosition [0,_maxDist,"Land_PortableGenerator_01_F"];
    _maxDist = _maxDist + 10;
};

OTF_OPFORSPAWNPOS = _targetSpawnPos;
publicVariable "OTF_OPFORSPAWNPOS";

OTF_TARGETOBJECT = "Land_PortableGenerator_01_F" createVehicle [0,0,0];
OTF_TARGETOBJECT setPos _targetSpawnPos;

private _antenna = "Land_SatelliteAntenna_01_F" createVehicle [0,0,0];
_antenna setDir 212;
_antenna attachTo [OTF_TARGETOBJECT, [-0.5,0.3,0.53]];

private _case = "Land_PlasticCase_01_small_F" createVehicle [0,0,0];
_case setDir 120;
_case attachTo [OTF_TARGETOBJECT, [0.6,0.8,-0.28]];

[{!isNull OTF_TARGETOBJECT && !isNull _this}, {

    [OTF_TARGETOBJECT] call otf_common_fnc_addToZeus;
    [OTF_TARGETOBJECT,_this] remoteExec ["otf_setup_fnc_opforBuyAction",0,OTF_TARGETOBJECT];
    [OTF_TARGETOBJECT,true,[0,2,0.1]] remoteExec ["ace_dragging_fnc_setDraggable",0,OTF_TARGETOBJECT];
    [OTF_TARGETOBJECT,true,[0,2,0.6]] remoteExec ["ace_dragging_fnc_setCarryable",0,OTF_TARGETOBJECT];
    [_this,false] remoteExec ["ace_dragging_fnc_setDraggable",0,_this];
    [_this,false] remoteExec ["ace_dragging_fnc_setCarryable",0,_this];

    INFO_1("Target object %1 created.", OTF_TARGETOBJECT);
    missionNamespace setVariable ["otf_setup_targetObjectCreated", true, true];

}, _case] call CBA_fnc_waitUntilAndExecute;

publicVariable "OTF_TARGETOBJECT";
OTF_TARGETOBJECT
