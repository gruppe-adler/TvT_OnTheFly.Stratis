#include "component.hpp"

if (!hasInterface) exitWith {};
if (playerSide != EAST) exitWith {};
if (missionNamespace getVariable ["otf_init_opforSpawnChosen", false]) exitWith {};

[{!isNull (findDisplay 46)}, {
    [true] call otf_choosePlayArea_fnc_showWeatherPreview;
    [3,{otf_choosePlayArea_preloadFinished = true}] call otf_common_fnc_wait3Dframes;
}, []] call CBA_fnc_waitUntilAndExecute;

[{!isNull (findDisplay 46) && (missionNamespace getVariable ["otf_choosePlayArea_preloadFinished",false])}, {

    openMap [true,true];
    [] call otf_choosePlayArea_fnc_opforWaitDialog;

    if (isNil "opforcommander") exitWith {};
    if (player != opforcommander) exitWith {};

    ["Opfor Commander %1 is now choosing a playzone.", profileName] call otf_common_fnc_serverLog;

    //MAPCLICK EVENT ===============================================================
    mcd_chooseOpforSpawnClick = [
        "mcd_chooseOpforSpawn",
        "onMapSingleClick",
        {
            //create marker
            if (count _pos > 0 && {!(_pos isEqualTo [0,0,0])}) then {
                [EAST,"selectionMarker",true,_pos,"hd_start","COLOREAST"] call otf_common_fnc_createSideMarker;
                OTF_OPFORSPAWNPOS = _pos;
            } else {
                [EAST,"selectionMarker"] call otf_common_fnc_deleteSideMarker;
                OTF_OPFORSPAWNPOS = [0,0,0];
            };
        }
    ] call BIS_fnc_addStackedEventHandler;

    //CONFIRM SELECTION ============================================================
    mcd_onChooseOpforSpawnKeyDown = (findDisplay 46) displayAddEventHandler ["KeyDown", {
        if ((_this select 1 == 28)||(_this select 1 == 156)) then {
            if (OTF_OPFORSPAWNPOS isEqualTo [0,0,0]) then {
                ["PLEASE CHOOSE A POSITION!"] call otf_ui_fnc_confirmHint;

            } else {
                if (surfaceisWater OTF_OPFORSPAWNPOS) then {
                    ["PLEASE CHOOSE A POSITION NOT ON WATER!"] call otf_ui_fnc_confirmHint;

                } else {
                    ["fn_chooseOpforSpawn - %1 chose location %2", profileName, OTF_OPFORSPAWNPOS] call otf_common_fnc_serverLog;
                    [EAST,"selectionMarker"] call otf_common_fnc_deleteSideMarker;

                    player say "taskSucceeded";
                    [true,"SETTING UP PLAYZONE","PLEASE WAIT"] call otf_ui_fnc_twoLineHint;

                    otf_init_opforSpawnChosen = true;
                    publicVariable "otf_init_opforSpawnChosen";
                    publicVariable "OTF_OPFORSPAWNPOS";

                    ["mcd_chooseOpforSpawn", "onMapSingleClick"] call BIS_fnc_removeStackedEventHandler;
                    (findDisplay 46) displayRemoveEventHandler ["KeyDown", mcd_onChooseOpforSpawnKeyDown];
                };
            };
        };
    }];
}, []] call CBA_fnc_waitUntilAndExecute;
