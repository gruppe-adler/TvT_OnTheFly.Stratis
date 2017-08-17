params ["_teamName","_teamStatsArray"];

_allTeamNames = _teamStatsArray select 0;
_id = _allTeamNames find _teamName;

_id
