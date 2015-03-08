randUniformEastern = 
["U_CAF_AG_EEUR_FATIGUES_01",
"U_CAF_AG_EEUR_FATIGUES_01a",
"U_CAF_AG_EEUR_FATIGUES_02",
"U_CAF_AG_EEUR_FATIGUES_02a",
"U_CAF_AG_EEUR_FATIGUES_03",
"U_CAF_AG_EEUR_FATIGUES_03a",
"U_CAF_AG_EEUR_FATIGUES_03b",
"U_CAF_AG_EEUR_FATIGUES_03c"
];

randUniformTaliban = 
["U_CAF_AG_ME_ROBES_01",
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

randHeadGearEastern = 
["H_CAF_AG_FUR",
"H_CAF_AG_FUR2",
"H_CAF_AG_BEANIE",
"H_CAF_AG_BOONIE_01",
"H_CAF_AG_BOONIE_02",
"H_Watchcap_cbr",
"H_Shemag_olive_hs",
"H_Hat_camo"
];

randHeadGearTaliban = 
["H_CAF_AG_TURBAN",
"H_CAF_AG_PAKTOL",
"H_CAF_AG_PAKTOL_01",
"H_CAF_AG_PAKTOL_02",
"H_CAF_AG_PAKTOL_03",
"H_CAF_AG_WRAP"
];

opfor_rpg = {

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
	if (TROPENTARN) then {
		[[{}, this forceAddUniform (randUniformTaliban call BIS_fnc_selectRandom)], "BIS_fnc_spawn", true] call BIS_fnc_MP;
	} else {
		[[{}, this forceAddUniform (randUniformEastern call BIS_fnc_selectRandom)], "BIS_fnc_spawn", true] call BIS_fnc_MP;
	};
	

	comment "Add items";
	this linkItem "ItemMap";
	this linkItem "ItemCompass";
	this linkItem "ItemWatch";
	this linkItem "tf_fadak";

};


opfor_pkm = {

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
	if (TROPENTARN) then {
		[[{}, this forceAddUniform (randUniformTaliban call BIS_fnc_selectRandom)], "BIS_fnc_spawn", true] call BIS_fnc_MP;
	} else {
		[[{}, this forceAddUniform (randUniformEastern call BIS_fnc_selectRandom)], "BIS_fnc_spawn", true] call BIS_fnc_MP;
	};
	

	comment "Add items";
	this linkItem "ItemMap";
	this linkItem "ItemCompass";
	this linkItem "ItemWatch";
	this linkItem "tf_fadak";



};


opfor_medic = {

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
	if (TROPENTARN) then {
		[[{}, this forceAddUniform (randUniformTaliban call BIS_fnc_selectRandom)], "BIS_fnc_spawn", true] call BIS_fnc_MP;
	} else {
		[[{}, this forceAddUniform (randUniformEastern call BIS_fnc_selectRandom)], "BIS_fnc_spawn", true] call BIS_fnc_MP;
	};
	
	comment "Add items";
	this linkItem "ItemMap";
	this linkItem "ItemCompass";
	this linkItem "ItemWatch";
	this linkItem "tf_fadak";



};


opfor_m14 = {

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
	if (TROPENTARN) then {
		[[{}, this forceAddUniform (randUniformTaliban call BIS_fnc_selectRandom)], "BIS_fnc_spawn", true] call BIS_fnc_MP;
	} else {
		[[{}, this forceAddUniform (randUniformEastern call BIS_fnc_selectRandom)], "BIS_fnc_spawn", true] call BIS_fnc_MP;
	};
	

	comment "Add items";
	this linkItem "ItemMap";
	this linkItem "ItemCompass";
	this linkItem "ItemWatch";
	this linkItem "tf_fadak";



};


opfor_l1a1 = {

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
	if (TROPENTARN) then {
		[[{}, this forceAddUniform (randUniformTaliban call BIS_fnc_selectRandom)], "BIS_fnc_spawn", true] call BIS_fnc_MP;
	} else {
		[[{}, this forceAddUniform (randUniformEastern call BIS_fnc_selectRandom)], "BIS_fnc_spawn", true] call BIS_fnc_MP;
	};
	

	comment "Add items";
	this linkItem "ItemMap";
	this linkItem "ItemCompass";
	this linkItem "ItemWatch";
	this linkItem "ItemGPS";
	this linkItem "tf_fadak";



};

opfor_akfamily = {
	
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

	if (TROPENTARN) then {
		[[{}, this forceAddUniform (randUniformTaliban call BIS_fnc_selectRandom)], "BIS_fnc_spawn", true] call BIS_fnc_MP;
	} else {
		[[{}, this forceAddUniform (randUniformEastern call BIS_fnc_selectRandom)], "BIS_fnc_spawn", true] call BIS_fnc_MP;
	};
	

	comment "Add items";
	this linkItem "ItemMap";
	this linkItem "ItemCompass";
	this linkItem "ItemWatch";
	this linkItem "tf_fadak";

};