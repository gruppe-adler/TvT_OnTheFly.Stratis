blufor_AR15_1 = {
  
	
	this = _this select 0;

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

	

	randomAR = ["hlc_rifle_bcmjack","hlc_rifle_RU556","hlc_rifle_RU5562"] call BIS_fnc_selectRandom;

	comment "Add containers";

	if (TROPENTARN) then {
		[[{}, this forceAddUniform "ARC_GER_Tropentarn_Uniform"], "BIS_fnc_spawn", true] call BIS_fnc_MP;
		} else {
		[[{}, this forceAddUniform "ARC_GER_Flecktarn_Uniform"], "BIS_fnc_spawn", true] call BIS_fnc_MP;
	};

	for "_i" from 1 to 2 do {this addItemToUniform "AGM_Bandage";};
	for "_i" from 1 to 2 do {this addItemToUniform "hlc_30rnd_556x45_EPR";};
	if (TROPENTARN) then {
	this addVest "ARC_GER_Tropentarn_Plate_Carrier_H";
	} else {
	this addVest "ARC_GER_Flecktarn_Plate_Carrier_H";
	};
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
	this addWeapon randomAR;
	this addPrimaryWeaponItem "acc_pointer_IR";
	this addPrimaryWeaponItem "optic_ACO_grn";
	this addWeapon "hgun_Pistol_heavy_01_F";

	comment "Add items";
	this linkItem "ItemMap";
	this linkItem "ItemCompass";
	this linkItem "AGM_Altimeter";
	this linkItem "ItemGPS";
	this linkItem "NVGoggles_OPFOR";
	this linkItem "tf_anprc152";

	player setVariable ["dontHaveLoadout",false];
};

blufor_G3_1 = {
  
	this = _this select 0;

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

	

	randomG3 = ["hlc_rifle_g3ka4","hlc_rifle_g3ka4"] call BIS_fnc_selectRandom;


	comment "Add containers";
	if (TROPENTARN) then {
	[[{}, this forceAddUniform "ARC_GER_Tropentarn_Uniform"], "BIS_fnc_spawn", true] call BIS_fnc_MP;
	} else {
	[[{}, this forceAddUniform "ARC_GER_Flecktarn_Uniform"], "BIS_fnc_spawn", true] call BIS_fnc_MP;
	};
	this addItemToUniform "hlc_20rnd_762x51_b_G3";
	this addItemToUniform "hlc_20rnd_762x51_T_G3";
	if (TROPENTARN) then {
	this addVest "ARC_GER_Tropentarn_Plate_Carrier_H";
	} else {
	this addVest "ARC_GER_Flecktarn_Plate_Carrier_H";
	};
	this addItemToVest "AGM_EarBuds";
	for "_i" from 1 to 2 do {this addItemToVest "AGM_CableTie";};
	for "_i" from 1 to 3 do {this addItemToVest "11Rnd_45ACP_Mag";};
	this addItemToVest "HandGrenade";
	for "_i" from 1 to 2 do {this addItemToVest "SmokeShellBlue";};
	this addItemToVest "AGM_HandFlare_White";
	this addItemToVest "B_IR_Grenade";
	for "_i" from 1 to 2 do {this addItemToVest "Chemlight_blue";};
	for "_i" from 1 to 3 do {this addItemToVest "hlc_20rnd_762x51_b_G3";};
	for "_i" from 1 to 2 do {this addItemToVest "hlc_20rnd_762x51_T_G3";};
	if (TROPENTARN) then {
	this addHeadgear "ARC_GER_Tropentarn_Helmet_simple";
	} else {
	this addHeadgear "ARC_GER_Flecktarn_Helmet_simple";
	};

	comment "Add weapons";
	this addWeapon randomG3;
	this addPrimaryWeaponItem "acc_pointer_IR";
	this addPrimaryWeaponItem "optic_ACO_grn";
	this addWeapon "hgun_Pistol_heavy_01_F";

	comment "Add items";
	this linkItem "ItemMap";
	this linkItem "ItemCompass";
	this linkItem "AGM_Altimeter";
	this linkItem "ItemGPS";
	this linkItem "NVGoggles_OPFOR";

	this linkItem "tf_anprc152";

	player setVariable ["dontHaveLoadout",false];

};


