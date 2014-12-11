_isJIP = _this select 1;

if (_isJIP && OPFOR_TELEPORTED) then {
	[player] execVM "onPlayerRespawn.sqf";
	["Sorry, you joined too late. Spectate & enjoy!"] call AGM_Core_fnc_displayTextStructured;
}
