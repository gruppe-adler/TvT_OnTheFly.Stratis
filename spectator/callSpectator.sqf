_unit = _this select 0;
_unit call cameraOldPimped;
_text = format ["<t size='0.7'>* auf dem Numpad für FreeLook<br />Mausrad switcht Player<br />Rechtsklick beendet Cam <br />YELLING zur Unterhaltung</t>",""];
[_text] call AGM_Core_fnc_displayTextStructured;
//private "_camera";
//_camera = "camera" camcreate [0,0,0];
//_camera camsettarget respawn_helper; // sektor-tonne
//_camera cameraEffect ["internal", "BACK"];
//_camera camsetrelpos [0, 0, 4]; // 4m über tonne
//_camera camCommand "inertia on";
//_camera camCommit 0;