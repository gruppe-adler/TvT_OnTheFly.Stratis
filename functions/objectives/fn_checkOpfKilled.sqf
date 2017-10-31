#include "component.hpp"

if (!isServer) exitWith {};

otf_fnc_checkOpfKilled_preEliminated = {
    [{
        if (({side _x == east} count playableUnits) == 0) then {
            [] call otf_fnc_checkOpfKilled_eliminated;
            [_this select 1] call CBA_fnc_removePerFrameHandler;
        };
    } , 10, []] call CBA_fnc_addPerFrameHandler;
};

otf_fnc_checkOpfKilled_eliminated = {
    [{
        if (({side _x == east} count playableUnits) == 0) then {
            _downSince = missionNamespace getVariable ["otf_opfDownSince", 0];
            missionNamespace setVariable ["otf_opfDownSince", _downSince + 1];
        } else {
            missionNamespace setVariable ["otf_opfDownSince", 0];
            [] call otf_fnc_checkOpfKilled_preEliminated;
            [_this select 1] call CBA_fnc_removePerFrameHandler;
        };

        if (missionNamespace getVariable ["otf_opfDownSince", 0] > 15) then {

            if (missionNamespace getVariable ["otf_endInProgressServer", false]) exitWith {INFO("A different ending is already in progress.")};
            otf_endInProgressServer = true;

            if (OTF_RANKEDMODE) then {
                otf_missionStats = [otf_teammembersBlufor,otf_teammembersOpfor,["BLUFOR"],["OPFOR"]] call grad_winrateTracker_fnc_saveWinrate;
                publicVariable "otf_missionStats";
            };

            [otf_setup_taskKillOpf,"FAILED",false] call BIS_fnc_taskSetState;
            [otf_setup_taskCaptureBlu,"SUCCEEDED",false] call BIS_fnc_taskSetState;
            [otf_setup_taskKillBlu,"SUCCEEDED",false] call BIS_fnc_taskSetState;

            missionNamespace setVariable ["otf_gameEnded", [WEST, "OPFOR ELIMINATED!"], true];
            [GRAD_replay_fnc_stopRecord,[],5] call CBA_fnc_waitAndExecute;
            [_this select 1] call CBA_fnc_removePerFrameHandler;
        };
    } , 1, []] call CBA_fnc_addPerFrameHandler;
};

[] call otf_fnc_checkOpfKilled_preEliminated;
