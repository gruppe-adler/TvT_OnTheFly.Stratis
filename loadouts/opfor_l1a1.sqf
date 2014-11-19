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
this forceAddUniform "U_BG_Guerrilla_6_1";
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
this addHeadgear "H_Hat_camo";
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