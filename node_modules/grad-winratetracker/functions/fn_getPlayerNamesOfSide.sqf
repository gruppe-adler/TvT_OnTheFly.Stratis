params ["_side"];

_players = ([] call BIS_fnc_listPlayers) - entities "HeadlessClient_F";
_sidePlayers = if (!isNil "_side") then {_players select {side _x == _side}} else {_players};
_sidePlayerNames = _sidePlayers apply {name _x};

_sidePlayerNames
