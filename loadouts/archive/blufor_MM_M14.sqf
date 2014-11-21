this = _this select 0;

comment "Exported from Arsenal by XiviD";

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
this forceAddUniform "ARC_GER_Tropentarn_Uniform";
} else {
this forceAddUniform "ARC_GER_Flecktarn_Uniform";
};
this addItemToUniform "hlc_20Rnd_762x51_B_M14";
this addItemToUniform "hlc_20Rnd_762x51_T_M14";
if (TROPENTARN) then {
this addVest "ARC_GER_Tropentarn_Plate_Carrier_H";
} else {
this addVest "ARC_GER_Flecktarn_Plate_Carrier_H";
};
this addItemToVest "AGM_EarBuds";
for "_i" from 1 to 2 do {this addItemToVest "AGM_CableTie";};
for "_i" from 1 to 3 do {this addItemToVest "11Rnd_45ACP_Mag";};
this addItemToVest "HandGrenade";
for "_i" from 1 to 2 do {this addItemToVest "SmokeShellBlue";};
this addItemToVest "AGM_HandFlare_White";
this addItemToVest "B_IR_Grenade";
for "_i" from 1 to 2 do {this addItemToVest "Chemlight_blue";};
for "_i" from 1 to 2 do {this addItemToVest "hlc_20Rnd_762x51_B_M14";};
for "_i" from 1 to 4 do {this addItemToVest "hlc_20Rnd_762x51_T_M14";};
if (TROPENTARN) then {
this addHeadgear "ARC_GER_Tropentarn_booniehat";
} else {
this addHeadgear "ARC_GER_Tropentarn_booniehat";
};

comment "Add weapons";
this addWeapon "hlc_rifle_m14dmr";
this addWeapon "hgun_Pistol_heavy_01_F";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "AGM_Altimeter";
this linkItem "NVGoggles_OPFOR";
this linkItem "tf_anprc152";