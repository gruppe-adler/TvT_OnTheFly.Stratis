#include "component.hpp"

_taskDescription = format ["Capture the transmission device by standing within a %1m radius of it for %2s while no enemies are present.",OTF_CAPTURERADIUS,OTF_CAPTURETIME];
otf_setup_taskCaptureBlu = [WEST,"otf_setup_taskCaptureBlu",[_taskDescription,"Capture device",""],objNull,"AUTOASSIGNED",3,false,"capture"] call BIS_fnc_taskCreate;

_taskDescription = "Alternatively, eliminate all enemy forces in the AO.";
otf_setup_taskKillBlu = [WEST,"otf_setup_taskKillBlu",[_taskDescription,"Eliminate Opfor (secondary)",""],objNull,"AUTOASSIGNED",2,false,"attack"] call BIS_fnc_taskCreate;


_taskDescription = "Blufor is trying to capture your transmission device. Defend it at all cost. Eliminate all attackers to win.";
otf_setup_taskKillOpf = [EAST,"otf_setup_taskKillOpf",[_taskDescription,"Defend",""],objNull,"AUTOASSIGNED",3,false,"attack"] call BIS_fnc_taskCreate;
