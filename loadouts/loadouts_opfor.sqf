//check hlc depenendcy:
ak74family = 
	["hlc_rifle_ak74",
	"hlc_rifle_aks74",
	"hlc_rifle_aks74u"
	];
	
ak47family = 
	["hlc_rifle_ak47"
	];

ak74family_magazine = "hlc_30Rnd_545x39_EP_AK";
ak47family_magazine = "hlc_30Rnd_762x39_t_ak";



randUniformEastern = 
["U_CAF_AG_EEUR_FATIGUES_01",
"U_CAF_AG_EEUR_FATIGUES_01a",
"U_CAF_AG_EEUR_FATIGUES_02",
"U_CAF_AG_EEUR_FATIGUES_02a",
"U_CAF_AG_EEUR_FATIGUES_03",
"U_CAF_AG_EEUR_FATIGUES_03a",
"U_CAF_AG_EEUR_FATIGUES_03b",
"U_CAF_AG_EEUR_FATIGUES_03c"
];

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
"U_CAF_AG_ME_ROBES_mil_01a"
];

randHeadGearEastern = 
["H_CAF_AG_FUR",
"H_CAF_AG_FUR2",
"H_CAF_AG_BEANIE",
"H_CAF_AG_BOONIE_01",
"H_CAF_AG_BOONIE_02",
"H_Watchcap_cbr",
"H_Shemag_olive_hs",
"H_Hat_camo"
];

randHeadGearTaliban = 
["H_CAF_AG_TURBAN",
"H_CAF_AG_PAKTOL",
"H_CAF_AG_PAKTOL_01",
"H_CAF_AG_PAKTOL_02",
"H_CAF_AG_PAKTOL_03",
"H_CAF_AG_WRAP"
];

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





comment "Add containers";
if (TROPENTARN) then {
[[{}, this forceAddUniform (randUniformTaliban call BIS_fnc_selectRandom)], "BIS_fnc_spawn", true] call BIS_fnc_MP;
} else {
[[{}, this forceAddUniform (randUniformEastern call BIS_fnc_selectRandom)], "BIS_fnc_spawn", true] call BIS_fnc_MP;
};
this addItemToUniform "16Rnd_9x21_Mag";
this addItemToUniform ak47family_magazine;
for "_i" from 1 to 3 do {this addItemToUniform "AGM_Bandage";};
this addVest "V_TacVest_oli";
for "_i" from 1 to 3 do {this addItemToVest ak47family_magazine;};
for "_i" from 1 to 6 do {this addItemToVest "AGM_HandFlare_Red";};
for "_i" from 1 to 3 do {this addItemToVest "SmokeShellPurple";};
for "_i" from 1 to 3 do {this addItemToVest "SmokeShell";};
this addItemToVest "Chemlight_red";
this addItemToVest ak47family_magazine;
this addBackpack "B_AssaultPack_dgtl";
this addItemToBackpack "AGM_CableTie";
this addItemToBackpack "AGM_EarBuds";
this addItemToBackpack "caf_PG7V";
this addItemToBackpack "caf_OG7";
for "_i" from 1 to 7 do {this addItemToBackpack ak47family_magazine;};
if (TROPENTARN) then {
this addHeadgear (randHeadGearTaliban call BIS_fnc_selectRandom);
} else {
this addHeadgear (randHeadGearEastern call BIS_fnc_selectRandom);
};

