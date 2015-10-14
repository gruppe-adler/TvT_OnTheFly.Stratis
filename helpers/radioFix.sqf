if (isDedicated) exitWith {};

sleep 5;
[] spawn {
_radioKnown = false;
_bool_tmp = false;
_newstring = "";
radioID = "";
	
	while {!BLUFOR_TELEPORTED} do {
		

		if (side player == west) then {
			for [{_i=0}, {_i<999}, {_i=_i+1}] do
			{ 
				_newstring = "tf_anprc152_" + str _i;
				_bool_tmp = _newstring in (items player + assignedItems player);	
				if (_bool_tmp && !_radioKnown) exitWith {
					_radioKnown = true; 
					radioID = _newstring;
					_bool_tmp = false;
					//hintSilent format ["your radio id is %1",radioID];
				};
			};
		};


		if (side player == east) then {
			for [{_i=0}, {_i<999}, {_i=_i+1}] do
			{ 
				_newstring = "tf_fadak_" + str _i;
				_bool_tmp = _newstring in (items player + assignedItems player);
				if (_bool_tmp && !_radioKnown) exitWith {
					_radioKnown = true; 
					radioID = _newstring;
					_bool_tmp = false;
					//hintSilent format ["your radio id is %1",radioID];
				};
			};
		};
		
		if (!_bool_tmp && _radioKnown) then {
			//hintSilent "";
			player linkItem radioID;
		};
		sleep 1;
	};

	if (true) exitWith {};

};