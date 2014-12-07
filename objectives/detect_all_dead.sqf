// win conditions




[] spawn {
	
	while{true} do {
	winConditionBlufor = (({side _x == east} count playableUnits) + ({side _x == east} count switchableUnits) == 0); 
  winConditionOpfor = (({side _x == west} count playableUnits)  + ({side _x == west} count switchableUnits) == 0);

    sleep 3;

    if (winConditionBlufor || MISSION_COMPLETED) exitWith {
    	pos = getPos whiteboard;
    	["<img size= '6' shadow='false' image='pic\gruppe-adler.paa'/><br/><t size='.7' color='#FFFFFF'>BLUFOR wins! </t><br /> <t size='.5'>Thank you for playing.<br /> You will now be teleported to Debriefing.</t>",0,0,3,2] spawn BIS_fnc_dynamicText;
    	sleep 3;
    	
		  spectator_vehicle setVehicleLock "UNLOCKED";



   {
   moveOut _x;
   removeAllWeapons _x;
   } 
   forEach playableUnits + switchableUnits;

    [[[west,pos],"mission_setup\teleportEffect.sqf"],"BIS_fnc_execVM",true,true] spawn BIS_fnc_MP;
    [[[east,pos],"mission_setup\teleportEffect.sqf"],"BIS_fnc_execVM",true,true] spawn BIS_fnc_MP;
		
	 	};


    if (winConditionOpfor) exitWith {
      pos = getPos whiteboard;
      ["<img size= '6' shadow='false' image='pic\gruppe-adler.paa'/><br/><t size='.7' color='#FFFFFF'>BLUFOR wins! </t><br /> <t size='.5'>Thank you for playing.<br /> You will now be teleported to Debriefing.</t>",0,0,3,2] spawn BIS_fnc_dynamicText;
      sleep 3;
  
      spectator_vehicle setVehicleLock "UNLOCKED";

   {
   moveOut _x;
   removeAllWeapons _x;
   } 
   forEach playableUnits + switchableUnits;

    [[[west,pos],"mission_setup\teleportEffect.sqf"],"BIS_fnc_execVM",true,true] spawn BIS_fnc_MP;
    [[[east,pos],"mission_setup\teleportEffect.sqf"],"BIS_fnc_execVM",true,true] spawn BIS_fnc_MP;
    
    };

    
    };
  };
};