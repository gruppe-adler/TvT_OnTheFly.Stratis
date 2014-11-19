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

if (TROPENTARN) then {
this forceAddUniform "ARC_GER_Tropentarn_Uniform";
} else {
this forceAddUniform "ARC_GER_Flecktarn_Uniform";
};

for "_i" from 1 to 2 do {this addItemToUniform "AGM_Bandage";};
for "_i" from 1 to 2 do {this addItemToUniform "hlc_30rnd_556x45_EPR";};
this addVest "ARC_GER_Flecktarn_Plate_Carrier_H";
this addItemToVest "AGM_EarBuds";
for "_i" from 1 to 2 do {this addItemToVest "AGM_CableTie";};
for "_i" from 1 to 5 do {this addItemToVest "hlc_30rnd_556x45_EPR";};
for "_i" from 1 to 3 do {this addItemToVest "11Rnd_45ACP_Mag";};
this addItemToVest "HandGrenade";
for "_i" from 1 to 2 do {this addItemToVest "SmokeShellBlue";};
this addItemToVest "AGM_HandFlare_White";
this addItemToVest "B_IR_Grenade";
for "_i" from 1 to 2 do {this addItemToVest "Chemlight_blue";};
if (TROPENTARN) then {
this addHeadgear "ARC_GER_Tropentarn_Helmet_simple";
} else {
this addHeadgear "ARC_GER_Flecktarn_Helmet_simple";
};

comment "Add weapons";
this addWeapon "hlc_rifle_RU556";
this addPrimaryWeaponItem "acc_pointer_IR";
this addPrimaryWeaponItem "optic_ACO_grn";
this addWeapon "hgun_Pistol_heavy_01_F";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "AGM_Altimeter";
this linkItem "tf_anprc152_2";
this linkItem "NVGoggles_OPFOR";

