
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
	player switchMove "AmovPercMstpSrasWrflDnon_AwopPercMstpSoptWbinDnon";
	sleep 0.85;
	player switchMove "AmovPercMstpSnonWnonDnon_AmovPercMstpSsurWnonDnon";
	sleep 0.95;
	player switchMove "AmovPercMstpSsurWnonDnon";
	player_surrendered = true;
};

GRAD_fnc_surrender_cancel = {
	player switchMove "AmovPercMstpSsurWnonDnon_AmovPercMstpSnonWnonDnon";
	sleep 0.95;
	player switchMove "AmovPercMstpSnonWnonDnon_AmovPercMstpSrasWrflDnon";
	sleep 2.3;
	player switchMove "";
	player_surrendered = false;
};


/*
surrenderAction = player addAction ["Surrender", 
	{
	player switchMove "AmovPercMstpSsurWnonDnon_AmovPercMstpSnonWnonDnon";
	sleep 0.95;
	player switchMove "AmovPercMstpSnonWnonDnon_AmovPercMstpSrasWrflDnon";
	sleep 2.3;
	player switchMove "";
	player_surrendered = false;
	},
	_Args,
	1000,
	false,
	true,
	"",
	"!player_surrendered"
];

abortSurrender = player addAction ["End Surrender", 
		{
		player switchMove "AmovPercMstpSsurWnonDnon_AmovPercMstpSnonWnonDnon";
		sleep 0.95;
		player switchMove "AmovPercMstpSnonWnonDnon_AmovPercMstpSrasWrflDnon";
		sleep 2.3;
		player switchMove "";
		player_surrendered = false;
		},
		_Args,
		1000,
		false,
		true,
		"",
		"player_surrendered"
];*/