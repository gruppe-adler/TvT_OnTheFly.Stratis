blufor_default = {
	
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