
player_surrendered = false;

agm_surrender_action = 
["Surrender", 
{!player_surrendered}, 
{
	null = this spawn {[] call GRAD_fnc_surrender;}; 
},
 false] call AGM_Interaction_fnc_addInteractionSelf;

 agm_surrender_action_cancel = 
["Stop surrendering", 
{player_surrendered}, 
{
	null = this spawn {[] call GRAD_fnc_surrender_cancel;}; 
},
 false] call AGM_Interaction_fnc_addInteractionSelf;


GRAD_fnc_surrender = {
	//player switchMove "AmovPercMstpSrasWrflDnon_AmovPercMstpSnonWnonDnon";
	player action ["SwitchWeapon", player, player, 100];
	sleep 2.2;
	player switchMove "AmovPercMstpSnonWnonDnon_AmovPercMstpSsurWnonDnon";
	sleep 1;
	player switchMove "AmovPercMstpSsurWnonDnon";
	player_surrendered = true;
	playerPos = getPos player;
		_disableWASD = (finddisplay 46) displayaddeventhandler ["keydown","
		_key = _this select 1;
		_ctrl = _this select 3;

		

		if (_key == 17 || _key == 30 || _key == 31 || _key == 32) then {
			player enableSimulation false;
		};
		"];
		_disableMovement = (finddisplay 46) displayaddeventhandler ["keyup","
		_key = _this select 1;
		_ctrl = _this select 3;
			player enableSimulation true;
		"];
	
};


GRAD_fnc_surrender_cancel = {
	player switchMove "AmovPercMstpSsurWnonDnon_AmovPercMstpSnonWnonDnon";
	sleep 0.95;
	player action ["SwitchWeapon", player, player, 0];
	sleep 2.3;
	player switchMove "";
	player_surrendered = false;
	(finddisplay 46) displayremoveeventhandler ["keydown",_disableWASD];
	(finddisplay 46) displayremoveeventhandler ["keyup",_disableMovement];
};