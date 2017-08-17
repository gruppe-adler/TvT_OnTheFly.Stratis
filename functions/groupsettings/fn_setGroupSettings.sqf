/*  Sets group names and radio channels
*
*/

#include "component.hpp"

if (!isServer) exitWith {};

_allgroups = [] call otf_groupsettings_fnc_findPlayableGroups;
[_allGroups] call otf_groupsettings_fnc_setDynamicGroupNames;
"groupsettings: groups registered" remoteExec ["systemChat",0,false];