blufor_Medic_MP5A4 = 
{

	this = _this select 0;

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
	[[{}, this forceAddUniform "ARC_GER_Tropentarn_Uniform"], "BIS_fnc_spawn", true] call BIS_fnc_MP;
	} else {
	[[{}, this forceAddUniform "ARC_GER_Flecktarn_Uniform"], "BIS_fnc_spawn", true] call BIS_fnc_MP;
	};
    for "_i" from 1 to 2 do {this addItemToUniform "hlc_30rnd_556x45_EPR";};
	if (TROPENTARN) then {
	this addVest "ARC_GER_Tropentarn_Plate_Carrier_H";
	} else {
	this addVest "ARC_GER_Flecktarn_Plate_Carrier_H";
	};
	this addItemToVest "AGM_EarBuds";
	for "_i" from 1 to 2 do {this addItemToVest "AGM_CableTie";};
	for "_i" from 1 to 4 do {this addItemToVest "AGM_Bandage";};
	for "_i" from 1 to 2 do {this addItemToVest "11Rnd_45ACP_Mag";};
	this addItemToVest "HandGrenade";
	for "_i" from 1 to 2 do {this addItemToVest "SmokeShellBlue";};
	this addItemToVest "AGM_HandFlare_White";
	this addItemToVest "B_IR_Grenade";
	for "_i" from 1 to 2 do {this addItemToVest "Chemlight_blue";};
    for "_i" from 1 to 8 do {this addItemToVest "hlc_30rnd_556x45_EPR";};
	if (TROPENTARN) then {
	this addBackpack "ARC_GER_Backpack_Tropentarn_Med";
	} else {
	this addBackpack "ARC_GER_Backpack_Flecktarn_Med";
	};
	for "_i" from 1 to 60 do {this addItemToBackpack "AGM_Bandage";};
	for "_i" from 1 to 15 do {this addItemToBackpack "AGM_Morphine";};
	for "_i" from 1 to 25 do {this addItemToBackpack "AGM_Epipen";};
	for "_i" from 1 to 2 do {this addItemToBackpack "AGM_Bloodbag";};
    for "_i" from 1 to 2 do {this addItemToBackpack "hlc_30rnd_556x45_EPR";};
	if (TROPENTARN) then {
	this addHeadgear "ARC_GER_Tropentarn_Helmet_simple";
	} else {
	this addHeadgear "ARC_GER_Flecktarn_Helmet_simple";
	};

	comment "Add weapons";
	this addWeapon "hlc_rifle_bcmjack";
	this addPrimaryWeaponItem "acc_pointer_IR";
	this addPrimaryWeaponItem "optic_ACO_grn_smg";
	this addWeapon "hgun_Pistol_heavy_01_F";

	comment "Add items";
	this linkItem "ItemMap";
	this linkItem "ItemCompass";
	this linkItem "AGM_Altimeter";
	this linkItem "ItemGPS";
	this linkItem "NVGoggles_OPFOR";
	this linkItem "tf_anprc152";

	player setVariable ["dontHaveLoadout",false];

};