comment "Add weapons";
this addWeapon (ak47family call BIS_fnc_selectRandom);
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
[[{}, this forceAddUniform (randUniformTaliban call BIS_fnc_selectRandom)], "BIS_fnc_spawn", true] call BIS_fnc_MP;
} else {
[[{}, this forceAddUniform (randUniformEastern call BIS_fnc_selectRandom)], "BIS_fnc_spawn", true] call BIS_fnc_MP;
};
for "_i" from 1 to 15 do {this addItemToUniform "AGM_Bandage";};
for "_i" from 1 to 2 do {this addItemToUniform "16Rnd_9x21_Mag";};
this addVest "V_TacVest_khk";
for "_i" from 1 to 6 do {this addItemToVest "AGM_HandFlare_Red";};
for "_i" from 1 to 2 do {this addItemToVest "MiniGrenade";};
for "_i" from 1 to 3 do {this addItemToVest "SmokeShellRed";};
this addItemToVest "AGM_M84";
this addBackpack "B_Carryall_cbr";
for "_i" from 1 to 5 do {this addItemToBackpack "AGM_Bandage";};
this addItemToBackpack "AGM_EarBuds";
this addItemToBackpack "AGM_CableTie";
for "_i" from 1 to 7 do {this addItemToBackpack ak47family_magazine;};
if (TROPENTARN) then {
this addHeadgear (randHeadGearTaliban call BIS_fnc_selectRandom);
} else {
this addHeadgear (randHeadGearEastern call BIS_fnc_selectRandom);
};

comment "Add weapons";
this addWeapon (ak47family call BIS_fnc_selectRandom);
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
[[{}, this forceAddUniform (randUniformTaliban call BIS_fnc_selectRandom)], "BIS_fnc_spawn", true] call BIS_fnc_MP;
} else {
[[{}, this forceAddUniform (randUniformEastern call BIS_fnc_selectRandom)], "BIS_fnc_spawn", true] call BIS_fnc_MP;
};
for "_i" from 1 to 4 do {this addItemToUniform "AGM_Bandage";};
this addItemToUniform ak47family_magazine;
this addItemToUniform "16Rnd_9x21_Mag";
this addVest "V_TacVest_khk";
for "_i" from 1 to 4 do {this addItemToVest "AGM_HandFlare_Red";};
for "_i" from 1 to 3 do {this addItemToVest ak47family_magazine;};
for "_i" from 1 to 3 do {this addItemToVest ak47family_magazine;};
this addBackpack "B_Carryall_mcamo";
for "_i" from 1 to 80 do {this addItemToBackpack "AGM_Bandage";};
for "_i" from 1 to 25 do {this addItemToBackpack "AGM_Morphine";};
for "_i" from 1 to 25 do {this addItemToBackpack "AGM_Epipen";};
for "_i" from 1 to 2 do {this addItemToBackpack "AGM_Bloodbag";};
this addItemToBackpack ak47family_magazine;
this addItemToBackpack "AGM_EarBuds";
this addItemToBackpack "AGM_CableTie";
if (TROPENTARN) then {
this addHeadgear (randHeadGearTaliban call BIS_fnc_selectRandom);
} else {
this addHeadgear (randHeadGearEastern call BIS_fnc_selectRandom);
};

comment "Add weapons";
this addWeapon (ak47family call BIS_fnc_selectRandom);
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
[[{}, this forceAddUniform (randUniformTaliban call BIS_fnc_selectRandom)], "BIS_fnc_spawn", true] call BIS_fnc_MP;
} else {
[[{}, this forceAddUniform (randUniformEastern call BIS_fnc_selectRandom)], "BIS_fnc_spawn", true] call BIS_fnc_MP;
};
for "_i" from 1 to 4 do {this addItemToUniform "AGM_Bandage";};
for "_i" from 1 to 2 do {this addItemToUniform "16Rnd_9x21_Mag";};
this addVest "V_I_G_resistanceLeader_F";
for "_i" from 1 to 3 do {this addItemToVest "Chemlight_red";};
for "_i" from 1 to 6 do {this addItemToVest "AGM_HandFlare_Red";};
for "_i" from 1 to 2 do {this addItemToVest ak74family_magazine;};
for "_i" from 1 to 2 do {this addItemToVest ak74family_magazine;};
for "_i" from 1 to 2 do {this addItemToVest "MiniGrenade";};
for "_i" from 1 to 2 do {this addItemToVest "SmokeShellPurple";};
for "_i" from 1 to 2 do {this addItemToVest "SmokeShell";};
this addItemToVest "AGM_M84";
this addBackpack "B_AssaultPack_khk";
this addItemToBackpack "AGM_EarBuds";
this addItemToBackpack "AGM_CableTie";
for "_i" from 1 to 3 do {this addItemToBackpack "AGM_HandFlare_Red";};
for "_i" from 1 to 4 do {this addItemToBackpack "Chemlight_red";};
for "_i" from 1 to 2 do {this addItemToBackpack ak74family_magazine;};
for "_i" from 1 to 2 do {this addItemToBackpack ak74family_magazine;};
this addItemToBackpack ak74family_magazine;
if (TROPENTARN) then {
this addHeadgear (randHeadGearTaliban call BIS_fnc_selectRandom);
} else {
this addHeadgear (randHeadGearEastern call BIS_fnc_selectRandom);
};

