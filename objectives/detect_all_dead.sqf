// win conditions




[] spawn {
	
	while{true} do {
	winConditionBlufor = (({side _x == east} count playableUnits) + ({side _x == east} count switchableUnits) == 0); 
  winConditionOpfor = (({side _x == west} count playableUnits)  + ({side _x == west} count switchableUnits) == 0);

    sleep 3;

    if (winConditionBlufor || BLUFOR_CAPTURED) exitWith {
    	pos = getPos whiteboard;
    	
    	MISSION_COMPLETED = true; publicVariable "MISSION_COMPLETED";
		  spectator_vehicle setVehicleLock "UNLOCKED";
   
    
   
    // end BIS cam
    [{if (!isNil "BIS_DEBUG_CAM") then {BIS_DEBUG_CAM = null;};},"BIS_fnc_spawn",true,true] call BIS_fnc_MP;
    [[[west,pos,blufor],"mission_setup\teleportEffectEnd.sqf"],"BIS_fnc_execVM",true,true] spawn BIS_fnc_MP;
    [[[east,pos,blufor],"mission_setup\teleportEffectEnd.sqf"],"BIS_fnc_execVM",true,true] spawn BIS_fnc_MP;
    [] execVM "after_action_reporter\reveal.sqf";
    
    
  	
	 	};


    if (winConditionOpfor || BLUFOR_SURRENDERED) exitWith {
      pos = getPos whiteboard;
     
      MISSION_COMPLETED = true; publicVariable "MISSION_COMPLETED";
      spectator_vehicle setVehicleLock "UNLOCKED";


  
    [{if (!isNil "BIS_DEBUG_CAM") then {BIS_DEBUG_CAM = null;};},"BIS_fnc_spawn",true,true] call BIS_fnc_MP;
    [[[west,pos,opfor],"mission_setup\teleportEffectEnd.sqf"],"BIS_fnc_execVM",true,true] spawn BIS_fnc_MP;
    [[[east,pos,opfor],"mission_setup\teleportEffectEnd.sqf"],"BIS_fnc_execVM",true,true] spawn BIS_fnc_MP;
    [] execVM "after_action_reporter\reveal.sqf";
    
    };

    
    };
};