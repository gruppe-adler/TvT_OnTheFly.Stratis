comment "Exported from Arsenal by nomisum";

private ["_unit"];
_unit = _this select 0;
//IF(!local _unit) exitwith {};

comment "Remove existing items";
removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;

comment "Add containers";
if (TROPENTARN) then {
_unit forceAddUniform "ARC_GER_Tropentarn_Uniform_vest";
} else {
_unit forceAddUniform "ARC_GER_Flecktarn_Uniform_vest";	
};
for "_i" from 1 to 4 do {_unit addItemToUniform "AGM_Bandage";};
for "_i" from 1 to 2 do {_unit addItemToUniform "16Rnd_9x21_Mag";};
if (TROPENTARN) then {
_unit addVest "ARC_GER_Tropentarn_Plate_Carrier_H";
} else {
_unit addVest "ARC_GER_Flecktarn_Plate_Carrier_H";
};
_unit addItemToVest "HandGrenade";
_unit addItemToVest "B_IR_Grenade";
_unit addItemToVest "Chemlight_green";
for "_i" from 1 to 2 do {_unit addItemToVest "hlc_100Rnd_762x51_T_M60E4";};
_unit addBackpack "B_Carryall_mcamo";
for "_i" from 1 to 2 do {_unit addItemToBackpack "hlc_100Rnd_762x51_T_M60E4";};

if (TROPENTARN) then {
_unit addHeadgear "ARC_GER_Tropentarn_Helmet_simple";
} else {
_unit addHeadgear "ARC_GER_Flecktarn_Helmet_simple";	
};
_unit addGoggles "G_Balaclava_blk";

comment "Add weapons";
_unit addWeapon "hlc_lmg_M60E4";
_unit addPrimaryWeaponItem "acc_pointer_IR";
_unit addPrimaryWeaponItem "optic_ACO_grn";
_unit addWeapon "hgun_P07_F";
_unit addWeapon "Binocular";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "tf_anprc152_5";
_unit linkItem "NVGoggles";