comment "Add weapons";
this addWeapon (ak74family call BIS_fnc_selectRandom);
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
[[{}, this forceAddUniform (randUniformTaliban call BIS_fnc_selectRandom)], "BIS_fnc_spawn", true] call BIS_fnc_MP;
} else {
[[{}, this forceAddUniform (randUniformEastern call BIS_fnc_selectRandom)], "BIS_fnc_spawn", true] call BIS_fnc_MP;
};
for "_i" from 1 to 4 do {this addItemToUniform "AGM_Bandage";};
this addItemToUniform "16Rnd_9x21_Mag";
this addItemToUniform ak74family_magazine;
this addVest "V_TacVest_khk";
for "_i" from 1 to 10 do {this addItemToVest "AGM_Bandage";};
for "_i" from 1 to 6 do {this addItemToVest "AGM_HandFlare_Red";};
for "_i" from 1 to 2 do {this addItemToVest ak74family_magazine;};
for "_i" from 1 to 3 do {this addItemToVest "SmokeShellPurple";};
for "_i" from 1 to 3 do {this addItemToVest "SmokeShell";};
this addItemToVest "Chemlight_red";
this addBackpack "B_AssaultPack_dgtl";
this addItemToBackpack "AGM_CableTie";
this addItemToBackpack "AGM_EarBuds";
for "_i" from 1 to 4 do {this addItemToBackpack ak74family_magazine;};
for "_i" from 1 to 3 do {this addItemToBackpack ak74family_magazine;};
if (TROPENTARN) then {
this addHeadgear (randHeadGearTaliban call BIS_fnc_selectRandom);
} else {
this addHeadgear (randHeadGearEastern call BIS_fnc_selectRandom);
};

comment "Add weapons";
this addWeapon (ak74family call BIS_fnc_selectRandom);
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





comment "Add containers";

if (TROPENTARN) then {
[[{}, this forceAddUniform (randUniformTaliban call BIS_fnc_selectRandom)], "BIS_fnc_spawn", true] call BIS_fnc_MP;
} else {
[[{}, this forceAddUniform (randUniformEastern call BIS_fnc_selectRandom)], "BIS_fnc_spawn", true] call BIS_fnc_MP;
};
for "_i" from 1 to 4 do {this addItemToUniform "AGM_Bandage";};
this addItemToUniform "16Rnd_9x21_Mag";
this addVest "V_TacVest_khk";
for "_i" from 1 to 10 do {this addItemToVest "AGM_Bandage";};
for "_i" from 1 to 6 do {this addItemToVest "AGM_HandFlare_Red";};
for "_i" from 1 to 3 do {this addItemToVest ak74family_magazine;};
this addItemToVest ak74family_magazine;
this addBackpack "B_Carryall_mcamo";
for "_i" from 1 to 7 do {this addItemToBackpack ak74family_magazine;};
this addItemToBackpack "AGM_EarBuds";
this addItemToBackpack "AGM_CableTie";
if (TROPENTARN) then {
this addHeadgear (randHeadGearTaliban call BIS_fnc_selectRandom);
} else {
this addHeadgear (randHeadGearEastern call BIS_fnc_selectRandom);
};

comment "Add weapons";
this addWeapon (ak74family call BIS_fnc_selectRandom);
this addWeapon "hgun_Rook40_F";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "tf_fadak";

player setVariable ["dontHaveLoadout",false];

};
loadouts_processed = true;
