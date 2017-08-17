params ["_framesToWait","_code"];

addMissionEventHandler ["Draw3D",format [
    "
        missionNamespace setVariable ['otf_common_wait3Dframes_%1', (missionNamespace getVariable ['otf_common_wait3Dframes_%1',0]) + 1];
        if (otf_common_wait3Dframes_%1 > 3) exitWith {
            otf_common_wait3Dframes_%1 = nil;
            call %2;
            removeMissionEventHandler ['Draw3D',_thisEventHandler];
        };
    ",
round time + round (random 1000) ,_code]];

nil
