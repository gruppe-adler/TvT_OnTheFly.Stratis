#include "component.hpp"

private _blufor = if (isClass (missionConfigFile >> "Loadouts" >> "Faction" >> OTF_BLUFORFACTION)) then {
    OTF_BLUFORFACTION
} else {
    [OTF_BLUFORFACTION + "_d",OTF_BLUFORFACTION + "_w"] select OTF_ISWOODLAND
};

private _opfor = if (isClass (missionConfigFile >> "Loadouts" >> "Faction" >> OTF_OPFORFACTION)) then {
    OTF_OPFORFACTION
} else {
    [OTF_OPFORFACTION + "_d",OTF_OPFORFACTION + "_w"] select OTF_ISWOODLAND
};

["BLU_F", _blufor] call GRAD_Loadout_fnc_FactionSetLoadout;
["OPF_F", _opfor] call GRAD_Loadout_fnc_FactionSetLoadout;

INFO_1("Blufor faction is %1.", _blufor);
INFO_1("Opfor faction is %1.", _opfor);
