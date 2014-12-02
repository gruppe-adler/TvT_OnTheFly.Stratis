opfor_rpg = {

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

comment "Add containers";
if (TROPENTARN) then {
[[{}, this forceAddUniform randUniformTaliban], "BIS_fnc_spawn", true] call BIS_fnc_MP;
} else {
[[{}, this forceAddUniform randUniformEastern], "BIS_fnc_spawn", true] call BIS_fnc_MP;
};
this addItemToUniform "16Rnd_9x21_Mag";
this addItemToUniform "hlc_30Rnd_762x39_t_ak";
for "_i" from 1 to 3 do {this addItemToUniform "AGM_Bandage";};
this addVest "V_TacVest_oli";
for "_i" from 1 to 3 do {this addItemToVest "hlc_30Rnd_762x39_t_ak";};
for "_i" from 1 to 6 do {this addItemToVest "AGM_HandFlare_Red";};
for "_i" from 1 to 3 do {this addItemToVest "SmokeShellPurple";};
for "_i" from 1 to 3 do {this addItemToVest "SmokeShell";};
this addItemToVest "Chemlight_red";
this addItemToVest "hlc_30Rnd_762x39_b_ak";
this addBackpack "B_AssaultPack_dgtl";
this addItemToBackpack "AGM_CableTie";
this addItemToBackpack "AGM_EarBuds";
this addItemToBackpack "caf_PG7V";
this addItemToBackpack "caf_OG7";
for "_i" from 1 to 7 do {this addItemToBackpack "hlc_30Rnd_762x39_t_ak";};
if (TROPENTARN) then {
this addHeadgear randHeadGearTaliban;
} else {
this addHeadgear randHeadGearEastern;
};

comment "Add weapons";
this addWeapon "hlc_rifle_akm";
this addWeapon "caf_rpg7";
this addWeapon "hgun_Rook40_F";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "tf_fadak";

player setVariable ["dontHaveLoadout",false];

};


opfor_pkm = {

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
[[{}, this forceAddUniform randUniformTaliban], "BIS_fnc_spawn", true] call BIS_fnc_MP;
} else {
[[{}, this forceAddUniform randUniformEastern], "BIS_fnc_spawn", true] call BIS_fnc_MP;
};
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
if (TROPENTARN) then {
this addHeadgear randHeadGearTaliban;
} else {
this addHeadgear randHeadGearEastern;
};

comment "Add weapons";
this addWeapon "caf_pkm";
this addWeapon "hgun_Rook40_F";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "tf_fadak";

player setVariable ["dontHaveLoadout",false];
	

};


opfor_medic = {

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
[[{}, this forceAddUniform randUniformTaliban], "BIS_fnc_spawn", true] call BIS_fnc_MP;
} else {
[[{}, this forceAddUniform randUniformEastern], "BIS_fnc_spawn", true] call BIS_fnc_MP;
};
for "_i" from 1 to 4 do {this addItemToUniform "AGM_Bandage";};
this addItemToUniform "hlc_30Rnd_545x39_EP_ak";
this addItemToUniform "16Rnd_9x21_Mag";
this addVest "V_TacVest_khk";
for "_i" from 1 to 4 do {this addItemToVest "AGM_HandFlare_Red";};
for "_i" from 1 to 7 do {this addItemToVest "hlc_30Rnd_545x39_EP_ak";};
this addItemToVest "hlc_30Rnd_545x39_t_ak";
this addBackpack "ARC_PL_Backpack_Carryall_Pantera";
for "_i" from 1 to 80 do {this addItemToBackpack "AGM_Bandage";};
for "_i" from 1 to 25 do {this addItemToBackpack "AGM_Morphine";};
for "_i" from 1 to 25 do {this addItemToBackpack "AGM_Epipen";};
for "_i" from 1 to 2 do {this addItemToBackpack "AGM_Bloodbag";};
this addItemToBackpack "AGM_EarBuds";
this addItemToBackpack "AGM_CableTie";
if (TROPENTARN) then {
this addHeadgear randHeadGearTaliban;
} else {
this addHeadgear randHeadGearEastern;
};

comment "Add weapons";
this addWeapon "hlc_rifle_aks74u";
this addWeapon "hgun_Rook40_F";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "tf_fadak";

player setVariable ["dontHaveLoadout",false];
	

};


