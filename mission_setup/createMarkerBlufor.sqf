_pos = _this select 0;

if (!(side player == west)) exitWith {};

//if (bluforMarkerDrawn != nil) exitWith {};
if (bluforMarkerDrawn) exitWith {};

bluforMarkerDrawn = true;

_inner_marker = createMarkerLocal ["inner_marker", _pos];
_inner_marker setMarkerTypeLocal "mil_unknown";
_inner_marker setMarkerColorLocal "ColorEast";
_inner_marker setMarkerShapeLocal "ELLIPSE";
_inner_marker setMarkerSizeLocal [blufor_spawnDistanceMin, blufor_spawnDistanceMin];
_inner_marker setMarkerBrushLocal "SolidBorder";

_outer_marker = createMarkerLocal ["outer_marker", _pos];
_outer_marker setMarkerTypeLocal "mil_unknown";
_outer_marker setMarkerColorLocal "ColorEast";
_outer_marker setMarkerShapeLocal "ELLIPSE";
_outer_marker setMarkerSizeLocal [blufor_spawnDistanceMax, blufor_spawnDistanceMax];
_outer_marker setMarkerBrushLocal "Border";


[]spawn {
	
	waitUntil {BLUFOR_TELEPORTED};

	deleteMarker "inner_marker";
	deleteMarker "outer_marker";
};