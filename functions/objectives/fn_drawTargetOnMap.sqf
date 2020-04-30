#include "component.hpp"

if (!hasInterface) exitWith {};

OTF_DRAWTARGETEH = ((findDisplay 12) displayCtrl 51) ctrlAddEventHandler ["Draw",{
    params ["_map"];
    _map drawIcon ["iconLogic",[0.5,0,0,1],getPos OTF_TARGETOBJECT,24,24,0,"",0,0.03,'TahomaB','right'];
}];
