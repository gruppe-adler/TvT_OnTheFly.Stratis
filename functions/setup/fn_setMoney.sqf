#include "component.hpp"

if (!hasInterface) exitWith {};

[{!isNull player}, {
    private ["_money"];

    if ([player] call otf_common_fnc_isCommander) then {
        [player,true] call grad_moneymenu_fnc_setCanGive;
        _money = (2000 + 400 * ([playerSide] call otf_common_fnc_getNumberOfTeammates)) * OTF_MONEYFACTOR;
    } else {
        _money = 600 * OTF_MONEYFACTOR;
    };

    INFO_1("Giving player %1 credits.", _money);
    [player, _money] call grad_lbm_fnc_addFunds;
}, []] call CBA_fnc_waitUntilAndExecute;
