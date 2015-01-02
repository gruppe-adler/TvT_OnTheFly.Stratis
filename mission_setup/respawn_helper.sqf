_pos = _this select 0;

if (side player == west) then {
	["OPFOR spawned. BLUFOR may spawn now."] call AGM_Core_fnc_displayTextStructured;
};

if (isServer || isDedicated) then {

	[_pos] spawn { 
		_pos = _this select 0;
		while {true} do {
				sleep 0.5;
				if (!isNil "respawn_helper") exitWith { respawn_helper setPos _pos; };
						};
  	};
};

