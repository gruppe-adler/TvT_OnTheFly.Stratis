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
this forceAddUniform "U_CAF_AG_EEUR_FATIGUES_02a";
for "_i" from 1 to 4 do {this addItemToUniform "AGM_Bandage";};
this addItemToUniform "16Rnd_9x21_Mag";
this addVest "V_TacVest_khk";
for "_i" from 1 to 10 do {this addItemToVest "AGM_Bandage";};
for "_i" from 1 to 6 do {this addItemToVest "AGM_HandFlare_Red";};
for "_i" from 1 to 3 do {this addItemToVest "hlc_30Rnd_545x39_EP_ak";};
this addItemToVest "hlc_30Rnd_545x39_t_ak";
this addBackpack "ARC_PL_Backpack_Carryall_Pantera";
for "_i" from 1 to 80 do {this addItemToBackpack "AGM_Bandage";};
for "_i" from 1 to 25 do {this addItemToBackpack "AGM_Morphine";};
for "_i" from 1 to 25 do {this addItemToBackpack "AGM_Epipen";};
for "_i" from 1 to 2 do {this addItemToBackpack "AGM_Bloodbag";};
this addItemToBackpack "AGM_EarBuds";
this addItemToBackpack "AGM_CableTie";
this addHeadgear "H_MilCap_gry";

comment "Add weapons";
this addWeapon "hlc_rifle_aks74u";
this addWeapon "hgun_Rook40_F";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";