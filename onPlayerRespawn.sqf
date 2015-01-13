_unit = _this select 0;

if (!firstspawn) exitWith {firstspawn = true;};

if (!local _unit) exitWith {};

if (WINCONDITIONOPFOR || WINCONDITIONBLUFOR || BLUFOR_CAPTURED || BLUFOR_SURRENDERED) exitWith {
	cutText ["","BLACK OUT"];
	if (!isNil "BIS_DEBUG_CAM") exitwith {BIS_DEBUG_CAM = nil;};

	pos = getPos whiteboard;
	[player,pos] execVM "mission_setup\teleportUnitToEmptySpot.sqf";
	removeAllWeapons player;
	[_unit] joinSilent (createGroup civilian);
	cutText ["","BLACK IN"];

	if (WINCONDITIONOPFOR || BLUFOR_SURRENDERED) then {
 	["<img size= '6' shadow='false' image='pic\gruppe-adler.paa'/><br/><t size='.7' color='#FFFFFF'>" + localize "str_GRAD_thankyouforplaying_opfor" + "</t><br /><t size='.5'>" + localize "str_GRAD_thankyouforplaying2" + "<br />" + localize "str_GRAD_thankyouforplaying3" + "</t>",0,0,3,2] spawn BIS_fnc_dynamicText;
      sleep 3;
	};

	if (WINCONDITIONBLUFOR || BLUFOR_CAPTURED) then {
 	["<img size= '6' shadow='false' image='pic\gruppe-adler.paa'/><br/><t size='.7' color='#FFFFFF'>" + localize "str_GRAD_thankyouforplaying_blufor" + "</t><br /><t size='.5'>" + localize "str_GRAD_thankyouforplaying2" + "<br />" + localize "str_GRAD_thankyouforplaying3" + "</t>",0,0,3,2] spawn BIS_fnc_dynamicText;
      sleep 3;
	};
	
	
};


removeAllWeapons player:
removeAllActions player;
// join civilian side, because end trigger relies on side
[_unit] joinSilent (createGroup civilian);
// set position above objective


_unit addAction["<t color='#d18d1f'>" + localize "str_GRAD_action_beginspectator1" + "</t>" + localize "str_GRAD_action_beginspectator2","spectator\callSpectator.sqf", _Args, 1, false, false, "","_this == _target || _this in _target"];

sleep 0.1;
_unit moveInCargo spectator_vehicle;
// start spec cam
[_unit] execVM "spectator\callSpectator.sqf";

(findDisplay 46) displayAddEventHandler ["MouseButtonDown", "if (_this select 1 == 1) then {call mouseclickhint};"];

mouseclickhint = {
	
	[localize 'str_GRAD_hint_endspectator'] call AGM_Core_fnc_displayTextStructured;
};
