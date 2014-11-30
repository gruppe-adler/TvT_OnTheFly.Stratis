// win conditions




[] spawn {
	
	while{true} do {
	winConditionBlufor = (({side _x == east} count playableUnits) + ({side _x == east} count switchableUnits) == 0); 
    sleep 3;
    if (winConditionBlufor || MISSION_COMPLETED) exitWith {
    	pos = getPos whiteboard;
    	["<img size= '6' shadow='false' image='pic\gruppe-adler.paa'/><br/><t size='.7' color='#FFFFFF'>BLUFOR wins! </t><br /> <t size='.5'>Thank you for playing.<br /> You will now be teleported to Debriefing.</t>",0,0,3,2] spawn BIS_fnc_dynamicText;
    	sleep 3;
    	titleCut ["", "WHITE OUT", 1];
    	sleep 0.7;
    	titleCut ["", "WHITE IN", 1];
		spectator_vehicle setVehicleLock "UNLOCKED";

      if (side player == west) then {
        _emptyPosition_unit = pos findEmptyPosition [5,50];
		player setPos _emptyPosition_unit; 
   		};
   		if (side player == east) then {
   		_emptyPosition_unit = pos findEmptyPosition [5,50];
		player setPos _emptyPosition_unit; 
   		};
   		if (side player == civilian) then { 
   		spectator_vehicle setVehicleLock "UNLOCKED";
		moveOut _unit;
	
		_emptyPosition_unit = pos  findEmptyPosition [5,50];
		player setPos _emptyPosition_unit; 
	 	};
   	 };
	};
};

[] spawn {
	
	while{true} do {

	winConditionOpfor = (({side _x == west} count playableUnits)  + ({side _x == west} count switchableUnits) == 0); 
    sleep 3;
    if (winConditionOpfor) exitWith {
    	pos = getPos whiteboard;
    	["<img size= '6' shadow='false' image='pic\gruppe-adler.paa'/><br/><t size='.7' color='#FFFFFF'>OPFOR wins! </t><br /> <t size='.5'>Thank you for playing.<br /> You will now be teleported to Debriefing.</t>",0,0,3,2] spawn BIS_fnc_dynamicText;
    	sleep 3;
    	titleCut ["", "WHITE OUT", 1];
    	sleep 0.7;
    	titleCut ["", "WHITE IN", 1];
		spectator_vehicle setVehicleLock "UNLOCKED";

    	 if (side player == west) then {
        _emptyPosition_unit = pos findEmptyPosition [5,50];
		player setPos _emptyPosition_unit; 
   		};
   		if (side player == east) then {
   		_emptyPosition_unit = pos findEmptyPosition [5,50];
		player setPos _emptyPosition_unit; 
   		};
   		if (side player == civilian) then { 
   		
		moveOut _unit;
	
		_emptyPosition_unit = pos  findEmptyPosition [5,50];
		player setPos _emptyPosition_unit; 
		};
   	 };
	};
};