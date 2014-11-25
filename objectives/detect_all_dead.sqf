// win conditions




[] spawn {
	
	while{true} do {
	winConditionBlufor = (({side _x == east} count playableUnits) + ({side _x == east} count switchableUnits) == 0); 
    sleep 3;
    if (winConditionBlufor || MISSION_COMPLETED) exitWith {
    	pos = getPos whiteboard;
      if (side player == west) then {
       endMission "END1";
       hintSilent "BLUFOR WINS. Mission ends now.";
		sleep 1;
		hintSilent "BLUFOR WINS. Mission ends now..";
		sleep 1;
		hintSilent "BLUFOR WINS. Mission ends now...";
		sleep 1;
		
		_emptyPosition_unit = pos  findEmptyPosition [5,100];
		player setPos _emptyPosition_unit; 
   		} else { 
   		hintSilent "BLUFOR WINS. Mission ends now.";
		sleep 1;
		hintSilent "BLUFOR WINS. Mission ends now..";
		sleep 1;
		hintSilent "BLUFOR WINS. Mission ends now...";
		sleep 1;
	
	
		_emptyPosition_unit = pos  findEmptyPosition [5,100];
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
    	if (side player == east) then {
    		hintSilent "OPFOR WINS. Mission ends now.";
		sleep 1;
		hintSilent "OPFOR WINS. Mission ends now..";
		sleep 1;
		hintSilent "OPFOR WINS. Mission ends now...";
		sleep 1;
       
       
		_emptyPosition_unit = pos  findEmptyPosition [5,100];
		player setPos _emptyPosition_unit; 
   		} else { 
   		hintSilent "OPFOR WINS. Mission ends now.";
		sleep 1;
		hintSilent "OPFOR WINS. Mission ends now..";
		sleep 1;
		hintSilent "OPFOR WINS. Mission ends now...";
		sleep 1;
	
	
		_emptyPosition_unit = pos  findEmptyPosition [5,100];
		player setPos _emptyPosition_unit; 
	};
   	 };
	};
};