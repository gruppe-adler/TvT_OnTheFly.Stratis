// AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
 
// autoloadouts.sqf
 
// Aufruf:
//
//[
// ["ARC_GER_Flecktarn_soldier_LAT", "ksk_g3ka4_2"],
// ["ARC_GER_Flecktarn_soldier_FOO", "bar"]
// // ....
//] execVM "autoloadouts.sqf";
//
// ruft loadouts/ksk_g3ka4_2.sqf für alle Einheiten der Klasse ARC_GER_Flecktarn_soldier_LAT auf.
// "loadouts/ksk_g3ka4_2.sqf" kann aus VAS kopiert sein, allerdings muß am Anfang this = _this; gesetzt werden
 
private ["_loadouts"];
 
_loadouts = _this;
 
if ((!isServer) and (!isDedicated)) exitWith {};

 
getNewlyJoinedPlayers = {
private ["_isSet", "_result"];
_result = [];
{
_isSet = _x getVariable ["autoloadout_is_set", 0];
if (_isSet != 1) then {
_x setVariable ["autoloadout_is_set", 1];
_result = _result + [_x];
diag_log format ["adding to new players: %2 (%1)", typeOf _x, name _x];
} else {
diag_log format ["unit %2 (%1) is already known", typeOf _x, name _x];
};
} forEach allUnits;
 
_result;
};
 
 
tryLoadout = {
private ["_loadoutDefinition", "_unit", "_type", "_loadOutClass", "_loadoutFileName", "_xxx", "_loadoutPath"];
_loadoutDefinition = _this select 0;
_unit = _this select 1;
_type = typeOf _unit;
_loadOutClass = _loadoutDefinition select 0;
_loadoutFileName = _loadoutDefinition select 1;
 
_loadoutPath = "loadouts\" + _loadoutFileName + ".sqf";
 
if (_type == _loadOutClass) then {
diag_log format ["applying loadout %1 for %3 (%2) ...", _loadoutPath, _loadOutClass, name _unit];
[
[
[_unit],
_loadoutPath
],
"BIS_fnc_execVM",
_unit,
false,
true
] call BIS_fnc_MP;
};
};
 
setLoadout = {
private ["_type"];
_type = typeOf _this;
diag_log format ["searching for loadout for %2 (%1)...", _type, name _this];
{
[_x, _this] call tryLoadout;
} forEach _loadouts;
};
 
onPlayersConnected = {
{
_x call setLoadout;
} forEach ([] call getNewlyJoinedPlayers);
};
 
[
"autoloadout_handler",
"onPlayerConnected",
onPlayersConnected
] call BIS_fnc_addStackedEventHandler;
 
[] call onPlayersConnected;