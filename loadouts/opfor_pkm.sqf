this = _this select 0;

comment "Exported from Arsenal by nomisum";

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
this forceAddUniform "U_CAF_AG_EEUR_FATIGUES_02";
for "_i" from 1 to 4 do {this addItemToUniform "AGM_Bandage";};
for "_i" from 1 to 2 do {this addItemToUniform "16Rnd_9x21_Mag";};
this addVest "V_TacVest_khk";
for "_i" from 1 to 10 do {this addItemToVest "AGM_Bandage";};
for "_i" from 1 to 3 do {this addItemToVest "Chemlight_red";};
for "_i" from 1 to 6 do {this addItemToVest "AGM_HandFlare_Red";};
for "_i" from 1 to 2 do {this addItemToVest "MiniGrenade";};
for "_i" from 1 to 2 do {this addItemToVest "SmokeShellPurple";};
for "_i" from 1 to 2 do {this addItemToVest "SmokeShell";};
this addItemToVest "AGM_M84";
this addItemToVest "CAF_100Rnd_762x54_PKM";
this addBackpack "ARC_UK_Kitbag_compact_DPM";
for "_i" from 1 to 5 do {this addItemToBackpack "AGM_Bandage";};
this addItemToBackpack "AGM_EarBuds";
this addItemToBackpack "AGM_CableTie";
for "_i" from 1 to 3 do {this addItemToBackpack "MiniGrenade";};
for "_i" from 1 to 6 do {this addItemToBackpack "CAF_100Rnd_762x54_PKM";};
this addHeadgear "H_Watchcap_cbr";

comment "Add weapons";
this addWeapon "caf_pkm";
this addWeapon "hgun_Rook40_F";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";