blufor_Medic_MP5SD = 
{

	this = _this select 0;

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
	[[{}, this forceAddUniform "ARC_GER_Tropentarn_Uniform"], "BIS_fnc_spawn", true] call BIS_fnc_MP;
	} else {
	[[{}, this forceAddUniform "ARC_GER_Flecktarn_Uniform"], "BIS_fnc_spawn", true] call BIS_fnc_MP;
	};
	for "_i" from 1 to 2 do {this addItemToUniform "hlc_30Rnd_9x19_GD_MP5";};
	if (TROPENTARN) then {
	this addVest "ARC_GER_Tropentarn_Plate_Carrier_H";
	} else {
	this addVest "ARC_GER_Flecktarn_Plate_Carrier_H";
	};
	this addItemToVest "AGM_EarBuds";
	for "_i" from 1 to 2 do {this addItemToVest "AGM_CableTie";};
	for "_i" from 1 to 4 do {this addItemToVest "AGM_Bandage";};
	for "_i" from 1 to 2 do {this addItemToVest "11Rnd_45ACP_Mag";};
	this addItemToVest "HandGrenade";
	for "_i" from 1 to 2 do {this addItemToVest "SmokeShellBlue";};
	this addItemToVest "AGM_HandFlare_White";
	this addItemToVest "B_IR_Grenade";
	for "_i" from 1 to 2 do {this addItemToVest "Chemlight_blue";};
	for "_i" from 1 to 3 do {this addItemToVest "hlc_30Rnd_9x19_B_MP5";};
	for "_i" from 1 to 3 do {this addItemToVest "hlc_30Rnd_9x19_GD_MP5";};
	if (TROPENTARN) then {
	this addBackpack "ARC_GER_Backpack_Tropentarn_Med";
	} else {
	this addBackpack "ARC_GER_Backpack_Flecktarn_Med";
	};
	for "_i" from 1 to 80 do {this addItemToBackpack "AGM_Bandage";};
	for "_i" from 1 to 20 do {this addItemToBackpack "AGM_Morphine";};
	for "_i" from 1 to 19 do {this addItemToBackpack "AGM_Epipen";};
	for "_i" from 1 to 2 do {this addItemToBackpack "AGM_Bloodbag";};
	if (TROPENTARN) then {
	this addHeadgear "ARC_GER_Tropentarn_Helmet_simple";
	} else {
	this addHeadgear "ARC_GER_Flecktarn_Helmet_simple";
	};

	comment "Add weapons";
	this addWeapon "hlc_smg_mp5sd6";
	this addPrimaryWeaponItem "optic_ACO_grn_smg";
	this addWeapon "hgun_Pistol_heavy_01_F";

	comment "Add items";
	this linkItem "ItemMap";
	this linkItem "ItemCompass";
	this linkItem "AGM_Altimeter";
	this linkItem "ItemGPS";
	this linkItem "NVGoggles_OPFOR";
	this linkItem "tf_anprc152";

	player setVariable ["dontHaveLoadout",false];

};


blufor_MG_M60 = {

	this = _this select 0;

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
	[[{}, this forceAddUniform "ARC_GER_Tropentarn_Uniform"], "BIS_fnc_spawn", true] call BIS_fnc_MP;
	} else {
	[[{}, this forceAddUniform "ARC_GER_Flecktarn_Uniform"], "BIS_fnc_spawn", true] call BIS_fnc_MP;
	};
	this addItemToUniform "11Rnd_45ACP_Mag";
	if (TROPENTARN) then {
	this addVest "ARC_GER_Tropentarn_Plate_Carrier_H";
	} else {
	this addVest "ARC_GER_Flecktarn_Plate_Carrier_H";
	};
	this addItemToVest "AGM_EarBuds";
	for "_i" from 1 to 2 do {this addItemToVest "AGM_CableTie";};
	for "_i" from 1 to 3 do {this addItemToVest "11Rnd_45ACP_Mag";};
	this addItemToVest "HandGrenade";
	for "_i" from 1 to 2 do {this addItemToVest "SmokeShellBlue";};
	this addItemToVest "AGM_HandFlare_White";
	this addItemToVest "B_IR_Grenade";
	for "_i" from 1 to 2 do {this addItemToVest "Chemlight_blue";};
	for "_i" from 1 to 2 do {this addItemToVest "hlc_100Rnd_762x51_M_M60E4";};
	if (TROPENTARN) then {
	this addBackpack "ARC_GER_Backpack_compact_Tropentarn";
	} else {
	this addBackpack "ARC_GER_Backpack_compact_Flecktarn";
	};
	for "_i" from 1 to 4 do {this addItemToBackpack "hlc_100Rnd_762x51_M_M60E4";};
	this addHeadgear "H_Cap_headphones";

	comment "Add weapons";
	this addWeapon "hlc_lmg_m60";
	this addWeapon "hgun_Pistol_heavy_01_F";

	comment "Add items";
	this linkItem "ItemMap";
	this linkItem "ItemCompass";
	this linkItem "AGM_Altimeter";
	this linkItem "ItemGPS";
	this linkItem "NVGoggles_OPFOR";
	this linkItem "tf_anprc152";

	player setVariable ["dontHaveLoadout",false];

};


