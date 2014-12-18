_side = _this select 0;
_pos = _this select 1;
_winner = _this select 2;

if (side player != _side) exitWith {};

if ((player getVariable ["AGM_Unconscious", False]) || (player getVariable ["AGM_isUnconscious", False])) then {
	setPlayerRespawnTime 0;
	forceRespawn player;

};

if (_winner == opfor) then {
 ["<img size= '6' shadow='false' image='pic\gruppe-adler.paa'/><br/><t size='.7' color='#FFFFFF'>OPFOR wins! </t><br /> <t size='.5'>Thank you for playing.<br /> You will now be teleported to Debriefing.</t>",0,0,3,2] spawn BIS_fnc_dynamicText;
      sleep 3;
};

if (_winner == blufor) then {
 ["<img size= '6' shadow='false' image='pic\gruppe-adler.paa'/><br/><t size='.7' color='#FFFFFF'>BLUFOR wins! </t><br /> <t size='.5'>Thank you for playing.<br /> You will now be teleported to Debriefing.</t>",0,0,3,2] spawn BIS_fnc_dynamicText;
      sleep 3;
};

_centre = [ _pos, random 5 , random 360 ] call BIS_fnc_relPos;
_spawn_area = [];
_max_distance = 50;
	while{ count _spawn_area < 1 } do
		{
		    _spawn_area = _centre findEmptyPosition[ 2 , _max_distance , "B_static_AT_F" ];
		    _max_distance = _max_distance + 10;

		};

waitUntil {count _spawn_area >= 1;};
playSound "beam";
titleCut ["", "BLACK OUT", 1];
moveOut player;
removeAllWeapons player;
player setDamage 0;

BIS_DEBUG_CAM = nil;
sleep 1.2;
player setPos _spawn_area;
if (player != opfor_teamlead) then {
player joinSilent opfor_teamlead;
};
titleCut ["", "BLACK IN", 1];