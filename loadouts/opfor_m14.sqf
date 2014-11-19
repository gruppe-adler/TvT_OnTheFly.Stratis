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
this forceAddUniform "U_CAF_AG_EEUR_FATIGUES_01";
for "_i" from 1 to 4 do {this addItemToUniform "AGM_Bandage";};
for "_i" from 1 to 2 do {this addItemToUniform "16Rnd_9x21_Mag";};
this addVest "V_I_G_resistanceLeader_F";
for "_i" from 1 to 3 do {this addItemToVest "Chemlight_red";};
for "_i" from 1 to 6 do {this addItemToVest "AGM_HandFlare_Red";};
for "_i" from 1 to 2 do {this addItemToVest "hlc_20Rnd_762x51_B_M14";};
for "_i" from 1 to 2 do {this addItemToVest "hlc_20Rnd_762x51_S_M14";};
for "_i" from 1 to 2 do {this addItemToVest "MiniGrenade";};
for "_i" from 1 to 2 do {this addItemToVest "SmokeShellPurple";};
for "_i" from 1 to 2 do {this addItemToVest "SmokeShell";};
this addItemToVest "AGM_M84";
this addBackpack "B_AssaultPack_khk";
this addItemToBackpack "AGM_EarBuds";
this addItemToBackpack "AGM_CableTie";
for "_i" from 1 to 3 do {this addItemToBackpack "AGM_HandFlare_Red";};
for "_i" from 1 to 4 do {this addItemToBackpack "Chemlight_red";};
for "_i" from 1 to 2 do {this addItemToBackpack "hlc_50Rnd_762x51_B_M14";};
for "_i" from 1 to 2 do {this addItemToBackpack "hlc_20Rnd_762x51_S_M14";};
this addItemToBackpack "hlc_20Rnd_762x51_T_M14";
this addHeadgear "H_Shemag_olive_hs";

comment "Add weapons";
this addWeapon "hlc_rifle_M14";
this addWeapon "hgun_Rook40_F";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";