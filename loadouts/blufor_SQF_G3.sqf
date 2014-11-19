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
this forceAddUniform "ARC_GER_Flecktarn_Uniform";
for "_i" from 1 to 2 do {this addItemToUniform "AGM_Bandage";};
this addItemToUniform "hlc_20rnd_762x51_b_G3";
this addItemToUniform "hlc_20rnd_762x51_T_G3";
this addVest "ARC_GER_Flecktarn_Plate_Carrier_H";
this addItemToVest "AGM_EarBuds";
for "_i" from 1 to 2 do {this addItemToVest "AGM_CableTie";};
for "_i" from 1 to 3 do {this addItemToVest "11Rnd_45ACP_Mag";};
this addItemToVest "HandGrenade";
for "_i" from 1 to 2 do {this addItemToVest "SmokeShellBlue";};
this addItemToVest "AGM_HandFlare_White";
this addItemToVest "B_IR_Grenade";
for "_i" from 1 to 2 do {this addItemToVest "Chemlight_blue";};
for "_i" from 1 to 3 do {this addItemToVest "hlc_20rnd_762x51_b_G3";};
for "_i" from 1 to 3 do {this addItemToVest "hlc_20rnd_762x51_T_G3";};
this addHeadgear "ARC_GER_Flecktarn_Helmet";

comment "Add weapons";
this addWeapon "hlc_rifle_g3ka4";
this addPrimaryWeaponItem "acc_pointer_IR";
this addPrimaryWeaponItem "optic_ACO_grn";
this addWeapon "hgun_Pistol_heavy_01_F";
this addWeapon "Rangefinder";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "AGM_Altimeter";
this linkItem "tf_anprc152_2";
this linkItem "ItemGPS";
this linkItem "NVGoggles_OPFOR";

