comment "Exported from Arsenal by nomisum";

this = _this select 0;

comment "Remove existing items";
removeAllWeapons this;
removeAllItems this;
removeAllAssignedItems this;
removeUniform this;
removeVest this;
removeBackpack this;
removeHeadgear this;
removeGoggles this;

comment "Add containers";
if (TROPENTARN) then {
this forceAddUniform "ARC_GER_Tropentarn_Uniform_vest";
} else {
this forceAddUniform "ARC_GER_Flecktarn_Uniform_vest";	
};
for "_i" from 1 to 4 do {this addItemToUniform "AGM_Bandage";};
for "_i" from 1 to 2 do {this addItemToUniform "16Rnd_9x21_Mag";};
if (TROPENTARN) then {
this addVest "ARC_GER_Tropentarn_Plate_Carrier_H";
} else {
this addVest "ARC_GER_Flecktarn_Plate_Carrier_H";
};
for "_i" from 1 to 7 do {this addItemToVest "AGM_Bandage";};
this addItemToVest "16Rnd_9x21_Mag";
this addItemToVest "HandGrenade";
this addItemToVest "B_IR_Grenade";
this addItemToVest "Chemlight_green";
for "_i" from 1 to 3 do {this addItemToVest "hlc_20rnd_762x51_b_G3";};
this addBackpack "B_Carryall_mcamo";
for "_i" from 1 to 2 do {this addItemToBackpack "ToolKit";};
for "_i" from 1 to 9 do {this addItemToBackpack "AGM_Bandage";};
for "_i" from 1 to 5 do {this addItemToBackpack "AGM_Morphine";};
for "_i" from 1 to 4 do {this addItemToBackpack "AGM_Epipen";};
for "_i" from 1 to 2 do {this addItemToBackpack "AGM_Bloodbag";};
if (TROPENTARN) then {
this addHeadgear "ARC_GER_Tropentarn_Helmet_simple";
} else {
this addHeadgear "ARC_GER_Flecktarn_Helmet_simple";	
};
this addGoggles "G_Balaclava_blk";

comment "Add weapons";
this addWeapon "hlc_rifle_g3ka4";
this addPrimaryWeaponItem "acc_pointer_IR";
this addPrimaryWeaponItem "optic_ACO_grn";
this addWeapon "hgun_P07_F";
this addWeapon "Binocular";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "tf_anprc152_5";
this linkItem "NVGoggles";