//Init stuff
_crate = _this select 0;

clearWeaponCargoGlobal _crate; clearItemCargoGlobal _crate; clearMagazineCargoGlobal _crate; clearBackpackCargo _crate; 

["AmmoboxInit",[_crate,false,{true}]] spawn BIS_fnc_arsenal; 
// 1 all weapons, 2 condition for action

// exit script when sma and hlc is off
if !(addOnsSMAandHLC) exitWith {
	
	_hasAction = _crate getVariable ["ArsenalPresent", false];
	removeAllActions _crate;

	if (!_hasAction) then {
		
		_crate addAction ["<t color='#45B6EA'>" + localize "str_GRAD_openSupplyBox",
		{
			_box = _this select 0;
			_unit = _this select 1;
			
			["Open",[nil,_box]] call bis_fnc_arsenal;
			
			
		},[],	1000, true, false,	"", "_this distance _target < 3"];
		
		

		_crate setVariable ["ArsenalPresent", true, true];
	};
};


_hasAction = _crate getVariable ["ArsenalPresent", false];
removeAllActions _crate;

if (!_hasAction) then {
	
	_crate addAction ["<t color='#45B6EA'>" + localize "str_GRAD_openSupplyBox",
		{
			_box = _this select 0;
			_unit = _this select 1;
			
			["Open",[nil,_box]] call bis_fnc_arsenal;
			
			
		},[],	1000, true, false,	"", "_this distance _target < 3"];

	_crate setVariable ["ArsenalPresent", true, true];
};




_availableHeadgear = [
	"H_CAF_AG_TURBAN",
	"H_CAF_AG_PAKTOL",
	"H_CAF_AG_PAKTOL_01",
	"H_CAF_AG_PAKTOL_02",
	"H_CAF_AG_PAKTOL_03",
	"H_CAF_AG_WRAP",
	"H_CAF_AG_FUR",
	"H_CAF_AG_FUR2",
	"H_CAF_AG_BEANIE",
	"H_CAF_AG_BOONIE_01",
	"H_CAF_AG_BOONIE_02",
	"H_Watchcap_cbr",
	"H_Shemag_olive_hs",
	"H_Hat_camo",
	"H_Watchcap_blk"
];

_availableBackpacks = [
	"B_Carryall_mcamo",
	"B_AssaultPack_dgtl",
	"B_Carryall_cbr",
	"B_AssaultPack_khk"
];

_availableItems = [
	"AGM_Earbuds",
	"tf_fadak",
	"G_Squares_Tinted",
	"G_Aviator",
	"G_Spectacles_Tinted",
	"G_Spectacles",
	"Mask_M40_OD",
	"Mask_M50",
	"Mask_M40",
	"L_Shemagh_Red",
	"NeckTight_Tan",
	"LBG_Shemagh_Gry",
	"G_Balaclava_blk",
	"G_Balaclava_oli",
	"G_Bandanna_tan",
	"G_Bandanna_oli"
];

_availableVests = [
    "V_TacVest_khk",
    "V_TacVest_oli",
    "V_I_G_resistanceLeader_F"
];

_availableUniforms = [
	"U_CAF_AG_EEUR_FATIGUES_01",
	"U_CAF_AG_EEUR_FATIGUES_01a",
	"U_CAF_AG_EEUR_FATIGUES_02",
	"U_CAF_AG_EEUR_FATIGUES_02a",
	"U_CAF_AG_EEUR_FATIGUES_03",
	"U_CAF_AG_EEUR_FATIGUES_03a",
	"U_CAF_AG_EEUR_FATIGUES_03b",
	"U_CAF_AG_EEUR_FATIGUES_03c",
	"U_OG_Guerilla1_1",
	"U_OG_Guerilla2_1",
	"U_OG_Guerilla2_3",
	"U_OG_Guerilla3_1",
	"U_OG_Guerilla3_2",
	"U_OG_leader",
    "U_CAF_AG_ME_ROBES_01",
	"U_CAF_AG_ME_ROBES_01a",
	"U_CAF_AG_ME_ROBES_01b",
	"U_CAF_AG_ME_ROBES_01c",
	"U_CAF_AG_ME_ROBES_01d",
	"U_CAF_AG_ME_ROBES_02",
	"U_CAF_AG_ME_ROBES_02a",
	"U_CAF_AG_ME_ROBES_02b",
	"U_CAF_AG_ME_ROBES_02c",
	"U_CAF_AG_ME_ROBES_02d",
	"U_CAF_AG_ME_ROBES_03",
	"U_CAF_AG_ME_ROBES_03a",
	"U_CAF_AG_ME_ROBES_03b",
	"U_CAF_AG_ME_ROBES_03c",
	"U_CAF_AG_ME_ROBES_03d",
	"U_CAF_AG_ME_ROBES_04",
	"U_CAF_AG_ME_ROBES_04a",
	"U_CAF_AG_ME_ROBES_04b",
	"U_CAF_AG_ME_ROBES_04c",
	"U_CAF_AG_ME_ROBES_04d",
	"U_CAF_AG_ME_ROBES_mil_01",
	"U_CAF_AG_ME_ROBES_mil_01a"
];

_availableWeapons = [
	"hlc_rifle_L1A1SLR",
	"hlc_rifle_FAL5061",
	"hlc_rifle_ak47",
	"hlc_rifle_ak74",
	"hlc_rifle_ak74_dirty",
	"hlc_rifle_akm",
	"hlc_rifle_aks74",
	"hlc_rifle_aks74u",
	"hlc_rifle_aek971",
	"hgun_ACPC2_F"
];

[_crate,((backpackCargo _crate) + _availableBackpacks)] call BIS_fnc_addVirtualBackpackCargo;
[_crate,((itemCargo _crate) + _availableHeadgear + _availableItems + _availableUniforms + _availableVests)] call BIS_fnc_addVirtualItemCargo;
[_crate,(magazineCargo _crate)] call BIS_fnc_addVirtualMagazineCargo;
[_crate,(weaponCargo _crate) + _availableWeapons] call BIS_fnc_addVirtualWeaponCargo;
