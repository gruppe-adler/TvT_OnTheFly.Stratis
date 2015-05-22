// TALIBAN (taliban stuff)

randUniformTaliban = 
[
"LOP_U_Mil_01",
"LOP_U_Mil_02",
"LOP_U_Mil_03",
"LOP_U_Mil_04",
"LOP_U_Afg_civ_01",
"LOP_U_Afg_civ_02",
"LOP_U_Afg_civ_03",
"LOP_U_Afg_civ_04"
];

randomVestTaliban = 
[

];

randomBackpackTaliban =
[

];

randHeadGearTaliban = 
[
"LOP_H_Turban",
"H_ShemagOpen_khk",
"H_ShemagOpen_tan",
"H_Shemag_olive",
"LOP_H_Shemag_IT",
"LOP_H_Pakol",
"LOP_H_Pakol",
"LOP_H_Pakol"
];

randWeaponTaliban = 
[

];

randLauncherTaliban = [

];


// TERRORS (black uniforms)

randUniformTerrorists = 
[
"LOP_U_IT_Fatigue_01",
"LOP_U_IT_Fatigue_02",
"LOP_U_IT_Fatigue_03",
"LOP_U_IT_Fatigue_04",
"LOP_U_IA_Fatigue_02",
"LOP_U_IA_Fatigue_01"
];

randHeadGearTerrorists =
[
"LOP_H_Shemag_IT"
];

randomVestTerrorists = 
[
"ARC_Common_Blk_Plate_Carrier_H",
"ARC_Common_Blk_Plate_Carrier",
"V_PlateCarrier1_blk",
"V_Chestrig_blk",
"V_TacVestIR_blk",
"V_BandollierB_blk",
"V_BandollierB_rgr",
"SMA_UNIFORMS_BLACK_VEST"
];

randomBackpackTerrorists =
[

];

randWeaponTerrorists = 
[

];

randLauncherTerrorists = 
[

];


// EASTERN (wood)

randUniformEastern = 
[
"LOP_U_UA_Fatigue_01",
"LOP_U_UA_Fatigue_02",
"LOP_U_UA_Fatigue_03",
"LOP_U_UA_Fatigue_04",
"LOP_U_US_Fatigue_02",
"LOP_U_US_Fatigue_02_slv",
"LOP_U_ChDKZ_Lopotev"
];

randomVestEastern= 
[

];

randomBackpackEastern =
[

];

randHeadGearEastern = 
[
"H_Bandanna_gry",
"H_Bandanna_cbr",
"H_Bandanna_khk_hs",
"H_Bandanna_khk",
"H_Bandanna_sgg",
"H_Bandanna_sand",
"H_Bandanna_camo",
"H_Watchcap_blk",
"rhs_beanie_green",
"rhs_beanie",
"H_Booniehat_khk_hs",
"H_Booniehat_oli",
"rhs_Booniehat_m81",
"H_Cap_oli",
"H_MilCap_gry",
"H_Cap_headphones"
];

randWeaponEastern = 
[

];

randLauncherEastern = 
[

];


// RUSSIANS (emr summer)

randUniformRussians = 
[
"rhs_uniform_emr_patchless"
];

randVestRussian = 
[
"rhs_6b23_digi",
"rhs_6b23_digi_6sh92",
"rhs_6b23_digi_6sh92_headset_mapcase",
"rhs_6b23_digi_6sh92_radio",
"rhs_6b23_digi_6sh92_vog",
"rhs_6b23_digi_6sh92_vog_headset",
"rhs_6b23_digi_crewofficer",
"rhs_6b23_digi_crew",
"rhs_6b23_digi_engineer",
"rhs_6b23_digi_medic",
"rhs_6b23_digi_rifleman",
"rhs_6b23_digi_sniper"
];

randHeadGearRussian =
[
"rhs_6b27m_digi",
"rhs_6b27m_digi_bala",
"rhs_6b27m_digi_ess",
"rhs_6b27m_digi_ess_bala"
];

randHeadGearRussianOfficer =
[
"rhs_fieldcap_digi",
"rhs_fieldcap_helm_digi"
];

randBackPackRussian = [
"rhs_sidor",
"B_Carryall_oli",
"rhs_assault_umbts",
"rhs_assault_umbts_demo",
"rhs_rpg_empty"
];

randWeaponRussians = 
[

];

randLauncherRussians = 
[

];


switch (OPFORCE) do {
	// taliban
	case "0": {
		customUniform = randUniformTaliban call BIS_fnc_selectRandom;
		customVest= randVestTaliban call BIS_fnc_selectRandom;
		customHeadgear = randHeadGearTaliban call BIS_fnc_selectRandom;
		customBackpack = randBackPackTaliban call BIS_fnc_selectRandom;

	}; 

	// terrorists
	case "1": {
		customUniform = randUniformTerrorists call BIS_fnc_selectRandom;
		customVest= randVestTerrorists call BIS_fnc_selectRandom;
		customHeadgear = randHeadGearTerrorists call BIS_fnc_selectRandom;
		customBackpack = randBackPackTerrorists call BIS_fnc_selectRandom;

	}; 

	// eastern/nationalists
	case "2": {
		customUniform = randUniformEastern call BIS_fnc_selectRandom;
		customVest= randVestEastern call BIS_fnc_selectRandom;
		customHeadgear = randHeadGearEastern call BIS_fnc_selectRandom;
		customBackpack = randBackPackEastern call BIS_fnc_selectRandom;

	}; 
	
	// russians
	case "3": {
		customUniform = randUniformRussians call BIS_fnc_selectRandom;
		customVest= randVestRussian call BIS_fnc_selectRandom;
		customHeadgear = randHeadGearRussian call BIS_fnc_selectRandom;
		customBackpack = randBackPackRussian call BIS_fnc_selectRandom;
	};
	default {};
};


opfor_default = {
	
	this = _this select 0;

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
	
	[[{}, this forceAddUniform customUniform], "BIS_fnc_spawn", true] call BIS_fnc_MP;
	[[{}, this addVest customVest], "BIS_fnc_spawn", true] call BIS_fnc_MP;
	[[{}, this addHeadgear customHeadgear], "BIS_fnc_spawn", true] call BIS_fnc_MP;
	[[{}, this addBackpack customBackpack], "BIS_fnc_spawn", true] call BIS_fnc_MP;
	
	comment "Add items";
	this linkItem "ItemMap";
	this linkItem "ItemCompass";
	this linkItem "ItemWatch";
	this linkItem "tf_fadak";

};