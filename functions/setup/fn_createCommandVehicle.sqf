#include "component.hpp"

if (!isServer) exitWith {};

private _cvClasses = [(missionConfigFile >> "CfgFactions" >> OTF_BLUFORFACTION),"commandVehicles",[]] call BIS_fnc_returnConfigEntry;
if (count _cvClasses == 0) exitWith {ERROR_1("No commandvehicle class for faction %1.",OTF_BLUFORFACTION)};
private _cvClass = _cvClasses select !OTF_ISWOODLAND;


private _pos = [];
private _maxDist = 30;
while {count _pos == 0} do {
    _pos = OTF_BLUFORSPAWNPOS findEmptyPosition [0,_maxDist,_cvClass];
    _maxDist = _maxDist + 20;
};


OTF_COMMANDVEHICLE = _cvClass createVehicle _pos;
[{!isNull OTF_COMMANDVEHICLE}, {

    [OTF_COMMANDVEHICLE] call otf_common_fnc_emptyContainer;
    [OTF_COMMANDVEHICLE] remoteExec ["otf_setup_fnc_bluforBuyAction",0,OTF_COMMANDVEHICLE];

    private _onCommandvehicleCreate = compile ([(missionConfigFile >> "CfgFactions" >> OTF_BLUFORFACTION),"onCommandVehicleCreate",""] call BIS_fnc_returnConfigEntry);
    [OTF_COMMANDVEHICLE,_onCommandvehicleCreate] remoteExecCall ["call",0,OTF_COMMANDVEHICLE];

    INFO_1("Command vehicle %1 created.", OTF_COMMANDVEHICLE);
    missionNamespace setVariable ["otf_setup_cvCreated", true, true];

}, []] call CBA_fnc_waitUntilAndExecute;

publicVariable "OTF_COMMANDVEHICLE";
