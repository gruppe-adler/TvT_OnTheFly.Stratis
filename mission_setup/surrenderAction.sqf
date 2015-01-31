
player_surrendered = false;

agm_surrender_action = 
["Surrender", 
{!player_surrendered}, 
{
	null = this spawn {
		[] call GRAD_fnc_surrender;};
	},
 	false] call AGM_Interaction_fnc_addInteractionSelf;

 agm_surrender_action_cancel = 
["Stop surrendering", 
{player_surrendered}, 
{
	null = this spawn {
		[] call GRAD_fnc_surrender_cancel;};
	},
 	false] call AGM_Interaction_fnc_addInteractionSelf;


GRAD_fnc_surrender = {
	//player switchMove "AmovPercMstpSrasWrflDnon_AmovPercMstpSnonWnonDnon";
	player action ["SwitchWeapon", player, player, 100];
	sleep 2.2;
	[[player,"AmovPercMstpSnonWnonDnon_AmovPercMstpSsurWnonDnon"],"switchMoveEverywhere"] call BIS_fnc_MP;
	sleep 1;
	[[player,"AmovPercMstpSsurWnonDnon"],"switchMoveEverywhere"] call BIS_fnc_MP;
	player_surrendered = true;
};


GRAD_fnc_surrender_cancel = {
	[[player,"AmovPercMstpSsurWnonDnon_AmovPercMstpSnonWnonDnon"],"switchMoveEverywhere"] call BIS_fnc_MP;
	sleep 0.95;
	player action ["SwitchWeapon", player, player, 0];
	sleep 2.3;
	[[player,""],"switchMoveEverywhere"] call BIS_fnc_MP;
	player_surrendered = false;
};