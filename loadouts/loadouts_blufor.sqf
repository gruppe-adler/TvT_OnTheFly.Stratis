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



	comment "Add items";
	this linkItem "ItemMap";
	this linkItem "ItemCompass";
	this linkItem "AGM_Altimeter";
	this linkItem "ItemGPS";
	this linkItem "NVGoggles_OPFOR";
	this linkItem "tf_anprc152";

	
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

	

	

	comment "Add containers";
	if (TROPENTARN) then {
	[[{}, this forceAddUniform "ARC_GER_Tropentarn_Uniform"], "BIS_fnc_spawn", true] call BIS_fnc_MP;
	} else {
	[[{}, this forceAddUniform "ARC_GER_Flecktarn_Uniform"], "BIS_fnc_spawn", true] call BIS_fnc_MP;
	};
	

	comment "Add items";
	this linkItem "ItemMap";
	this linkItem "ItemCompass";
	this linkItem "AGM_Altimeter";
	this linkItem "ItemGPS";
	this linkItem "NVGoggles_OPFOR";

	this linkItem "tf_anprc152";

	

};

blufor_Medic_MP5A4 = {

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
   



	comment "Add items";
	this linkItem "ItemMap";
	this linkItem "ItemCompass";
	this linkItem "AGM_Altimeter";
	this linkItem "ItemGPS";
	this linkItem "NVGoggles_OPFOR";
	this linkItem "tf_anprc152";

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
	

	comment "Add weapons";
	this addWeapon "hlc_lmg_m60e4";
	this addWeapon "hgun_Pistol_heavy_01_F";

	comment "Add items";
	this linkItem "ItemMap";
	this linkItem "ItemCompass";
	this linkItem "AGM_Altimeter";
	this linkItem "ItemGPS";
	this linkItem "NVGoggles_OPFOR";
	this linkItem "tf_anprc152";

	

};blufor_MM_M14 = {

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
	

	comment "Add items";
	this linkItem "ItemMap";
	this linkItem "ItemCompass";
	this linkItem "AGM_Altimeter";
	this linkItem "ItemGPS";
	this linkItem "NVGoggles_OPFOR";
	this linkItem "tf_anprc152";

	

};blufor_SQF_G3 = {

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
	

	comment "Add items";
	this linkItem "ItemMap";
	this linkItem "ItemCompass";
	this linkItem "AGM_Altimeter";
	this linkItem "ItemGPS";
	this linkItem "NVGoggles_OPFOR";
	this linkItem "tf_anprc152";

	

};blufor_SQL_AR15 = {

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
	

	comment "Add items";
	this linkItem "ItemMap";
	this linkItem "ItemCompass";
	this linkItem "AGM_Altimeter";
	this linkItem "ItemGPS";
	this linkItem "NVGoggles_OPFOR";
	this linkItem "tf_anprc152";

	

};