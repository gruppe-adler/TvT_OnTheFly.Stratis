if (side player == east && !OPFOR_TELEPORTED) then {
["Spawnpunkt wählen"] call AGM_Core_fnc_displayTextStructured;
openMap [true,false];

onMapSingleClick "[_pos] call teleportOpforGroup; onMapSingleClick ''; true";
};

if (side player == west && OPFOR_TELEPORTED) then {
["Spawnpunkt wählen"] call AGM_Core_fnc_displayTextStructured;
openMap [true,false];

onMapSingleClick "[_pos] call teleportOpforGroup; onMapSingleClick ''; true";
};


teleportOpforGroup = {
	_pos = _this select 0;

	[[[_pos],"createMarkerBlufor.sqf"],"BIS_fnc_execVM",true,true] spawn BIS_fnc_MP;

	if (side player == east && !OPFOR_TELEPORTED) then {

		
		{_emptyPosition_unit = _pos findEmptyPosition [0,50];
		_x setPos _emptyPosition_unit;  } forEach units group player;
		openMap false;
		

		_opfor_marker = createMarker ["opfor_marker", _pos];
		_opfor_marker setMarkerType "hd_objective";
		_opfor_marker setMarkerColor "ColorWEST";

		OPFOR_TELEPORTED = TRUE;
		publicVariable "OPFOR_TELEPORTED";
	};

	if (side player == west && OPFOR_TELEPORTED) then {
	
		// entfernung marker zu spawnpunkt zu klein oder groß?
		_distance = _pos distance (getMarkerPos "opfor_marker");
		if (_distance < blufor_spawnDistanceMin) exitWith {hintSilent format ["Too close to Objective (%1 m). Must be at least %2.", floor(_distance), blufor_spawnDistanceMin];
		player execVM "teleport.sqf";};
		if (_distance > blufor_spawnDistanceMax) exitWith {hintSilent format ["Too far away from Objective (%1 m). Must be at max %2.", floor(_distance), blufor_spawnDistanceMax];
		player execVM "teleport.sqf";
		};

		// teleport und gucken, ob posi frei ist
		{
		_emptyPosition_unit = _pos findEmptyPosition [5,60];
		_x setPos _emptyPosition_unit; 
		} forEach units group player;
		
		_emptyPosition_vehicle = _pos findEmptyPosition [15,60,"B_Truck_01_covered_F"];
		

		blufor_vehicle setPos _emptyPosition_vehicle;

		openMap false;
		BLUFOR_TELEPORTED = TRUE;
		publicVariable "BLUFOR_TELEPORTED";

		_blufor_marker_start = createMarkerLocal ["blufor_marker_start", _pos];
		_blufor_marker_start setMarkerTypeLocal "hd_start";
		_blufor_marker_start setMarkerColorLocal "ColorWEST";
	};
};