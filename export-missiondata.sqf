
getPlayerArray = {
	private ['_x', '_name', '_status', '_vehicletype', '_classtype'];
	_x = _this select 0;

	_pos = (getPos _x) + [getDir _x];

	_name = _x getVariable ['ga_name', ''];
	if (_name == '') then {
		if (alive _x) then {
			_name = name _x;
			_x setVariable ['ga_name', _name];
		} else {
			_name = 'unknown';
			diag_log 'unit died before I could set its name :(';
		};
	};

	_status = 'unconscious';
	if (_x getVariable ["AGM_isUnconscious", false]) then {
		if (alive _x) then {
			_status = 'alive';
		} else {
			_status = 'dead';
		};
	};

	_vehicletype = 'unknown';
	if (vehicle _x == _x) then {
		_vehicletype = 'none';
	} else {
		_veh = vehicle _x;
		if (_veh isKindOf "Helicopter") then {
			_vehicletype = 'helicopter';
		};
	};

	_classtype = 'unknown';
	if (
		(_x isKindOf 'B_soldier_AR_F') or
		(_x isKindOf 'I_soldier_AR_F') or
		(_x isKindOf 'O_soldier_AR_F')
	) then {
		_classtype = 'mg';
	} else { if (
		(_x isKindOf 'B_Soldier_SL_F') or
		(_x isKindOf 'I_Soldier_SL_F') or
		(_x isKindOf 'O_Soldier_SL_F')
	) then {
		_classtype = 'officer';
	} else { if (
		(_x isKindOf 'B_soldier_TL_F') or
		(_x isKindOf 'I_soldier_TL_F') or
		(_x isKindOf 'O_soldier_TL_F')
	) then {
		_classtype = 'leader';
	} else { if (
		(_x isKindOf 'B_Soldier_GL_F') or
		(_x isKindOf 'I_Soldier_GL_F') or
		(_x isKindOf 'O_Soldier_GL_F')
	) then {
		_classtype = 'unknown';
	} else { if (
		(_x isKindOf 'B_soldier_LAT_F') or
		(_x isKindOf 'I_soldier_LAT_F') or
		(_x isKindOf 'O_soldier_LAT_F')
	) then {
		_classtype = 'at';
	} else { if (
		(_x isKindOf 'B_soldier_AA_F') or
		(_x isKindOf 'I_soldier_AA_F') or
		(_x isKindOf 'O_soldier_AA_F')
	) then {
		_classtype = 'at';
	} else { if (
		(_x isKindOf 'B_medic_F') or
		(_x isKindOf 'I_medic_F') or
		(_x isKindOf 'O_medic_F')
	) then {
		_classtype = 'medic';
	} else { if (
		(_x isKindOf 'B_Soldier_repair_F') or
		(_x isKindOf 'I_Soldier_repair_F') or
		(_x isKindOf 'O_Soldier_repair_F')
	) then {
		_classtype = 'engineer';
	} else { if (
		(_x isKindOf 'B_Soldier_exp_F') or
		(_x isKindOf 'I_Soldier_exp_F') or
		(_x isKindOf 'O_Soldier_exp_F')
	) then {
		_classtype = 'explosive';
	};};};};};};};};};

	[
		_name,
		_pos,
		[format ["%1", side _x], _classtype],
		[_status, _vehicletype]
	];
};

diag_log "export-missiondata.sqf: start";

_logscript = compile preprocessFileLineNumbers "vendor\sock-rpc\log.sqf";
call _logscript;

_sockscript = compile preprocessFileLineNumbers "vendor\sock-rpc\sock.sqf";
call _sockscript;

diag_log "export-missiondatat.sqf: ok. start pinging sock_rpc...";

['echo', ['keep-alive']] call sock_rpc;

if (isDedicated) then {

	deadPlayerNames = [];

	waitUntil { count allUnits > 0 };

	['missionStart', [missionName, worldName]] call sock_rpc;

	if (IS_STREAMABLE) then {
		['setIsStreamable', [true]] call sock_rpc;
	};

	[] spawn {
		while {(count allUnits > 0) and (ENABLE_REPLAY) and (!MISSION_COMPLETED)} do {
			playersArray = [];
			{
				playerArray = [_x] call getPlayerArray;

				if ((deadPlayerNames find (playerArray select 0)) == -1) then {
					playersArray = playersArray + [playerArray];
				};
				if (((playerArray select 3) select 0) == 'dead') then {
					deadPlayerNames = deadPlayerNames + [(playerArray select 0)];
				};
			} forEach allUnits + allDead - vehicles - agents;

			['setAllPlayerData', [playersArray]] call sock_rpc;
			sleep 2;
		};

		['missionEnd', []] call sock_rpc;
	};
};
