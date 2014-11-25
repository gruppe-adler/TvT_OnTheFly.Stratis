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
	pos = _this select 0;

	// doesnt work correctly in SP tests
	[[[pos],"mission_setup\createMarkerBlufor.sqf"],"BIS_fnc_execVM",true,true] spawn BIS_fnc_MP;

	if (side player == east && !OPFOR_TELEPORTED) then {

		
		{_emptyPosition_unit = pos findEmptyPosition [10,50];
		_x setPos _emptyPosition_unit;  } forEach units group player;
		openMap false;
		
		
		_opfor_marker = createMarker ["opfor_marker", pos];
		_opfor_marker setMarkerType "hd_objective";
		_opfor_marker setMarkerColor "ColorWEST";
		// with sector module, marker is only needed for getting position
		_opfor_marker setMarkerAlpha 0;

		OPFOR_TELEPORTED = TRUE;
		publicVariable "OPFOR_TELEPORTED";

		// move task to new destination
		sector_trigger setPos pos;
		["sector_moduleWEST", pos] call BIS_fnc_taskSetDestination;
		
		[[[pos],"mission_setup\respawn_helper.sqf"],"BIS_fnc_execVM",true,true] spawn BIS_fnc_MP;
		
	};

	if (side player == west && OPFOR_TELEPORTED) then {
	
		// entfernung marker zu spawnpunkt zu klein oder groß?
		// pos ist hier ein anderes pos als oben!
		_distance = pos distance (getMarkerPos "opfor_marker");
		if (_distance < blufor_spawnDistanceMin) exitWith {hintSilent format ["Too close to Objective (%1 m). Must be at least %2.", floor(_distance), blufor_spawnDistanceMin];
		player execVM "mission_setup\teleport.sqf";};
		if (_distance > blufor_spawnDistanceMax) exitWith {hintSilent format ["Too far away from Objective (%1 m). Must be at max %2.", floor(_distance), blufor_spawnDistanceMax];
		player execVM "mission_setup\teleport.sqf";
		};



		// teleport und gucken, ob posi frei ist
		{

		_emptyPosition_unit = pos findEmptyPosition [5,150];
		_x setPos _emptyPosition_unit; 
		} forEach units group player;
		
		
		choose_vehicle = blufor_teamlead addAction["<t color=""#93E352"">" + "Choose Vehicle",{[[[pos], "mission_setup\choose_vehicle.sqf"],"BIS_fnc_execVM",true,true] spawn BIS_fnc_MP;  }, _Args, 1, false, false, "","_this == _target && BLUFOR_TELEPORTED && OPFOR_TELEPORTED"];
		
		openMap false;
		BLUFOR_TELEPORTED = TRUE;
		publicVariable "BLUFOR_TELEPORTED";

		[[[pos],"mission_setup\blufor_spawn_marker.sqf"],"BIS_fnc_execVM",true,true] spawn BIS_fnc_MP;

	};
};