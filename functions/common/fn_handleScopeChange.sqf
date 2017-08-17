params ["_unit","_container","_itemType"];

_containerPos = getPosASL _container;

//check if item is scope
_cfgOpticsModes = (configfile >> "CfgWeapons" >> _itemType >> "ItemInfo" >> "OpticsModes");
if !(isClass _cfgOpticsModes) exitWith {};


//check if scope is magnifying
_opticsModes = "true" configClasses _cfgOpticsModes;
_minZoom = 1;
{
    _zoom = [_x, "opticsZoomMin", 1] call BIS_fnc_returnConfigEntry;
    if (_zoom isEqualType "") then {_zoom = call compile _zoom};
    if (_zoom < _minZoom) then {_minZoom = _zoom};
} forEach _opticsModes;
if (_minZoom >= 0.25) exitWith {};


//check if weapon is allowed to have magnifying
_isAllowedWeapon = ([(missionConfigFile >> "CfgScopeWeapons"), primaryWeapon _unit, 0] call BIS_fnc_returnConfigEntry) == 1;
if (_isAllowedWeapon) exitWith {};


//handle scope
if (_itemType in (primaryWeaponItems _unit)) then {

    _unit removePrimaryWeaponItem _itemType;

    _unit say "AddItemFailed";
    systemChat "You cannot mount this scope on your weapon.";

    //taken from ground
    switch (true) do {
        case (_container in [uniformContainer _unit, vestContainer _unit, backpackContainer _unit]): {
            if (isNull _container) then {_container = createVehicle ["groundWeaponHolder", [0,0,0], [], 0, "can_Collide"]; _container setPosASL _containerPos};
            _container addItemCargoGlobal [_itemType, 1];
        };
        case (_unit canAddItemToUniform _itemType): {
            _unit addItemToUniform _itemType;
        };
        case (_unit canAddItemToVest _itemType): {
            _unit addItemToVest _itemType;
        };
        case (_unit canAddItemToBackpack _itemType): {
            _unit addItemToBackpack _itemType;
        };
        default {
            if (isNull _container) then {_container = createVehicle ["groundWeaponHolder", [0,0,0], [], 0, "can_Collide"]; _container setPosASL _containerPos};
            _container addItemCargoGlobal [_itemType, 1];
        };
    };
};
