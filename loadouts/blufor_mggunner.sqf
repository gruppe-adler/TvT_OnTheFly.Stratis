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
this addItemToVest "HandGrenade";
this addItemToVest "B_IR_Grenade";
this addItemToVest "Chemlight_green";
for "_i" from 1 to 2 do {this addItemToVest "hlc_100Rnd_762x51_T_M60E4";};
this addBackpack "B_Carryall_mcamo";
for "_i" from 1 to 2 do {this addItemToBackpack "hlc_100Rnd_762x51_T_M60E4";};

if (TROPENTARN) then {
this addHeadgear "ARC_GER_Tropentarn_Helmet_simple";
} else {
this addHeadgear "ARC_GER_Flecktarn_Helmet_simple";	
};
this addGoggles "G_Balaclava_blk";

comment "Add weapons";
this addWeapon "hlc_lmg_M60E4";
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