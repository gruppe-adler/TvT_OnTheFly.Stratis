_pos = _this select 0;

if (isServer || isDedicated) then {
respawn_helper setPos _pos;
};