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
for "_i" from 1 to 7 do {_unit addItemToVest "AGM_Bandage";};
_unit addItemToVest "16Rnd_9x21_Mag";
_unit addItemToVest "HandGrenade";
_unit addItemToVest "B_IR_Grenade";
_unit addItemToVest "Chemlight_green";
for "_i" from 1 to 3 do {_unit addItemToVest "hlc_20rnd_762x51_b_G3";};
_unit addBackpack "B_Carryall_mcamo";
for "_i" from 1 to 2 do {_unit addItemToBackpack "ToolKit";};
for "_i" from 1 to 9 do {_unit addItemToBackpack "AGM_Bandage";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "AGM_Morphine";};
for "_i" from 1 to 4 do {_unit addItemToBackpack "AGM_Epipen";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "AGM_Bloodbag";};
if (TROPENTARN) then {
_unit addHeadgear "ARC_GER_Tropentarn_Helmet_simple";
} else {
_unit addHeadgear "ARC_GER_Flecktarn_Helmet_simple";	
};
_unit addGoggles "G_Balaclava_blk";

comment "Add weapons";
_unit addWeapon "hlc_rifle_g3ka4";
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