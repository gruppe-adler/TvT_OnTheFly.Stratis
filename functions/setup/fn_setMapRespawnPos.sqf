#include "component.hpp"

if (!isServer) exitWith {};

_bluforpos = ["spawnPosBlu"] call otf_common_fnc_getIslandCfgValue;
_opforpos = ["spawnPosOpf"] call otf_common_fnc_getIslandCfgValue;

_bluforpos = _bluforpos findEmptyPosition [0,20];
_opforpos = _opforpos findEmptyPosition [0,20];

"respawn_west" setMarkerPos _bluforpos;
"respawn_east" setMarkerPos _opforpos;
