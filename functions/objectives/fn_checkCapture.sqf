#include "component.hpp"

if (!isServer) exitWith {};

[{
    if (OTF_BLUFORINCONTROL) then {
        OTF_CAPTURETIMEREMAINING = OTF_CAPTURETIMEREMAINING - 1;
        publicVariable "OTF_CAPTURETIMEREMAINING";

        if (OTF_CAPTURETIMEREMAINING <= 0) then {
            if (missionNamespace getVariable ["otf_endInProgressServer", false]) exitWith {INFO("A different ending is already in progress.")};
            otf_endInProgressServer = true;

            if (OTF_RANKEDMODE) then {
                otf_missionStats = [otf_teammembersBlufor,otf_teammembersOpfor,["BLUFOR"],["OPFOR"]] call grad_winrateTracker_fnc_saveWinrate;
                publicVariable "otf_missionStats";
            };

            [otf_setup_taskKillOpf,"FAILED",false] call BIS_fnc_taskSetState;
            [otf_setup_taskCaptureBlu,"SUCCEEDED",false] call BIS_fnc_taskSetState;
            [otf_setup_taskKillBlu,"SUCCEEDED",false] call BIS_fnc_taskSetState;

            missionNamespace setVariable ["otf_gameEnded", [WEST, "BARREL CAPTURED!"], true];
            [] call GRAD_replay_fnc_stopRecord;
            [_this select 1] call CBA_fnc_removePerFrameHandler;
        };
    } else {
        OTF_CAPTURETIMEREMAINING = OTF_CAPTURETIME;
    };
} , 1, []] call CBA_fnc_addPerFrameHandler;
