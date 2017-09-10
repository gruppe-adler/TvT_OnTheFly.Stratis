#include "component.hpp"

if (!isServer) exitWith {};

OTF_OPFORSPAWNPOS = [0,0,0];
OTF_BLUFORSPAWNPOS = [0,0,0];
OTF_BLUFORINCONTROL = false;
OTF_CAPTURERADIUS = 5;
OTF_CAPTURETIME = 90;
OTF_CAPTURETIMEREMAINING = OTF_CAPTURETIME;

publicVariable "OTF_OPFORSPAWNPOS";
publicVariable "OTF_BLUFORSPAWNPOS";
publicVariable "OTF_BLUFORINCONTROL";
publicVariable "OTF_CAPTURERADIUS";
publicVariable "OTF_CAPTURETIME";
publicVariable "OTF_CAPTURETIMEREMAINING";

//DONE =========================================================================
missionNamespace setVariable ["otf_init_pubVarsDone", true, true];
