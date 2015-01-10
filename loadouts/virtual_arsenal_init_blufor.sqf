//Init stuff
_crate = _this select 0;
["Preload"] call BIS_fnc_arsenal;
["AmmoboxInit",[_crate,false,{false}]] spawn BIS_fnc_arsenal;

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
    "SMA_AIMPOINT",
    "optic_Holosight",
    "optic_ACO_grn",
    "optic_ACO_red",
    "tf_anprc152"
];

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
    "SMA_AUG_A3_F",
    "SMA_AUG_A3_MCAM_F",
    "SMA_AUG_A3_KRYPT_F",
    "hlc_rifle_M4",
    "SMA_HK416afg",
    "SMA_HK416vfg",
    "SMA_HK417afg",
    "SMA_HK417vfg",
    "SMA_HK417_tanafg",
    "SMA_HK417_tanvgf",
    "SMA_HK417_16in_afg",
    "SMA_HK417_16in_afg_tan",
    "SMA_MK16",
    "SMA_Mk16_black",
    "SMA_Mk17",
    "SMA_Mk17_black",
    "SMA_STG_E4_F",
    "SMA_STG_E4_BLACK_F",
    "arifle_MX_F",
    "arifle_MX_Black_F",
    "SMA_SKS_F",
    "SMA_SKS_TAN_F",
    "hgun_Pistol_heavy_01_F",
    "hlc_smg_mp5k",
    "hgun_ACPC2_F"


];

[_crate,((backpackCargo _crate) + _availableBackpacks)] call BIS_fnc_addVirtualBackpackCargo;
[_crate,((itemCargo _crate) + _availableHeadgear + _availableItems + _availableUniforms + _availableVests)] call BIS_fnc_addVirtualItemCargo;
[_crate,(magazineCargo _crate)] call BIS_fnc_addVirtualMagazineCargo;
[_crate,(weaponCargo _crate) + _availableWeapons] call BIS_fnc_addVirtualWeaponCargo;


removeAllActions _crate;
_hasAction = _crate getVariable ["ArsenalPresent", false];

if (!_hasAction) then {
    [[_crate, ["<t color='#45B6EA'>Open Supply Box",
    {
        _box = _this select 0;
        _unit = _this select 1;
        
        ["Open",[nil,_box,_unit]] call bis_fnc_arsenal;

        
    },
    [], 1000, true, false,  "", "_this distance _target < 3"]], "addAction",true] call BIS_fnc_MP;

    _crate setVariable ["ArsenalPresent", true, true];
};