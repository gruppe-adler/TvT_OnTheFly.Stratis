params [["_show",true]];


if (_show) then {
    disableSerialization;
    "showWeatherPreview" cutRsc ["otf_RscPIP","PLAIN",0,true];

    private _pipDisplay = uinamespace getVariable "otf_RscPIP";
    private _pipPIPCtrl = _pipDisplay displayCtrl 2300;

    if (isNull _pipPIPCtrl) exitWith {};

    private _camPos = [missionConfigFile >> "CfgIslands" >> worldName >> "previewCamPos","array",[worldSize/2,worldSize/2,20]] call CBA_fnc_getConfigEntry;
    _camPos set [2,20];
    private _camTarget = [missionConfigFile >> "CfgIslands" >> worldName >> "previewCamPos","array",_camPos vectorAdd [100,100,0]] call CBA_fnc_getConfigEntry;

    private _rendertarget = "renderToPIP";
    private _cam = "camera" camCreate _camPos;
    _cam cameraEffect ["Fixed", "FRONT", _rendertarget];
    _cam camSetTarget _camTarget;
    _cam camPreload 0;
    _cam camCommit 0;

    _pipPIPCtrl ctrlsettext format ["#(argb,256,256,1)r2t(%1,1.0)",_rendertarget];
} else {

    "showWeatherPreview" cutRsc ["Default","PLAIN",0,true];
};
