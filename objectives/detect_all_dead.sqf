// win conditions




[] spawn {
	
	while{true} do {
	winConditionBlufor = (({side _x == east} count playableUnits) == 0);
    sleep 3;
    if (winConditionBlufor || MISSION_COMPLETED) then {
      if (side player == west) then {
       endMission "END1";
       hintSilent "BLUFOR WINS. Mission ends now.";
		sleep 1;
		hintSilent "BLUFOR WINS. Mission ends now..";
		sleep 1;
		hintSilent "BLUFOR WINS. Mission ends now...";
		sleep 1;
   		} else { 
   	hintSilent "BLUFOR WINS. Mission ends now.";
		sleep 1;
		hintSilent "BLUFOR WINS. Mission ends now..";
		sleep 1;
		hintSilent "BLUFOR WINS. Mission ends now...";
		sleep 1;
	endMission "LOSER"; };
   	 };
	};
};

[] spawn {
	
	while{true} do {
	winConditionOpfor = (({side _x == west} count playableUnits)  == 0);
    sleep 3;
    if (winConditionOpfor) then {
    	if (side player == east) then {
    		hintSilent "OPFOR WINS. Mission ends now.";
		sleep 1;
		hintSilent "OPFOR WINS. Mission ends now..";
		sleep 1;
		hintSilent "OPFOR WINS. Mission ends now...";
		sleep 1;
       endMission "END1";
   		} else { 
   	hintSilent "OPFOR WINS. Mission ends now.";
		sleep 1;
		hintSilent "OPFOR WINS. Mission ends now..";
		sleep 1;
		hintSilent "OPFOR WINS. Mission ends now...";
		sleep 1;endMission "LOSER"; };
   	 };
	};
};