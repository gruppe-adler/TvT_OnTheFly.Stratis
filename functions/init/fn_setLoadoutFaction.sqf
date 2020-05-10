#include "component.hpp"

private _loadoutAttributeName = ["loadoutDes","loadoutWood"] select (missionNamespace getVariable ["OTF_ISWOODLAND",true]);

private _bluforLoadout = [missionConfigFile >> "cfgFactions" >> OTF_BLUFORFACTION, _loadoutAttributeName, OTF_BLUFORFACTION] call BIS_fnc_returnConfigEntry;
private _opforLoadout = [missionConfigFile >> "cfgFactions" >> OTF_OPFORFACTION, _loadoutAttributeName, OTF_OPFORFACTION] call BIS_fnc_returnConfigEntry;

["BLU_F", _bluforLoadout] call GRAD_Loadout_fnc_FactionSetLoadout;
["OPF_F", _opforLoadout] call GRAD_Loadout_fnc_FactionSetLoadout;

INFO_1("Blufor faction is %1.", _bluforLoadout);
INFO_1("Opfor faction is %1.", _opforLoadout);
