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
this forceAddUniform "U_BG_leader";
for "_i" from 1 to 2 do {this addItemToUniform "hlc_30Rnd_762x39_b_ak";};
this addVest "V_TacVest_oli";
for "_i" from 1 to 10 do {this addItemToVest "AGM_Bandage";};
for "_i" from 1 to 6 do {this addItemToVest "AGM_HandFlare_Red";};
for "_i" from 1 to 3 do {this addItemToVest "SmokeShellPurple";};
for "_i" from 1 to 3 do {this addItemToVest "SmokeShell";};
this addItemToVest "Chemlight_red";
this addItemToVest "hlc_30Rnd_762x39_b_ak";
this addItemToVest "hlc_30rnd_762x39_s_ak";
this addBackpack "B_AssaultPack_dgtl";
this addItemToBackpack "AGM_CableTie";
this addItemToBackpack "AGM_EarBuds";
this addItemToBackpack "caf_PG7V";
this addItemToBackpack "caf_OG7";
this addItemToBackpack "hlc_30Rnd_762x39_t_ak";
for "_i" from 1 to 3 do {this addItemToBackpack "hlc_30rnd_762x39_s_ak";};
this addHeadgear "H_caf_ag_boonie_01";

comment "Add weapons";
this addWeapon "hlc_rifle_akm";
this addWeapon "caf_rpg7";
this addWeapon "hgun_Rook40_F";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "tf_pnr1000a";