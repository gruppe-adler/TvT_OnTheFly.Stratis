#include "component.hpp"

if (isPlayer (missionNamespace getVariable ["bluforcommander",objNull])) exitWith {};

OTF_BLUFORSPAWNPOS = [OTF_OPFORSPAWNPOS,[OTF_BLUFORSTARTDIST,OTF_BLUFORSTARTDIST + 300]] call otf_common_fnc_findRandomPos;

otf_init_bluforSpawnChosen = true;
publicVariable "otf_init_bluforSpawnChosen";
publicVariable "OTF_BLUFORSPAWNPOS";

INFO("No BLUFOR commander. Spawn chosen randomly.");