blufor_MM_M14 = {

	this = _this select 0;

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
	[[{}, this forceAddUniform "ARC_GER_Tropentarn_Uniform"], "BIS_fnc_spawn", true] call BIS_fnc_MP;
	} else {
	[[{}, this forceAddUniform "ARC_GER_Flecktarn_Uniform"], "BIS_fnc_spawn", true] call BIS_fnc_MP;
	};
	for "_i" from 1 to 3 do {this addItemToUniform "20Rnd_762x51_Mag";};
	if (TROPENTARN) then {
	this addVest "ARC_GER_Tropentarn_Plate_Carrier_H";
	} else {
	this addVest "ARC_GER_Flecktarn_Plate_Carrier_H";
	};
	this addItemToVest "AGM_EarBuds";
	for "_i" from 1 to 2 do {this addItemToVest "AGM_CableTie";};
	for "_i" from 1 to 3 do {this addItemToVest "11Rnd_45ACP_Mag";};
	this addItemToVest "HandGrenade";
	for "_i" from 1 to 2 do {this addItemToVest "SmokeShellBlue";};
	this addItemToVest "AGM_HandFlare_White";
	this addItemToVest "B_IR_Grenade";
	for "_i" from 1 to 2 do {this addItemToVest "Chemlight_blue";};
	for "_i" from 1 to 2 do {this addItemToVest "20Rnd_762x51_Mag";};
	for "_i" from 1 to 4 do {this addItemToVest "20Rnd_762x51_Mag";};
	if (TROPENTARN) then {
	this addHeadgear "ARC_GER_Tropentarn_booniehat";
	} else {
	this addHeadgear "ARC_GER_Flecktarn_booniehat";
	};

	comment "Add weapons";
	this addWeapon "srifle_EBR_F";
	this addPrimaryWeaponItem "optic_Hamr";
	this addPrimaryWeaponItem "AGM_muzzle_mzls_B";
	this addWeapon "hgun_Pistol_heavy_01_F";

	comment "Add items";
	this linkItem "ItemMap";
	this linkItem "ItemCompass";
	this linkItem "AGM_Altimeter";
	this linkItem "ItemGPS";
	this linkItem "NVGoggles_OPFOR";
	this linkItem "tf_anprc152";

	player setVariable ["dontHaveLoadout",false];

};


blufor_SQF_G3 = {

	this = _this select 0;

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
	[[{}, this forceAddUniform "ARC_GER_Tropentarn_Uniform"], "BIS_fnc_spawn", true] call BIS_fnc_MP;
	} else {
	[[{}, this forceAddUniform "ARC_GER_Flecktarn_Uniform"], "BIS_fnc_spawn", true] call BIS_fnc_MP;
	};
	for "_i" from 1 to 2 do {this addItemToUniform "AGM_Bandage";};
	this addItemToUniform "hlc_20rnd_762x51_b_G3";
	this addItemToUniform "hlc_20rnd_762x51_T_G3";
	if (TROPENTARN) then {
	this addVest "ARC_GER_Tropentarn_Plate_Carrier_H";
	} else {
	this addVest "ARC_GER_Flecktarn_Plate_Carrier_H";
	};
	this addItemToVest "AGM_EarBuds";
	for "_i" from 1 to 2 do {this addItemToVest "AGM_CableTie";};
	for "_i" from 1 to 3 do {this addItemToVest "11Rnd_45ACP_Mag";};
	this addItemToVest "HandGrenade";
	for "_i" from 1 to 2 do {this addItemToVest "SmokeShellBlue";};
	this addItemToVest "AGM_HandFlare_White";
	this addItemToVest "B_IR_Grenade";
	for "_i" from 1 to 2 do {this addItemToVest "Chemlight_blue";};
	for "_i" from 1 to 3 do {this addItemToVest "hlc_20rnd_762x51_b_G3";};
	for "_i" from 1 to 3 do {this addItemToVest "hlc_20rnd_762x51_T_G3";};
	if (TROPENTARN) then {
	this addBackpack "ARC_GER_Backpack_compact_Tropentarn";
	} else {
	this addBackpack "ARC_GER_Backpack_compact_Flecktarn";
	};
	for "_i" from 1 to 3 do {this addItemToBackpack "SLAMDirectionalMine_Wire_Mag";};
	this addItemToBackpack "AGM_Clacker";
	if (TROPENTARN) then {
	this addHeadgear "ARC_GER_Tropentarn_Helmet";
	} else {
	this addHeadgear "ARC_GER_Flecktarn_Helmet";
	};

	comment "Add weapons";
	this addWeapon "hlc_rifle_g3ka4";
	this addPrimaryWeaponItem "acc_pointer_IR";
	this addPrimaryWeaponItem "optic_ACO_grn";
	this addWeapon "hgun_Pistol_heavy_01_F";
	this addWeapon "Rangefinder";

	comment "Add items";
	this linkItem "ItemMap";
	this linkItem "ItemCompass";
	this linkItem "AGM_Altimeter";
	this linkItem "ItemGPS";
	this linkItem "NVGoggles_OPFOR";
	this linkItem "tf_anprc152";

	player setVariable ["dontHaveLoadout",false];

};


