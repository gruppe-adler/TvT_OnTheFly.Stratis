#include "component.hpp"

if (!hasInterface) exitWith {};

[{!isNull player}, {
    if !([player] call otf_common_fnc_isCommander) exitWith {};

    [player,true] call grad_moneymenu_fnc_setCanGive;
    private _money = (2000 + 500 * ([playerSide] call otf_common_fnc_getNumberOfTeammates)) * OTF_MONEYFACTOR;

    INFO_1("Giving player %1 credits.", _money);
    [player, _money] call grad_lbm_fnc_addFunds;
}, []] call CBA_fnc_waitUntilAndExecute;
