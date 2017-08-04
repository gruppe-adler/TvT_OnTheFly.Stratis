params ["_teamID","_teamStatsArray"];

_winrate = if (_teamID >= 0) then {
    (_teamStatsArray select 1) select _teamID;
} else {
    0
};

_winrate
