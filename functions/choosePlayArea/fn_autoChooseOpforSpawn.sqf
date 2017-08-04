#include "component.hpp"

if (isPlayer (missionNamespace getVariable ["opforcommander",objNull])) exitWith {};

OTF_OPFORSPAWNPOS = [[worldSize/2,worldSize/2,0],[0,worldSize/2]] call otf_common_fnc_findRandomPos;
otf_init_opforSpawnChosen = true;

publicVariable "CHOSENLOCATION";
publicVariable "otf_init_opforSpawnChosen";

INFO("No OPFOR commander. Location chosen randomly.");
