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

randUniform = 
["U_CAF_AG_EEUR_FATIGUES_01",
"U_CAF_AG_EEUR_FATIGUES_01a",
"U_CAF_AG_EEUR_FATIGUES_02",
"U_CAF_AG_EEUR_FATIGUES_02a",
"U_CAF_AG_EEUR_FATIGUES_03",
"U_CAF_AG_EEUR_FATIGUES_03a",
"U_CAF_AG_EEUR_FATIGUES_03b",
"U_CAF_AG_EEUR_FATIGUES_03c"] call BIS_fnc_selectRandom;

randHeadGearFleck = 
["H_CAF_AG_BEANIE",
"H_CAF_AG_BOONIE_01",
"H_CAF_AG_BOONIE_02"] call BIS_fnc_selectRandom;


comment "Add containers";
this forceAddUniform randUniform;
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
this addHeadgear randHeadGearFleck;

comment "Add weapons";
this addWeapon ak74family;
this addWeapon "hgun_Rook40_F";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";