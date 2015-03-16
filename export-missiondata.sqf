
_logscript = compile preprocessFileLineNumbers "sock-rpc\log.sqf";
call _logscript;

_sockscript = compile preprocessFileLineNumbers "sock-rpc\sock.sqf";
call _sockscript;

diag_log "start pinging sock_rpc...";

[] spawn {
	while {true} do {
		['echo', ['keep-alive']] call sock_rpc;
		sleep 20;
	};
};

['echo', ['keep-alive']] call sock_rpc;

if (isDedicated) then {

	addMissionEventHandler ["Ended", {
		['missionEnd', []] call sock_rpc;
	}];

	waitUntil { count allUnits > 0 };

	['missionStart', [missionName, worldName]] call sock_rpc;

	if (IS_STREAMABLE == 1) then {
		['setIsStreamable', [true]] call sock_rpc;
	};

	[] spawn {
		while {(count allUnits > 0) and (ENABLE_REPLAY == 1)} do {
			playersArray = [];
			{
				pos = (getPos _x) + [getDir _x];

				status = 'unconscious';
				if (alive _x) then {
					status = 'alive';
				} else {
					status = 'dead';
				};

				vehicletype = 'unknown';
				if (vehicle _x == _x) then {
					vehicletype = 'none';
				} else {
					_veh = vehicle _x;
					if (_veh isKindOf "Helicopter") then {
						vehicletype = 'helicopter';
					};
				};

				classtype = 'unknown';
				if (
					(_x isKindOf 'B_soldier_AR_F') or
					(_x isKindOf 'I_soldier_AR_F') or
					(_x isKindOf 'O_soldier_AR_F')
				) then {
					classtype = 'mg';
				} else { if (
					(_x isKindOf 'B_Soldier_SL_F') or
					(_x isKindOf 'I_Soldier_SL_F') or
					(_x isKindOf 'O_Soldier_SL_F')
				) then {
					classtype = 'officer';
				} else { if (
					(_x isKindOf 'B_soldier_TL_F') or
					(_x isKindOf 'I_soldier_TL_F') or
					(_x isKindOf 'O_soldier_TL_F')
				) then {
					classtype = 'leader';
				} else { if (
					(_x isKindOf 'B_Soldier_GL_F') or
					(_x isKindOf 'I_Soldier_GL_F') or
					(_x isKindOf 'O_Soldier_GL_F')
				) then {
					classtype = 'unknown';
				} else { if (
					(_x isKindOf 'B_soldier_LAT_F') or
					(_x isKindOf 'I_soldier_LAT_F') or
					(_x isKindOf 'O_soldier_LAT_F')
				) then {
					classtype = 'at';
				} else { if (
					(_x isKindOf 'B_soldier_AA_F') or
					(_x isKindOf 'I_soldier_AA_F') or
					(_x isKindOf 'O_soldier_AA_F')
				) then {
					classtype = 'at';
				} else { if (
					(_x isKindOf 'B_medic_F') or
					(_x isKindOf 'I_medic_F') or
					(_x isKindOf 'O_medic_F')
				) then {
					classtype = 'medic';
				} else { if (
					(_x isKindOf 'B_Soldier_repair_F') or
					(_x isKindOf 'I_Soldier_repair_F') or
					(_x isKindOf 'O_Soldier_repair_F')
				) then {
					classtype = 'engineer';
				} else { if (
					(_x isKindOf 'B_Soldier_exp_F') or
					(_x isKindOf 'I_Soldier_exp_F') or
					(_x isKindOf 'O_Soldier_exp_F')
				) then {
					classtype = 'explosive';
				};};};};};};};};};

				playerArray = [name _x, pos, [format ["%1", side _x], classtype], [status, vehicletype]];

				playersArray = playersArray + [playerArray];

			} forEach allUnits + allDead - vehicles - agents;

			['setAllPlayerData', [playersArray]] call sock_rpc;
			sleep 2;
		}
	};
};


