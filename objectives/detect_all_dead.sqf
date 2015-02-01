// win conditions, detected by server only

[] spawn {
    
    while{true} do {
    WINCONDITIONBLUFOR = (({side _x == east} count playableUnits) + ({side _x == east} count switchableUnits) == 0); 
    WINCONDITIONOPFOR= (({side _x == west} count playableUnits)  + ({side _x == west} count switchableUnits) == 0);

      sleep 3;

      if (WINCONDITIONBLUFOR || BLUFOR_CAPTURED) exitWith {
        pos = getPos whiteboard;
        
        MISSION_COMPLETED = true; publicVariable "MISSION_COMPLETED";
        spectator_vehicle setVehicleLock "UNLOCKED";
      WINCONDITIONBLUFOR = true; publicVariable "WINCONDITIONBLUFOR";
     
      
     
        
      [[[west,pos,blufor],"mission_setup\teleportEffectEnd.sqf"],"BIS_fnc_execVM",true,true] spawn BIS_fnc_MP;
      [[[east,pos,blufor],"mission_setup\teleportEffectEnd.sqf"],"BIS_fnc_execVM",true,true] spawn BIS_fnc_MP;
      [[[civilian,pos,blufor],"mission_setup\teleportEffectEnd.sqf"],"BIS_fnc_execVM",true,true] spawn BIS_fnc_MP;
      //[] execVM "after_action_reporter\reveal.sqf";
      
      
      
      };


      if (WINCONDITIONOPFOR || BLUFOR_SURRENDERED) exitWith {
        pos = getPos whiteboard;
       
        MISSION_COMPLETED = true; publicVariable "MISSION_COMPLETED";
        spectator_vehicle setVehicleLock "UNLOCKED";
        WINCONDITIONOPFOR = true; publicVariable "WINCONDITIONOPFOR";


    
      
      [[[west,pos,opfor],"mission_setup\teleportEffectEnd.sqf"],"BIS_fnc_execVM",true,true] spawn BIS_fnc_MP;
      [[[east,pos,opfor],"mission_setup\teleportEffectEnd.sqf"],"BIS_fnc_execVM",true,true] spawn BIS_fnc_MP;
      [[[civilian,pos,opfor],"mission_setup\teleportEffectEnd.sqf"],"BIS_fnc_execVM",true,true] spawn BIS_fnc_MP;
      //[] execVM "after_action_reporter\reveal.sqf";
      
      };

      
      };
  };
