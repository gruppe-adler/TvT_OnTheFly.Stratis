// BUNDESWEHR FLECK

randUniformBWFleck = 
[
"GER_Flecktarn_Officer_Uniform",
"ARC_GER_Flecktarn_Uniform_tshirt",
"ARC_GER_Flecktarn_Uniform_vest",
"ARC_GER_Flecktarn_Uniform",
"ARC_GER_Flecktarn_Uniform_Light"
];

randVestBWFleck = 
[
"ARC_GER_Flecktarn_PlateCarrier_1",
"ARC_GER_Flecktarn_PlateCarrier_2",
"ARC_GER_Flecktarn_Plate_Carrier_H",
"ARC_GER_Flecktarn_Plate_Carrier",
"ARC_GER_Flecktarn_rangemaster_belt",
"ARC_GER_Flecktarn_BandollierB_rgr"
];

randBackpackBWFleck =
[
"ARC_GER_Backpack_Flecktarn",
"ARC_GER_Backpack_compact_Flecktarn",
"ARC_GER_Kitbag_compact_Flecktarn",
"ARC_GER_Backpack_Flecktarn_Med",
"ARC_GER_Backpack_Flecktarn_Rep",
"ARC_GER_Backpack_Carryall_Flecktarn"
];

randHeadGearBWFleck = 
[
"ARC_GER_Flecktarn_Helmet",
"ARC_GER_Flecktarn_Helmet_Light",
"ARC_GER_Flecktarn_Helmet_simple",
"ARC_GER_Flecktarn_Milcap",
"ARC_GER_Flecktarn_Mich",
"ARC_GER_Flecktarn_booniehat"
];

randWeaponBWFleck = 
[

];

randLauncherBWFleck = 
[

];


// BUNDESWEHR TROPEN

randUniformBWTropen = 
[
"GER_Tropentarn_Officer_Uniform",
"ARC_GER_Tropentarn_Uniform_tshirt",
"ARC_GER_Tropentarn_Uniform_vest",
"ARC_GER_Tropentarn_Uniform",
"ARC_GER_Tropentarn_Uniform_Light"
];

randVestBWTropen = 
[
"ARC_GER_Tropentarn_PlateCarrier_1",
"ARC_GER_Tropentarn_PlateCarrier_2",
"ARC_GER_Tropentarn_Plate_Carrier_H",
"ARC_GER_Tropentarn_Plate_Carrier",
"ARC_GER_Tropentarn_rangemaster_belt",
"ARC_GER_Tropentarn_BandollierB_rgr"
];

randBackpackBWTropen =
[
"ARC_GER_Backpack_Tropentarn",
"ARC_GER_Backpack_compact_Tropentarn",
"ARC_GER_Kitbag_compact_Tropentarn",
"ARC_GER_Backpack_Tropentarn_Med",
"ARC_GER_Backpack_Tropentarn_Rep",
"ARC_GER_Backpack_Carryall_Tropentarn"
];

randHeadGearBWTropen =
[
"ARC_GER_Tropentarn_Helmet",
"ARC_GER_Tropentarn_Helmet_Light",
"ARC_GER_Tropentarn_Helmet_simple",
"ARC_GER_Tropentarn_Milcap",
"ARC_GER_Tropentarn_Mich",
"ARC_GER_Tropentarn_booniehat"
];

randWeaponBWTropen = 
[

];

randLauncherBWTropen = 
[

];


// US DESERT

randUniformUSOCP = 
[
"rhs_uniform_cu_ocp",
""
];

randVestUSOCP= 
[
"rhsusf_iotv_ocp_Grenadier",
"rhsusf_iotv_ocp_Medic",
"rhsusf_iotv_ocp",
"rhsusf_iotv_ocp_Teamleader",
"rhsusf_iotv_ocp_Squadleader",
"rhsusf_iotv_ocp_SAW",
"rhsusf_iotv_ocp_Rifleman",
"rhsusf_iotv_ocp_Repair"
];

randBackpackUSOCP =
[
"rhsusf_assault_eagleaiii_ocp"
];

randHeadGearUSOCP = 
[
"rhsusf_patrolcap_ocp",
"rhsusf_ach_helmet_ocp",
"rhsusf_ach_helmet_ESS_ocp",
"rhsusf_ach_helmet_headset_ocp",
"rhsusf_ach_helmet_headset_ess_ocp"
];

randWeaponUSOCP = 
[

];

randLauncherUSOCP = 
[

];


// US WOODS

randUniformUSUCP = 
[
"rhs_uniform_cu_ucp"
];

randVestUSUCP = 
[
"rhsusf_iotv_ucp_Grenadier",
"rhsusf_iotv_ucp_Medic",
"rhsusf_iotv_ucp",
"rhsusf_iotv_ucp_Teamleader",
"rhsusf_iotv_ucp_Squadleader",
"rhsusf_iotv_ucp_SAW",
"rhsusf_iotv_ucp_Rifleman",
"rhsusf_iotv_ucp_Repair"
];

randBackpackUSUCP = 
[
"rhsusf_assault_eagleaiii_ucp"
];

randHeadGearUSUCP =
[
"rhsusf_patrolcap_ucp",
"rhsusf_ach_helmet_ucp",
"rhsusf_ach_helmet_ESS_ucp",
"rhsusf_ach_helmet_headset_ucp",
"rhsusf_ach_helmet_headset_ess_ucp"
];

randWeaponUSUCP = 
[

];

randLauncherUSUCP = 
[

];


switch (BLUFORCE) do {
	// BW Fleck
	case "0": {
		customUniform = randUniformBWFleck call BIS_fnc_selectRandom;
		customVest = randVestBWFleck call BIS_fnc_selectRandom;
		customHeadgear = randHeadGearBWFleck call BIS_fnc_selectRandom;
		customBackpack = randBackpackBWFleck call BIS_fnc_selectRandom;

	}; 

	// BW Tropen
	case "1": {
		customUniform = randUniformBWTropen call BIS_fnc_selectRandom;
		customVest = randVestBWTropen call BIS_fnc_selectRandom;
		customHeadgear = randHeadGearBWTropen call BIS_fnc_selectRandom;
		customBackpack = randBackpackBWTropen call BIS_fnc_selectRandom;

	}; 

	// US Desert
	case "2": {
		customUniform = randUniformUSOCP call BIS_fnc_selectRandom;
		customVest = randVestUSOCP call BIS_fnc_selectRandom;
		customHeadgear = randHeadGearUSOCP call BIS_fnc_selectRandom;
		customBackpack = randBackpackUSOCP call BIS_fnc_selectRandom;

	}; 
	
	// US Tropen
	case "3": {
		customUniform = randUniformUSUCP call BIS_fnc_selectRandom;
		customVest = randVestUSUCP call BIS_fnc_selectRandom;
		customHeadgear = randHeadGearUSUCP call BIS_fnc_selectRandom;
		customBackpack = randBackpackUSUCP call BIS_fnc_selectRandom;
	};
	default {};
};


blufor_default = {
	
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
	this linkItem "ACE_Altimeter";
	this linkItem "ItemGPS";
	this linkItem "NVGoggles_OPFOR";
	this linkItem "tf_anprc152";
	
};