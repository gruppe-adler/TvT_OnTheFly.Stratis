_side = _this select 0;
_pos = _this select 1;
_winner = _this select 2;

if (side player != _side) exitWith {};





if (_winner == opfor) then {
 ["<img size= '6' shadow='false' image='pic\gruppe-adler.paa'/><br/><t size='.7' color='#FFFFFF'>OPFOR wins! </t><br /> <t size='.5'>Thank you for playing.<br /> You will now be teleported to Debriefing.</t>",0,0,3,2] spawn BIS_fnc_dynamicText;
      sleep 3;
};

if (_winner == blufor) then {
 ["<img size= '6' shadow='false' image='pic\gruppe-adler.paa'/><br/><t size='.7' color='#FFFFFF'>BLUFOR wins! </t><br /> <t size='.5'>Thank you for playing.<br /> You will now be teleported to Debriefing.</t>",0,0,3,2] spawn BIS_fnc_dynamicText;
      sleep 3;
};

setPlayerRespawnTime 0;
forceRespawn player;