blufor_SQL_AR15 = {

	this = _this select 0;

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
	[[{}, this forceAddUniform "ARC_GER_Tropentarn_Uniform"], "BIS_fnc_spawn", true] call BIS_fnc_MP;
	} else {
	[[{}, this forceAddUniform "ARC_GER_Flecktarn_Uniform"], "BIS_fnc_spawn", true] call BIS_fnc_MP;
	};
	for "_i" from 1 to 2 do {this addItemToUniform "hlc_30rnd_556x45_EPR";};
	if (TROPENTARN) then {
	this addVest "ARC_GER_Tropentarn_Plate_Carrier_H";
	} else {
	this addVest "ARC_GER_Flecktarn_Plate_Carrier_H";
	};
	this addItemToVest "AGM_EarBuds";
	for "_i" from 1 to 2 do {this addItemToVest "AGM_CableTie";};
	for "_i" from 1 to 3 do {this addItemToVest "11Rnd_45ACP_Mag";};
	this addItemToVest "HandGrenade";
	for "_i" from 1 to 2 do {this addItemToVest "SmokeShellBlue";};
	this addItemToVest "AGM_HandFlare_White";
	this addItemToVest "B_IR_Grenade";
	for "_i" from 1 to 2 do {this addItemToVest "Chemlight_blue";};
	for "_i" from 1 to 7 do {this addItemToVest "hlc_30rnd_556x45_EPR";};
	if (TROPENTARN) then {
	this addBackpack "ARC_GER_Backpack_compact_Tropentarn";
	} else {
	this addBackpack "ARC_GER_Backpack_compact_Flecktarn";
	};
	for "_i" from 1 to 3 do {this addItemToBackpack "SLAMDirectionalMine_Wire_Mag";};
	this addItemToBackpack "AGM_Clacker";
	if (TROPENTARN) then {
	this addHeadgear "ARC_GER_Tropentarn_Helmet";
	} else {
	this addHeadgear "ARC_GER_Flecktarn_Helmet";
	};

	comment "Add weapons";
	this addWeapon "hlc_rifle_bcmjack";
	this addPrimaryWeaponItem "acc_pointer_IR";
	this addPrimaryWeaponItem "optic_ACO_grn";
	this addWeapon "hgun_Pistol_heavy_01_F";
	this addWeapon "Rangefinder";

	comment "Add items";
	this linkItem "ItemMap";
	this linkItem "ItemCompass";
	this linkItem "AGM_Altimeter";
	this linkItem "ItemGPS";
	this linkItem "NVGoggles_OPFOR";
	this linkItem "tf_anprc152";

	player setVariable ["dontHaveLoadout",false];

};

loadouts_processed = true;
