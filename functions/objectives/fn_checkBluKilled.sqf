#include "component.hpp"

if (!isServer) exitWith {};

otf_fnc_checkBluKilled_preEliminated = {
    [{
        if (({side _x == west} count playableUnits) == 0) then {
                [] call otf_fnc_checkBluKilled_eliminated;
                [_this select 1] call CBA_fnc_removePerFrameHandler;
        };
    } , 5, []] call CBA_fnc_addPerFrameHandler;
};

otf_fnc_checkBluKilled_eliminated = {
    [{
        if (({side _x == west} count playableUnits) == 0) then {
            _downSince = missionNamespace getVariable ["otf_bluDownSince", 0];
            missionNamespace setVariable ["otf_bluDownSince", _downSince + 1];
        } else {
            missionNamespace setVariable ["otf_bluDownSince", 0];
            [] call otf_fnc_checkBluKilled_preEliminated;
            [_this select 1] call CBA_fnc_removePerFrameHandler;
        };

        if (missionNamespace getVariable ["otf_bluDownSince", 0] > 15) then {

            if (missionNamespace getVariable ["otf_endInProgressServer", false]) exitWith {INFO("A different ending is already in progress.")};
            otf_endInProgressServer = true;

            if (OTF_RANKEDMODE) then {
                otf_missionStats = [otf_teammembersOpfor,otf_teammembersBlufor,["OPFOR"],["BLUFOR"]] call grad_winrateTracker_fnc_saveWinrate;
                publicVariable "otf_missionStats";
            };

            [otf_setup_taskKillOpf,"SUCCEEDED",false] call BIS_fnc_taskSetState;
            [otf_setup_taskCaptureBlu,"FAILED",false] call BIS_fnc_taskSetState;
            [otf_setup_taskKillBlu,"FAILED",false] call BIS_fnc_taskSetState;

            missionNamespace setVariable ["otf_gameEnded", [EAST, "BLUFOR ELIMINATED!"], true];
            [] call GRAD_replay_fnc_stopRecord;
            [_this select 1] call CBA_fnc_removePerFrameHandler;
        };
    } , 1, []] call CBA_fnc_addPerFrameHandler;
};

[] call otf_fnc_checkBluKilled_preEliminated;
