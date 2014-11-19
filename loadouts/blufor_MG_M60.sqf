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
this addItemToUniform "11Rnd_45ACP_Mag";
this addVest "ARC_GER_Flecktarn_Plate_Carrier_H";
this addItemToVest "AGM_EarBuds";
for "_i" from 1 to 2 do {this addItemToVest "AGM_CableTie";};
for "_i" from 1 to 3 do {this addItemToVest "11Rnd_45ACP_Mag";};
this addItemToVest "HandGrenade";
for "_i" from 1 to 2 do {this addItemToVest "SmokeShellBlue";};
this addItemToVest "AGM_HandFlare_White";
this addItemToVest "B_IR_Grenade";
for "_i" from 1 to 2 do {this addItemToVest "Chemlight_blue";};
for "_i" from 1 to 2 do {this addItemToVest "hlc_100Rnd_762x51_M_M60E4";};
this addBackpack "ARC_GER_Backpack_compact_Flecktarn";
for "_i" from 1 to 4 do {this addItemToBackpack "hlc_100Rnd_762x51_M_M60E4";};
this addHeadgear "H_Cap_headphones";

comment "Add weapons";
this addWeapon "hlc_lmg_m60";
this addWeapon "hgun_Pistol_heavy_01_F";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "AGM_Altimeter";
this linkItem "tf_anprc152_2";
this linkItem "NVGoggles_OPFOR";
