_pos = _this select 0;

if (player == blufor_teamlead) then {
	["OPFOR spawned. Please choose your insertion point now (Action Menu)"] call AGM_Core_fnc_displayTextStructured;
};

if (isServer || isDedicated) then {
respawn_helper setPos _pos;
};