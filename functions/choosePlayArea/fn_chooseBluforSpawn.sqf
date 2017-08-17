#include "component.hpp"

if (!hasInterface) exitWith {};
if (playerSide != WEST) exitWith {};
if (missionNamespace getVariable ["otf_init_bluforSpawnChosen", false]) exitWith {};


[{!isNull (findDisplay 46)}, {
    [true] call otf_choosePlayArea_fnc_showWeatherPreview;
    [3,{otf_choosePlayArea_preloadFinished = true}] call otf_common_fnc_wait3Dframes;
}, []] call CBA_fnc_waitUntilAndExecute;


[{missionNamespace getVariable ["otf_choosePlayArea_preloadFinished",false]}, {
    openMap [true,true];
    [] call otf_choosePlayArea_fnc_bluforWaitDialog;
}, []] call CBA_fnc_waitUntilAndExecute;


if !([player] call otf_common_fnc_isCommander) exitWith {};

[{!isNull (findDisplay 46) && (missionNamespace getVariable ["otf_choosePlayArea_preloadFinished",false])}, {
    ["Blufor Commander %1 is now choosing a spawn position.", profileName] call otf_common_fnc_serverLog;

    //MAPCLICK EVENT ===============================================================
    mcd_chooseBluforSpawnClick = [
        "mcd_chooseBluforSpawn",
        "onMapSingleClick",
        {
            if (count _pos > 0 && {!(_pos isEqualTo [0,0,0])} && {missionNamespace getVariable ["otf_init_opforSpawnChosen", false]}) then {
                [WEST,"spawnMarker",true,_pos,"hd_start","COLORWEST"] call otf_common_fnc_createSideMarker;
                OTF_BLUFORSPAWNPOS = _pos;
            } else {
                [WEST,"spawnMarker"] call otf_common_fnc_deleteSideMarker;
                OTF_BLUFORSPAWNPOS = [0,0,0];
            };
        }
    ] call BIS_fnc_addStackedEventHandler;

    //CONFIRM SELECTION ============================================================
    mcd_onChooseBluforSpawnKeyDown = (findDisplay 46) displayAddEventHandler ["KeyDown", {

        if ((_this select 1 == 28)||(_this select 1 == 156)) then {
            if (OTF_BLUFORSPAWNPOS isEqualTo [0,0,0]) then {
                ["PLEASE CHOOSE A SPAWN POSITION BY CLICKING ON THE MAP"] call otf_ui_fnc_confirmHint;

            } else {

                //position not in blue area
                if (OTF_OPFORSPAWNPOS distance OTF_BLUFORSPAWNPOS < OTF_BLUFORSTARTDIST) then {
                    ["PLEASE CHOOSE A SPAWN POSITION OUTSIDE THE BLUE CIRCLE"] call otf_ui_fnc_confirmHint;
                } else {

                    //position in water
                    if (surfaceIsWater OTF_BLUFORSPAWNPOS) then {
                        ["PLEASE CHOOSE A SPAWN POSITION ON LAND"] call otf_ui_fnc_confirmHint;
                    } else {

                        //position successfully chosen
                        ["fn_chooseSpawn - %1 chose spawn at %2.", profileName, OTF_BLUFORSPAWNPOS] call otf_common_fnc_serverLog;

                        player say "taskSucceeded";
                        [true,"SETTING UP SPAWN","PLEASE WAIT"] call otf_ui_fnc_twoLineHint;

                        otf_init_bluforSpawnChosen = true;
                        publicVariable "otf_init_bluforSpawnChosen";
                        publicVariable "OTF_BLUFORSPAWNPOS";

                        ["mcd_chooseBluforSpawn", "onMapSingleClick"] call BIS_fnc_removeStackedEventHandler;
                        (findDisplay 46) displayRemoveEventHandler ["KeyDown", mcd_onChooseBluforSpawnKeyDown];
                    };
                };
            };
        };
    }];
}, []] call CBA_fnc_waitUntilAndExecute;
