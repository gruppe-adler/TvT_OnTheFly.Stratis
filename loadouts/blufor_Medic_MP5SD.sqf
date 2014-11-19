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
for "_i" from 1 to 2 do {this addItemToUniform "hlc_30Rnd_9x19_GD_MP5";};
this addVest "ARC_GER_Flecktarn_Plate_Carrier_H";
this addItemToVest "AGM_EarBuds";
for "_i" from 1 to 2 do {this addItemToVest "AGM_CableTie";};
for "_i" from 1 to 4 do {this addItemToVest "AGM_Bandage";};
for "_i" from 1 to 2 do {this addItemToVest "11Rnd_45ACP_Mag";};
this addItemToVest "HandGrenade";
for "_i" from 1 to 2 do {this addItemToVest "SmokeShellBlue";};
this addItemToVest "AGM_HandFlare_White";
this addItemToVest "B_IR_Grenade";
for "_i" from 1 to 2 do {this addItemToVest "Chemlight_blue";};
for "_i" from 1 to 3 do {this addItemToVest "hlc_30Rnd_9x19_B_MP5";};
for "_i" from 1 to 3 do {this addItemToVest "hlc_30Rnd_9x19_GD_MP5";};
this addBackpack "ARC_GER_Backpack_Flecktarn_Med";
for "_i" from 1 to 80 do {this addItemToBackpack "AGM_Bandage";};
for "_i" from 1 to 20 do {this addItemToBackpack "AGM_Morphine";};
for "_i" from 1 to 19 do {this addItemToBackpack "AGM_Epipen";};
for "_i" from 1 to 2 do {this addItemToBackpack "AGM_Bloodbag";};
this addHeadgear "ARC_GER_Flecktarn_Helmet_simple";

comment "Add weapons";
this addWeapon "hlc_smg_mp5sd6";
this addPrimaryWeaponItem "optic_ACO_grn_smg";
this addWeapon "hgun_Pistol_heavy_01_F";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "AGM_Altimeter";
this linkItem "tf_anprc152_2";
this linkItem "NVGoggles_OPFOR";

