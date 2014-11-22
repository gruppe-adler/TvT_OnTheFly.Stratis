this = _this select 0;

comment "Exported from Arsenal by nomisum";

randUniformEastern = 
["U_CAF_AG_EEUR_FATIGUES_01",
"U_CAF_AG_EEUR_FATIGUES_01a",
"U_CAF_AG_EEUR_FATIGUES_02",
"U_CAF_AG_EEUR_FATIGUES_02a",
"U_CAF_AG_EEUR_FATIGUES_03",
"U_CAF_AG_EEUR_FATIGUES_03a",
"U_CAF_AG_EEUR_FATIGUES_03b",
"U_CAF_AG_EEUR_FATIGUES_03c",
"U_OG_Guerilla1_1",
"U_OG_Guerilla2_1",
"U_OG_Guerilla2_3",
"U_OG_Guerilla3_1",
"U_OG_Guerilla3_2",
"U_OG_leader"] call BIS_fnc_selectRandom;

randUniformTaliban = 
["U_CAF_AG_ME_ROBES_01",
"U_CAF_AG_ME_ROBES_01a",
"U_CAF_AG_ME_ROBES_01b",
"U_CAF_AG_ME_ROBES_01c",
"U_CAF_AG_ME_ROBES_01d",
"U_CAF_AG_ME_ROBES_02",
"U_CAF_AG_ME_ROBES_02a",
"U_CAF_AG_ME_ROBES_02b",
"U_CAF_AG_ME_ROBES_02c",
"U_CAF_AG_ME_ROBES_02d",
"U_CAF_AG_ME_ROBES_03",
"U_CAF_AG_ME_ROBES_03a",
"U_CAF_AG_ME_ROBES_03b",
"U_CAF_AG_ME_ROBES_03c",
"U_CAF_AG_ME_ROBES_03d",
"U_CAF_AG_ME_ROBES_04",
"U_CAF_AG_ME_ROBES_04a",
"U_CAF_AG_ME_ROBES_04b",
"U_CAF_AG_ME_ROBES_04c",
"U_CAF_AG_ME_ROBES_04d",
"U_CAF_AG_ME_ROBES_mil_01",
"U_CAF_AG_ME_ROBES_mil_01a"] call BIS_fnc_selectRandom;

randHeadGearEastern = 
["H_CAF_AG_FUR",
"H_CAF_AG_FUR2",
"H_CAF_AG_BEANIE",
"H_CAF_AG_BOONIE_01",
"H_CAF_AG_BOONIE_02",
"H_Watchcap_cbr",
"H_Shemag_olive_hs",
"H_Hat_camo"] call BIS_fnc_selectRandom;

randHeadGearTaliban = 
["H_CAF_AG_TURBAN",
"H_CAF_AG_PAKTOL",
"H_CAF_AG_PAKTOL_01",
"H_CAF_AG_PAKTOL_02",
"H_CAF_AG_PAKTOL_03",
"H_CAF_AG_WRAP"] call BIS_fnc_selectRandom;

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
this forceAddUniform randUniformTaliban;
} else {
this forceAddUniform randUniformEastern;
};
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
if (TROPENTARN) then {
this addHeadgear randHeadGearTaliban;
} else {
this addHeadgear randHeadGearEastern;
};

comment "Add weapons";
this addWeapon "hlc_rifle_M14";
this addWeapon "hgun_Rook40_F";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "tf_anprc154";