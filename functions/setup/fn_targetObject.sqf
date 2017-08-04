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

[OTF_TARGETOBJECT,true,[0,2,0.1]] remoteExec ["ace_dragging_fnc_setDraggable",0,OTF_TARGETOBJECT];
[OTF_TARGETOBJECT,true,[0,2,0.6]] remoteExec ["ace_dragging_fnc_setCarryable",0,OTF_TARGETOBJECT];

[OTF_TARGETOBJECT] call otf_common_fnc_addToZeus;

OTF_TARGETOBJECT
