//Init stuff
_crate = _this select 0;
["AmmoboxInit",[_crate,false,{true}]] spawn BIS_fnc_arsenal;

_availableHeadgear = [
    "H_Cap_headphones",
    "ARC_GER_Tropentarn_booniehat",
    "ARC_GER_Flecktarn_booniehat",
    "ARC_GER_Tropentarn_Helmet",
    "ARC_GER_Flecktarn_Helmet",
    "ARC_GER_Flecktarn_Helmet_simple",
    "ARC_GER_Tropentarn_Helmet_simple"
];

_availableBackpacks = [
    "ARC_GER_Backpack_compact_Tropentarn",
    "ARC_GER_Backpack_Tropentarn_Med",
    "ARC_GER_Backpack_Flecktarn_Med",
    "ARC_GER_Backpack_compact_Flecktarn"
];

_availableItems = [
"AGM_Earbuds",
"tf_anprc152"];

_availableVests = [
    "ARC_GER_Flecktarn_Plate_Carrier_H",
    "ARC_GER_Tropentarn_Plate_Carrier_H"
];

_availableUniforms = [
    "ARC_GER_Flecktarn_Uniform",
    "ARC_GER_Tropentarn_Uniform"
];

_availableWeapons = [
    "hlc_rifle_bcmjack",
    "hlc_rifle_RU556",
    "hlc_rifle_RU5562",
    "hlc_rifle_g3ka4"
];

[_crate,((backpackCargo _crate) + _availableBackpacks)] call BIS_fnc_addVirtualBackpackCargo;
[_crate,((itemCargo _crate) + _availableHeadgear + _availableItems + _availableUniforms + _availableVests)] call BIS_fnc_addVirtualItemCargo;
[_crate,(magazineCargo _crate)] call BIS_fnc_addVirtualMagazineCargo;
[_crate,(weaponCargo _crate)] call BIS_fnc_addVirtualWeaponCargo;