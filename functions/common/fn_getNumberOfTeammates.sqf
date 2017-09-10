params ["_side"];

private _allPlayers = [] call BIS_fnc_listPlayers;
_side countSide _allPlayers