opfor_m14 = {

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
[[{}, this forceAddUniform randUniformTaliban], "BIS_fnc_spawn", true] call BIS_fnc_MP;
} else {
[[{}, this forceAddUniform randUniformEastern], "BIS_fnc_spawn", true] call BIS_fnc_MP;
};
for "_i" from 1 to 4 do {this addItemToUniform "AGM_Bandage";};
for "_i" from 1 to 2 do {this addItemToUniform "16Rnd_9x21_Mag";};
this addVest "V_I_G_resistanceLeader_F";
for "_i" from 1 to 3 do {this addItemToVest "Chemlight_red";};
for "_i" from 1 to 6 do {this addItemToVest "AGM_HandFlare_Red";};
for "_i" from 1 to 2 do {this addItemToVest "10Rnd_762x51_Mag";};
for "_i" from 1 to 2 do {this addItemToVest "10Rnd_762x51_Mag";};
for "_i" from 1 to 2 do {this addItemToVest "MiniGrenade";};
for "_i" from 1 to 2 do {this addItemToVest "SmokeShellPurple";};
for "_i" from 1 to 2 do {this addItemToVest "SmokeShell";};
this addItemToVest "AGM_M84";
this addBackpack "B_AssaultPack_khk";
this addItemToBackpack "AGM_EarBuds";
this addItemToBackpack "AGM_CableTie";
for "_i" from 1 to 3 do {this addItemToBackpack "AGM_HandFlare_Red";};
for "_i" from 1 to 4 do {this addItemToBackpack "Chemlight_red";};
for "_i" from 1 to 2 do {this addItemToBackpack "10Rnd_762x51_Mag";};
for "_i" from 1 to 2 do {this addItemToBackpack "10Rnd_762x51_Mag";};
this addItemToBackpack "10Rnd_762x51_Mag";
if (TROPENTARN) then {
this addHeadgear randHeadGearTaliban;
} else {
this addHeadgear randHeadGearEastern;
};

comment "Add weapons";
this addWeapon "srifle_DMR_01_F";
this addPrimaryWeaponItem "optic_Arco";
this addPrimaryWeaponItem "AGM_muzzle_mzls_B";
this addWeapon "hgun_Rook40_F";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "tf_fadak";

player setVariable ["dontHaveLoadout",false];
	

};


opfor_l1a1 = {

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
[[{}, this forceAddUniform randUniformTaliban], "BIS_fnc_spawn", true] call BIS_fnc_MP;
} else {
[[{}, this forceAddUniform randUniformEastern], "BIS_fnc_spawn", true] call BIS_fnc_MP;
};
for "_i" from 1 to 4 do {this addItemToUniform "AGM_Bandage";};
this addItemToUniform "16Rnd_9x21_Mag";
this addItemToUniform "hlc_20rnd_762x51_b_fal";
this addVest "V_TacVest_khk";
for "_i" from 1 to 10 do {this addItemToVest "AGM_Bandage";};
for "_i" from 1 to 6 do {this addItemToVest "AGM_HandFlare_Red";};
for "_i" from 1 to 2 do {this addItemToVest "hlc_20rnd_762x51_b_fal";};
for "_i" from 1 to 3 do {this addItemToVest "SmokeShellPurple";};
for "_i" from 1 to 3 do {this addItemToVest "SmokeShell";};
this addItemToVest "Chemlight_red";
this addBackpack "B_AssaultPack_dgtl";
this addItemToBackpack "AGM_CableTie";
this addItemToBackpack "AGM_EarBuds";
for "_i" from 1 to 4 do {this addItemToBackpack "hlc_20rnd_762x51_s_fal";};
for "_i" from 1 to 3 do {this addItemToBackpack "hlc_20rnd_762x51_t_fal";};
if (TROPENTARN) then {
this addHeadgear randHeadGearTaliban;
} else {
this addHeadgear randHeadGearEastern;
};
this addGoggles "G_Spectacles_Tinted";

comment "Add weapons";
this addWeapon "hlc_rifle_L1A1SLR";
this addWeapon "hgun_Rook40_F";
this addWeapon "Binocular";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "ItemGPS";
this linkItem "tf_fadak";

player setVariable ["dontHaveLoadout",false];
	

};

opfor_akfamily = {
	
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



ak74family = 
["hlc_rifle_ak74",
"hlc_rifle_aks74",
"hlc_rifle_aks74u"] call BIS_fnc_selectRandom;

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

comment "Add containers";

if (TROPENTARN) then {
[[{}, this forceAddUniform randUniformTaliban], "BIS_fnc_spawn", true] call BIS_fnc_MP;
} else {
[[{}, this forceAddUniform randUniformEastern], "BIS_fnc_spawn", true] call BIS_fnc_MP;
};
for "_i" from 1 to 4 do {this addItemToUniform "AGM_Bandage";};
this addItemToUniform "16Rnd_9x21_Mag";
this addVest "V_TacVest_khk";
for "_i" from 1 to 10 do {this addItemToVest "AGM_Bandage";};
for "_i" from 1 to 6 do {this addItemToVest "AGM_HandFlare_Red";};
for "_i" from 1 to 3 do {this addItemToVest "hlc_30Rnd_545x39_EP_AK";};
this addItemToVest "hlc_30Rnd_545x39_t_ak";
this addBackpack "ARC_PL_Backpack_Carryall_Pantera";
for "_i" from 1 to 7 do {this addItemToBackpack "hlc_30Rnd_545x39_EP_AK";};
this addItemToBackpack "AGM_EarBuds";
this addItemToBackpack "AGM_CableTie";
if (TROPENTARN) then {
this addHeadgear randHeadGearTaliban;
} else {
this addHeadgear randHeadGearEastern;
};

comment "Add weapons";
this addWeapon ak74family;
this addWeapon "hgun_Rook40_F";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "tf_fadak";

player setVariable ["dontHaveLoadout",false];

};

loadouts_processed = true;
