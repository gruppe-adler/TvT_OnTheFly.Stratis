_pos = _this select 0;

if (side player != west) exitWith {
	["BLUFOR spawned. OPFOR may now spawn their vehicle."] call AGM_Core_fnc_displayTextStructured;	
};

_blufor_marker_start = createMarkerLocal ["blufor_marker_start", _pos];
_blufor_marker_start setMarkerTypeLocal "hd_start";
_blufor_marker_start setMarkerColorLocal "ColorWEST";