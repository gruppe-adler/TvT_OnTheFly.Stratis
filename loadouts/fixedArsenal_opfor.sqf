/*
	Description:
	Make the subject a "virtual arsenal" and add virtual inventory to it.

	Author: Alexander [3CB]
	Edits: Apollo [3CB]
	Version: 8

	Remarks:
	TODO: Is it possible to automate the "hasMOD" checks somehow? 

	Parameter(s):
		0: OBJECT - the object to which the arsenal should be added

	Example:
		_null = this execVM "restrictedArsenal.sqf"

	Returns:
		BOOL - true  (always)
*/

if (isServer) then {

// Initialisation
_crate = [_this, 0, objNull, [objNull]] call BIS_fnc_param;

// -------------------------------------------------------------------
//		A3 HEADGEAR
// -------------------------------------------------------------------
_A3Headgear = [
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
	"H_Watchcap_blk",
	"XLA_Null"				//Leave this here, avoids comma issues
];

// -------------------------------------------------------------------
//		A3 GOGGLES
// -------------------------------------------------------------------
_A3Goggles = [
	"AGM_Earbuds",
	"tf_fadak",
	"G_Squares_Tinted",
	"G_Aviator",
	"G_Spectacles_Tinted",
	"G_Spectacles",
	"G_Balaclava_blk",
	"G_Balaclava_oli",
	"G_Bandanna_tan",
	"G_Bandanna_oli",
    "SMA_eotech552_3XDOWN",
    "SMA_eotech552_3XDOWN_des",
    "SMA_eotech552_3XDOWN_wdl",
	"FHQ_acc_LLM01L",
	"XLA_Null"				//Leave this here, avoids comma issues
];

// -------------------------------------------------------------------
//		A3 UNIFORMS
// -------------------------------------------------------------------
_A3Uniforms = [
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
	"U_CAF_AG_ME_ROBES_mil_01a",
	"XLA_Null"				//Leave this here, avoids comma issues
];

// -------------------------------------------------------------------
//		A3 VESTS
// -------------------------------------------------------------------
_A3Vests = [
	 "V_TacVest_khk",
    "V_TacVest_oli",
    "V_I_G_resistanceLeader_F",
	"XLA_Null"				//Leave this here, avoids comma issues
];

// -------------------------------------------------------------------
//		A3 BACKPACKS
// -------------------------------------------------------------------
_A3Backpacks = [
	// --- BLUFOR (NATO) ---
	"B_AssaultPack_blk",
	"B_AssaultPack_cbr",
	"B_AssaultPack_Kerry",
	"B_AssaultPack_khk",
	"B_AssaultPack_mcamo",
	//"B_AssaultPack_ocamo", 			// CSAT!
	"B_AssaultPack_rgr",
	"B_AssaultPack_sgg",
	"B_Carryall_cbr",
	"B_Carryall_khk",
	"B_Carryall_mcamo",	
	"B_Carryall_oli",
	//"B_FieldPack_blk",				//CSAT style
	//"B_FieldPack_cbr",				//CSAT style
	"B_Kitbag_cbr",
	"B_Kitbag_mcamo",
	"B_Kitbag_rgr",
	"B_Kitbag_sgg",
	"B_Parachute",
	"B_TacticalPack_blk",
	"B_TacticalPack_mcamo",
	//"B_TacticalPack_ocamo", 			// CSAT!
	"B_TacticalPack_oli",
	"B_TacticalPack_rgr",

	// --- OPFOR (CSAT) ---
	// TO DO: Add Opfor Backpacks

	// --- INDEPENDANT (AAF} ---
	// TO DO: Add Independant Backpacks

	"XLA_Null"				//Leave this here, avoids comma issues
];

// -------------------------------------------------------------------
//		A3 ITEMS
// -------------------------------------------------------------------
_A3Items = [
	"ItemCompass",
	//"ItemGPS",
	"ItemMap",
	//"ItemRadio", 						// Disabled because of TFAR
	"ItemWatch",
	//"Medikit",
	//"ToolKit",
	//"MineDetector",
	//"B_UavTerminal",
	//"O_UavTerminal",					// Opfor
	//"I_UavTerminal",					// Ind
	//"NVGoggles", 						// Blufor (Brown)
	//"NVGoggles_OPFOR", 					// Opfor (Black)
	//"NVGoggles_INDEP", 					// Ind (Green)
	"XLA_Null"				//Leave this here, avoids comma issues		
];

// -------------------------------------------------------------------
//		A3 WEAPONS
// -------------------------------------------------------------------
_A3Guns = [
	// --- CROSS-FACTION ---

	// Equipment
	"Binocular",	
	"hlc_rifle_L1A1SLR",
	"hlc_rifle_FAL5061",
	"hlc_rifle_ak47",
	"hlc_rifle_ak74",
	"hlc_rifle_ak74_dirty",
	"hlc_rifle_akm",
	"hlc_rifle_aks74",
	"hlc_rifle_aks74u",
	"hlc_rifle_aek971",
	"hgun_ACPC2_F",
	"hlc_rifle_aku12",
	"hlc_rifle_ak12",
	"XLA_Null"				//Leave this here, avoids comma issues
];

// -------------------------------------------------------------------
//		A3 MAGAZINES
// -------------------------------------------------------------------
_A3Magazines = [
	// --- CROSS-FACTION ---
	
	// Laser Designator Batteries
	"Laserbatteries",
	
	// Launcher Ammo
	"NLAW_F",
	"RPG32_F",
	"RPG32_HE_F",
	"Titan_AA",
	"Titan_AT",
	"Titan_AP",

	// 9mm Pistol / 4.5 SMG Ammo
	"16Rnd_9x21_Mag",
	"30Rnd_9x21_Mag",
	"30Rnd_45ACP_Mag_SMG_01",
	//"30Rnd_45ACP_Mag_SMG_01_Tracer_Green",

	// ABR / EBR Ammo
	"20Rnd_762x51_Mag",

	// Underwater Ammo (SDAR)
	"20Rnd_556x45_UW_mag",

	// 1Rnd Grenade Launcher Ammo
	"1Rnd_HE_Grenade_shell",
	"1Rnd_SmokeBlue_Grenade_shell",
	"1Rnd_SmokeGreen_Grenade_shell",
	"1Rnd_SmokeOrange_Grenade_shell",	
	"1Rnd_SmokePurple_Grenade_shell",
	"1Rnd_SmokeRed_Grenade_shell",
	"1Rnd_SmokeYellow_Grenade_shell",
	"1Rnd_Smoke_Grenade_shell",

	// Flares		
	"UGL_FlareCIR_F",
	"UGL_FlareGreen_F",
	"UGL_FlareRed_F",
	"UGL_FlareWhite_F",
	"UGL_FlareYellow_F",
	
	// 3Rnd Grenade Launcher Ammo 
	"3Rnd_HE_Grenade_shell",
	"3Rnd_UGL_FlareWhite_F",
	"3Rnd_UGL_FlareGreen_F",
	"3Rnd_UGL_FlareRed_F",
	"3Rnd_UGL_FlareYellow_F",
	"3Rnd_UGL_FlareCIR_F",
	"3Rnd_Smoke_Grenade_shell",
	"3Rnd_SmokeRed_Grenade_shell",
	"3Rnd_SmokeGreen_Grenade_shell",
	"3Rnd_SmokeYellow_Grenade_shell",
	"3Rnd_SmokePurple_Grenade_shell",
	"3Rnd_SmokeBlue_Grenade_shell",
	"3Rnd_SmokeOrange_Grenade_shell",

	// Explosives
	"Chemlight_blue",
	"Chemlight_green",
	"Chemlight_red",
	"Chemlight_yellow",
	"HandGrenade",
	//"HandGrenade_Stone",
	"MiniGrenade",
	"SmokeShell",
	"SmokeShellBlue",
	"SmokeShellGreen",
	"SmokeShellOrange",
	"SmokeShellPurple",
	"SmokeShellRed",
	"SmokeShellYellow",
	
	/*"DemoCharge_Remote_Mag",
	"SatchelCharge_Remote_Mag",
	"ATMine_Range_Mag",
	"ClaymoreDirectionalMine_Remote_Mag",
	"APERSMine_Range_Mag",
	"APERSBoundingMine_Range_Mag",
	"SLAMDirectionalMine_Wire_Mag",
	"APERSTripMine_Wire_Mag",
	*/
	// --- BLUFOR (NATO) ---

	// IR Grenade
	"B_IR_Grenade",

	// Stanag Ammo
	"30Rnd_556x45_Stanag",
	"30Rnd_556x45_Stanag_Tracer_Red",			// BLUFOR colour
	"30Rnd_556x45_Stanag_Tracer_Green", 		// OPFOR colour
	"30Rnd_556x45_Stanag_Tracer_Yellow", 		// INDFOR colour

	// EBR / ABR
	"20Rnd_762x51_Mag",
	
	// MX Ammo
	"30Rnd_65x39_caseless_mag",
	"30Rnd_65x39_caseless_mag_Tracer",

	"100Rnd_65x39_caseless_mag",
	"100Rnd_65x39_caseless_mag_Tracer",
	
	// Handgun Ammo
	"11Rnd_45ACP_Mag", 							// Heavy Pistol

	// Sniper Rifle Ammo
	"7Rnd_408_Mag",								// LRR

	/*
	// --- OPFOR (CSAT) ---
	
	// IR Grenade
	"O_IR_Grenade",

	// Katiba
	"30Rnd_65x39_caseless_green",
	"30Rnd_65x39_caseless_green_mag_Tracer",

	// LMG (Zafir) Ammo
	"150Rnd_762x51_Box",
	"150Rnd_762x51_Box_Tracer",

	// Pistol Ammo
	"6Rnd_45ACP_Cylinder",

	// Sniper Ammo
	"10Rnd_762x51_Mag", 						// Rahim
	"5Rnd_127x108_APDS_Mag", 					// GM6
	"5Rnd_127x108_Mag",							// GM6
	*/
	
	/*
	// --- INDEPENDANT (AAF} ---
	
	// IR Grenade
	"I_IR_Grenade",
	
	"30Rnd_556x45_Stanag",
	"30Rnd_556x45_Stanag_Tracer_Yellow",

	// MG Ammo
	//"200Rnd_65x39_Belt",
	//"200Rnd_65x39_Belt_Tracer_Green",
	//"200Rnd_65x39_Belt_Tracer_Red",
	//"200Rnd_65x39_Belt_Tracer_Yellow",
	"200Rnd_65x39_cased_Box",
	"200Rnd_65x39_cased_Box_Tracer"
	*/
	"XLA_Null"				//Leave this here, avoids comma issues
];

// -------------------------------------------------------------------
//		A3 ATTACHMENTS
// -------------------------------------------------------------------
_A3Attachments = [ 
/*	"acc_flashlight",
	"acc_pointer_IR",
	"muzzle_snds_acp",
	"muzzle_snds_B", 					// 7.62mm
	"muzzle_snds_H", 					// 6.5mm
	"muzzle_snds_H_MG", 				// TO DO: disallow suppressors for LMG's
	//"muzzle_snds_H_SW", 				// copy of above
	"muzzle_snds_L", 					// 9mm
	"muzzle_snds_M", 					// 5.56mm
	"optic_Aco",
	"optic_ACO_grn",
	"optic_ACO_grn_smg",
	"optic_Aco_smg",
	"optic_Arco",
	"optic_DMS",
	"optic_Hamr",
	"optic_Holosight",
	"optic_Holosight_smg",
	"optic_LRPS",
	"optic_MRCO",
	"optic_MRD",
	"optic_Nightstalker",
	"optic_NVS",
	"optic_SOS",
	"optic_tws",
	"optic_tws_mg",
	"optic_Yorris",*/
	"XLA_Null"				//Leave this here, avoids comma issues
];

// -------------------------------------------------------------------
// 		@acre2
// -------------------------------------------------------------------
_acreItems = [
	/*"ACRE_PRC148",
	"ACRE_PRC343",*/
	"XLA_Null"				//Leave this here, avoids comma issues
];

// -------------------------------------------------------------------
// 		@beretpack2
// -------------------------------------------------------------------
_BeretPackHeadgear = [
	/*"B_P_Beret",
	"B_P_BeretOff",
	"B_P_Beretpwrr",
	"B_P_Beretramc",
	"B_P_Beretramcoff",
	"B_P_BeretRct",
	"B_P_Beretrlc",*/
	"XLA_Null"				//Leave this here, avoids comma issues
];

// -------------------------------------------------------------------
// 		@nato_russian_sf_weapons
// -------------------------------------------------------------------
_masGuns = [
	// @nato_russian_sf_weapons, Blufor Handguns
	/*"hgun_mas_acp_F",
	"hgun_mas_bhp_F",
	"hgun_mas_glocksf_F",
	"hgun_mas_glock_F",
	"hgun_mas_m9_F",
	"hgun_mas_m23_F",
	"hgun_mas_m23_l_F",
	"hgun_mas_usp_F",
	"hgun_mas_usp_l_F",

	// @nato_russian_sf_weapons, Blufor Rifles
	//"arifle_mas_fal",
	//"arifle_mas_fal_m203",
	//"arifle_mas_g3",
	//"arifle_mas_g3_m203",
	//"arifle_mas_g3s",
	//"arifle_mas_g3s_m203",
	"arifle_mas_hk416",
	"arifle_mas_hk416_d",
	"arifle_mas_hk416_gl",
	"arifle_mas_hk416_gl_d",
	"arifle_mas_hk416_gl_v",
	"arifle_mas_hk416_m203",
	"arifle_mas_hk416_m203_d",
	"arifle_mas_hk416_m203_v",
	"arifle_mas_hk416_m203c",
	"arifle_mas_hk416_m203c_d",
	"arifle_mas_hk416_m203c_v",
	"arifle_mas_hk416_v",
	"arifle_mas_hk416c",
	"arifle_mas_hk416c_d",
	"arifle_mas_hk416c_v",
	"arifle_mas_hk417_m203c",
	"arifle_mas_hk417_m203c_d",
	"arifle_mas_hk417_m203c_v",
	"arifle_mas_hk417c",
	"arifle_mas_hk417c_d", 
	"arifle_mas_hk417c_v",
	"arifle_mas_l119",
	"arifle_mas_l119_d",
	"arifle_mas_l119_gl",
	"arifle_mas_l119_gl_d",
	"arifle_mas_l119_gl_v",
	"arifle_mas_l119_m203",
	"arifle_mas_l119_m203_d",
	"arifle_mas_l119_m203_v",
	"arifle_mas_l119_v",
	"arifle_mas_m1014",
	"arifle_mas_m16",
	"arifle_mas_m16_gl",
	"arifle_mas_m4",
	"arifle_mas_m4_d",
	"arifle_mas_m4_gl",
	"arifle_mas_m4_gl_d",
	"arifle_mas_m4_gl_v", 
	"arifle_mas_m4_m203",
	"arifle_mas_m4_m203_d",
	"arifle_mas_m4_m203_v",
	"arifle_mas_m4_m203c",
	"arifle_mas_m4_m203c_d",
	"arifle_mas_m4_m203c_v",
	"arifle_mas_m4_v",
	"arifle_mas_m4c",
	"arifle_mas_m4c_d",
	"arifle_mas_m4c_v",
	"arifle_mas_mk16",
	"arifle_mas_mk16_gl",
	"arifle_mas_mk16_l",
	"arifle_mas_mk16_l_gl",
	"arifle_mas_mk17",
	"arifle_mas_mk17_gl",
	// "arifle_mas_mp5sd", 				// these two have flash-lights on them
	// "arifle_mas_mp5sd_ds",
	"arifle_mas_mp5",
	"arifle_mas_mp5_d",
	"arifle_mas_mp5_v", 

	// @nato_russian_sf_weapons, Blufor Machine Guns
	"LMG_mas_m240_F",
	"LMG_mas_M249a_F",
	"LMG_mas_M249_F",
	"LMG_mas_M249_F_d",
	"LMG_mas_M249_F_v",
	"LMG_mas_mg3_F",
	"LMG_mas_mk48_F",
	"LMG_mas_mk48_F_d",
	"LMG_mas_mk48_F_v",
	"LMG_mas_Mk200_F",	
	
	// @nato_russian_sf_weapons, Blufor Sniper Rifles
	"srifle_mas_hk417_d",
	"srifle_mas_hk417_v",
	"srifle_mas_m107_d",
	"srifle_mas_m107_v",
	"srifle_mas_m24_d",
	"srifle_mas_m24_v",
	"srifle_mas_sr25_d",
	"srifle_mas_sr25_v",
	"srifle_mas_ebr",
	"srifle_mas_hk417",
	"srifle_mas_m24",
	"srifle_mas_m107",
	"srifle_mas_m110",
	"srifle_mas_mk17s",
	"srifle_mas_sr25",

	// @nato_russian_sf_weapons, Blufor Launchers
	"mas_launch_M136_F",
	"mas_launch_maaws_F",
	"mas_launch_Stinger_F",
	
	// TO DO: Add OPFOR (AKs)*/

	"XLA_Null"				//Leave this here, avoids comma issues
];

_masMagazines = [
	/*
	// 5.56 Stanag
	// Not compatible with Trixie's L85
	"30Rnd_mas_556x45_Stanag",
	"30Rnd_mas_556x45_T_Stanag",

	//.45
	"12rnd_mas_45acp_mag",

	//9mm ammo?
	"17Rnd_mas_9x21_Mag",
	"15rnd_mas_9x21_mag",

	// Shotgun, 7.62mm and 9mm Ammo
	"7Rnd_mas_12Gauge_Pellets",
	"7Rnd_mas_12Gauge_Slug",
	"20Rnd_mas_762x51_Stanag",
	"30Rnd_mas_9x21_Stanag",
	"30Rnd_mas_762x39_mag",
	"30Rnd_mas_762x39_T_mag",

	// SCAR Ammo
	"20Rnd_mas_762x51_Stanag",
	"20Rnd_mas_762x51_T_Stanag",
	"20Rnd_762x51_Mag",

	// M249 Ammo
	"200Rnd_mas_556x45_Stanag", 
	"200Rnd_mas_556x45_T_Stanag",

	// Mk48 / M240 Ammo
	"100Rnd_mas_762x51_T_Stanag",
	"100Rnd_mas_762x51_Stanag",

	//Sniper Ammo
	"5Rnd_mas_127x99_Stanag",
	"5Rnd_mas_127x99_dem_Stanag",
	"5Rnd_mas_127x99_T_Stanag",

	// Launcher Ammo
	"mas_M136",
	"mas_Stinger",
	"mas_MAAWS",
*/
	"XLA_Null"				//Leave this here, avoids comma issues
];

_masAttachments = [
	/*"acc_mas_pointer_IR",
	"muzzle_mas_snds_AK",
	"muzzle_mas_snds_C",
	"muzzle_mas_snds_KSVK",
	"muzzle_mas_snds_L",
	"muzzle_mas_snds_LM",
	"muzzle_mas_snds_M",
	"muzzle_mas_snds_Mc",
	"muzzle_mas_snds_SH",
	"muzzle_mas_snds_SHc",
	"muzzle_mas_snds_SM",
	"muzzle_mas_snds_SMc",
	"muzzle_mas_snds_SV",
	"muzzle_mas_snds_SVc",
	"muzzle_mas_snds_SVD",
	"optic_mas_acog",
	"optic_mas_acog_c",
	"optic_mas_acog_eo",
	"optic_mas_acog_eo_c",
	"optic_mas_acog_rd",
	"optic_mas_acog_rd_c",
	"optic_mas_Aco_camo",
	"optic_mas_ACO_grn_camo",
	"optic_mas_aim",
	"optic_mas_aim_c",
	"optic_mas_Arco_blk",
	"optic_mas_Arco_camo",
	"optic_mas_DMS",
	"optic_mas_DMS_c",
	"optic_mas_Hamr_camo",
	"optic_mas_handle",
	"optic_mas_Holosight_blk",
	"optic_mas_Holosight_camo",
	"optic_mas_MRCO_camo",
	"optic_mas_pso",
	"optic_mas_pso_c",
	"optic_mas_pso_eo",
	"optic_mas_pso_eo_c",
	"optic_mas_pso_nv",
	"optic_mas_pso_nv_c",
	"optic_mas_pso_nv_eo",
	"optic_mas_pso_nv_eo_c",
	"optic_mas_term",
	"optic_mas_zeiss",
	"optic_mas_zeiss_c",
	"optic_mas_zeiss_eo",
	"optic_mas_zeiss_eo_c",*/
	"XLA_Null"				//Leave this here, avoids comma issues
];

_masBackpacks = [
	"B_mas_Kitbag_black",
	"XLA_Null"				//Leave this here, avoids comma issues
];

// -------------------------------------------------------------------
// 		@rh_m4_a3
// -------------------------------------------------------------------
_RHGuns = [
	/*"RH_m4",
	"RH_M4_M203",
	"RH_M4_ris",
	"RH_M4_ris_M203",
	"RH_M4A1_ris",
	"RH_M4A1_ris_M203",
	"RH_M4sbr",
	"RH_M4sbr_g",
	"RH_M4sbr_b",
	"RH_M16a1",
	"RH_M16A1gl",
	"RH_M16A2",
	"RH_M16A2gl",
	"RH_M16A3",
	"RH_M16A4",
	"RH_M16A4gl",
	"RH_M16A4_m",
	"RH_Mk12mod1",
	"RH_SAMR",
	"RH_ar10",*/
	"XLA_Null"				//Leave this here, avoids comma issues
];

_RHAttachments = [
	/*"RH_compm4s",
	"RH_eotech553",
	"RH_t1",
	"RH_reflex",
	"RH_Delft",
	"RH_shortdot",
	"RH_ta31rco",
	"RH_ta31rco_2D",
	"RH_m3lr",	
	"RH_peq2",
	"RH_peq15",
	"RH_peq2_top",
	"RH_peq15_top",	
	"RH_m4covers_s",
	"RH_m4covers_f",
	"RH_m16covers_s",
	"RH_m16covers_f",
	"RH_SFM952V",
	"RH_SFM952V_tan",	
	"RH_qdss_nt4",
	"RH_saker",
	"RH_qdss_nt4b",
	"RH_sakerb",
	"RH_spr_mbs",*/
	"XLA_Null"				//Leave this here, avoids comma issues
];

_RHMagazines = [
	"rh_20rnd_762x51_ar10",
	"XLA_Null"				//Leave this here, avoids comma issues
];	

// -------------------------------------------------------------------
// 		@task_force_radio
// -------------------------------------------------------------------
_tfarItems = [
	/*//Rifleman radios
	"tf_rf7800str",
	"tf_anprc152",			//NATO
	//"tf_pnr1000a",		//CSAT
	//"tf_anprc154",		//AAF
	"tf_microdagr",			//Used to program Rifleman Radios*/
	"XLA_Null"				//Leave this here, avoids comma issues
];

_tfarBackpacks = [
	/*"tf_anarc210",
	"tf_rt1523g",
	// "tiny" backpack
	"tf_rt1523g_bwmod",
	"tf_rt1523g_rhs",
	//Normal Backpack
	"tf_rt1523g_sage",
	"tf_rt1523g_green",
	"tf_rt1523g_fabric",
	"tf_rt1523g_black",
	//Big packpack
	"tf_rt1523g_big",
	"tf_rt1523g_big_bwmod",
	"tf_rt1523g_big_rhs",*/
	"XLA_Null" //Leave this here, avoids comma issues
];

//Fix for "cannot load saved outfit" caused by saved loadouts containing unique radios
	for "_x" from 0 to 512 step 1 do { _tfarItems = _tfarItems + ["tf_anprc152_" + str _x , "tf_rf7800str_" + str _x]};
//	for "_x" from 0 to 512 step 1 do { _tfarBackpacks = _tfarBackpacks + ["tf_anprc152_" + str _x , "tf_rf7800str_" + str _x]};

// -------------------------------------------------------------------
// 		@trixie_britishweapons
// -------------------------------------------------------------------
_trixieGuns = [
	"Trixie_L7A2",
	"Trixie_l85a2",
	"Trixie_l85a2_nr",
	"Trixie_l85a2_ugl",
	"Trixie_L86A2",
	"Trixie_L110A1",
	"Trixie_L129A1",
	"Trixie_L129A1_Bipod",
	"Trixie_L129A1_HG",
	"Trixie_L129A1_HG_Bipod",
	"Trixie_L131A1",
	"XLA_Null"				//Leave this here, avoids comma issues
];

_trixieMagazines = [
	// Rifle Ammo
	// Has "British tracers" but doesn't work in other guns
	"Trixie_20Rnd",
	"Trixie_20Rnd_T",
	"Trixie_30Rnd",
	"Trixie_30Rnd_T",

	// Trixie's MG ammo
	"Trixie_200Rnd",
	"Trixie_200Rnd_T",
	"Trixie_100Rnd",					// !! L110A1 ammo incompatible with M249!
	"Trixie_100Rnd_T",					// !! L110A1 ammo incompatible with M249!
	"XLA_Null"				//Leave this here, avoids comma issues
];

_trixieAttachments = [
	"Trixie_Aimpoint",
	"Trixie_C79",
	"Trixie_Eotech",
	"Trixie_PEQ2",
	"Trixie_TA31F",
	"Trixie_TA648",
	"XLA_Null"				//Leave this here, avoids comma issues
];


// -------------------------------------------------------------------
// 		@stkr_bi
// -------------------------------------------------------------------

_stkrUniforms = [
	"STKR_UBACS",		//PCS Uniform
	"STKR_UBACS_KNEE",	//PCS Uniform (Kneepads)
	"STKR_UBACS_GLV",	//PCS Uniform (Gloves)
	"STKR_UBACS_ROLL",	//PCS Uniform (Rolled)
	"XLA_Null"				//Leave this here, avoids comma issues
];

_stkrBackpacks = [
	// We need to allow the pre-filled backpacks iff playable units are spawned in with them

	"STKR_PackCom",		//ECM/Comms Pack (UK)
	"STKR_Predator", 	//Predator 45 (UK)
	"STKR_Predator_AT",	//Predator 45 AT (UK)
	"STKR_PredatorBow",	//Predator 45 Bowman (UK)
	"STKR_MLode",		//Motherlode (UK)"
	"STKR_MLode_LMG",	//Motherlode LMG (UK)
	"STKR_MLode_GPMG",	//Motherlode GPMG (UK)
	"STKR_MLode_Med",	//Motherlode Medic (UK)
	"STKR_MLode_ENG",	//Motherlode Engineer (UK)
	"STKR_MLode_EXP",	//Motherlode Explosive (UK)
	"XLA_Null"				//Leave this here, avoids comma issues
];

_stkrAttachments = [
	"STKR_HMNVS", 	//Optic
	"XLA_Null"				//Leave this here, avoids comma issues
];

_stkrGuns = [
	//Pre-composed with optics from Trixies pack
	"Trixie_l85a2_s",			//L85, TA31F
	"Trixie_l85a2_ugl_s",		//L85 UGL, TA31F
	"Trixie_L110A1_s",			//L110A1, C79
	"Trixie_L129A1_HG_Bipod_s",	//L129A1, TA648
	"Trixie_L86A2_s",			//L86A2, TA31F
	"XLA_Null"				//Leave this here, avoids comma issues
];

_stkrVests = [
	"STKR_Osprey_R",
	"STKR_Osprey_G",
	"STKR_Osprey_SL",
	"STKR_Osprey_MG",
	"XLA_Null"				//Leave this here, avoids comma issues
];

_stkrHeadgear = [
	"STKR_MK7",
	"STKR_MK7_Scrim",		//similar to vanilla camo helmet
	"STKR_MK7_ScrimB",		//similar to ghillie suit
	"XLA_Null"				//Leave this here, avoids comma issues
];



// -------------------------------------------------------------------
// 		AGM Grenades
// -------------------------------------------------------------------

_agm_grenades_Magazines = [
	"AGM_HandFlare_White",
	"AGM_HandFlare_Red",
	"AGM_HandFlare_Green",
	"AGM_HandFlare_Yellow",
	"AGM_M84",
	"3Rnd_UGL_FlareGreen_F", //Do we need this? Seems like vanilla
	"6Rnd_GreenSignal_F",
	"6Rnd_RedSignal_F",
	"XLA_Null"				//Leave this here, avoids comma issues
];
_agm_grenades_Weapons = [
	"AGM_HandFlare_WhiteMuzzle",
	"AGM_HandFlare_RedMuzzle",
	"AGM_HandFlare_GreenMuzzle",
	"AGM_HandFlare_YellowMuzzle",
	"AGM_M84Muzzle",
	"XLA_Null"				//Leave this here, avoids comma issues
];

// -------------------------------------------------------------------
// 		AGM Attach
// -------------------------------------------------------------------

_agm_attach_Weapons = [
	"AGM_IR_Strobe_Item",
	"XLA_Null"				//Leave this here, avoids comma issues
];

_agm_attach_Magazines = [
	"B_IR_Grenade",
	"Chemlight_green",
	"XLA_Null"				//Leave this here, avoids comma issues
];

// -------------------------------------------------------------------
// 		AGM Ballistics
// -------------------------------------------------------------------

_agm_ballistics_Magazines = [
	"AGM_30Rnd_65x39_caseless_mag_Tracer_Dim",
	"AGM_30Rnd_65x39_caseless_mag_SD",
	"AGM_30Rnd_65x39_caseless_mag_AP",
	"AGM_30Rnd_65x39_caseless_green_mag_Tracer_Dim",
	"AGM_30Rnd_65x39_caseless_green_mag_SD",
	"AGM_30Rnd_65x39_caseless_green_mag_AP",
	"AGM_30Rnd_556x45_Stanag_Tracer_Dim",
	"AGM_30Rnd_556x45_Stanag_SD",
	"AGM_30Rnd_556x45_Stanag_AP",
	"AGM_20Rnd_762x51_Mag_Tracer",
	"AGM_20Rnd_762x51_Mag_Tracer_Dim",
	"AGM_20Rnd_762x51_Mag_SD",
	"AGM_20Rnd_762x51_Mag_AP",
	"XLA_Null"				//Leave this here, avoids comma issues	
];

_agm_ballistics_attachments = [
	"AGM_muzzle_mzls_H",
	"AGM_muzzle_mzls_B",
	"AGM_muzzle_mzls_L",
	"AGM_muzzle_mzls_smg_01",
	"AGM_muzzle_mzls_smg_02",
	"XLA_Null"				//Leave this here, avoids comma issues	
];

// -------------------------------------------------------------------
// 		AGM Disposable (Launchers)
// -------------------------------------------------------------------

	//This is a design choice - do we want people saving spent tubes?
_agm_disposable_Weapons = [
	/*"AGM_launch_NLAW_Used_F",*/
	"XLA_Null"				//Leave this here, avoids comma issues	
];

_agm_disposable_Magazines = [
	/*"AGM_UsedTube_F",*/
	"XLA_Null"				//Leave this here, avoids comma issues	
];

// -------------------------------------------------------------------
// 		AGM Explosives
// -------------------------------------------------------------------

_agm_explosives_Weapons = [
	/*"AGM_Clacker",
	"AGM_M26_Clacker",
	"AGM_DefusalKit",
	"AGM_DeadManSwitch",*/
	"XLA_Null"				//Leave this here, avoids comma issues	
];

_agm_explosives_Magazines = [
	/*"ATMine_Range_Mag",
	"APERSBoundingMine_Range_Mag",
	"APERSMine_Range_Mag",
	"APERSTripMine_Wire_Mag",
	"ClaymoreDirectionalMine_Remote_Mag",
	"SatchelCharge_Remote_Mag",
	"DemoCharge_Remote_Mag",
	"SLAMDirectionalMine_Wire_Mag",*/
	"XLA_Null"				//Leave this here, avoids comma issues		
];

// -------------------------------------------------------------------
// 		AGM Hearing (Earbuds)
// -------------------------------------------------------------------

_agm_hearing_Weapons = [
	"AGM_EarBuds",
	"XLA_Null"				//Leave this here, avoids comma issues	
];

// -------------------------------------------------------------------
// 		AGM Interaction (Handcuffs)
// -------------------------------------------------------------------

_agm_interaction_Weapons = [
	"AGM_CableTie",
	"XLA_Null"				//Leave this here, avoids comma issues	
];

// -------------------------------------------------------------------
// 		AGM Logistics (UAV Batteries)
// -------------------------------------------------------------------

_agm_logistics_Weapons = [
	/*"AGM_UAVBattery",*/
	"XLA_Null"				//Leave this here, avoids comma issues	
];

// -------------------------------------------------------------------
// 		AGM Map (Maptool)
// -------------------------------------------------------------------

_agm_map_Weapons = [
	"AGM_MapTools",
	"XLA_Null"				//Leave this here, avoids comma issues	
];

// -------------------------------------------------------------------
// 		AGM Medical
// -------------------------------------------------------------------

_agm_medical_Weapons = [
	"AGM_Bandage",
	"AGM_Morphine",
	"AGM_Epipen",
	"AGM_Bloodbag",
	"XLA_Null"				//Leave this here, avoids comma issues	
];

// -------------------------------------------------------------------
// 		AGM Overheating (Spare Barrels)
// -------------------------------------------------------------------

_agm_overheating_Weapons = [
	"AGM_SpareBarrel",
	"XLA_Null"				//Leave this here, avoids comma issues	
];

// -------------------------------------------------------------------
// 		AGM Parachute (Altimeter)
// -------------------------------------------------------------------

_agm_parachute_Weapons = [
	"AGM_Altimeter",
	"XLA_Null"				//Leave this here, avoids comma issues	
];

// -------------------------------------------------------------------
// 		AGM Vector 
// -------------------------------------------------------------------

_agm_vector_Weapons = [
	"AGM_Vector",
	"AGM_Item_Vector",
	"XLA_Null"				//Leave this here, avoids comma issues	
];

// -------------------------------------------------------------------
// 		AGM Wind (Kestrel) 
// -------------------------------------------------------------------

_agm_wind_Weapons = [
	"AGM_ItemKestrel",
	"XLA_Null"				//Leave this here, avoids comma issues	
];


// -------------------------------------------------------------------
// 		3CB Units (MTP Uniforms)
// -------------------------------------------------------------------

_uk3cb_Items = [
	/*"UK3CB_BAF_Uniform_MTP",				//Combat Uniform MTP [BAF]
	"UK3CB_BAF_Uniform_MTP_ShortSleeve",	//Combat Uniform MTP Rolled-Up [BAF]
	"UK3CB_BAF_Uniform_HeliPilot_RN",		//Heli Pilot Flight Suit RN [BAF]
	"UK3CB_BAF_Helmet_HeliPilot_RN",		//Heli Pilot Helmet RN [BAF]
	"STKR_PackCom_2",						//ECM/Comms Pack [BAF]
	"STKR_PredatorBow_2",					//Predator 45 Bowman [BAF]
	"UK3CB_Kitbag_mcamo",					//Kitbag MTP [BAF]
	"UK3CB_Kitbag_mcamo_LMG",				//Kitbag MTP LMG [BAF]
	"UK3CB_Carryall_mcamo",					//Carryall Backpack MTP [BAF]*/
	"XLA_Null"				//Leave this here, avoids comma issues	
 ];

// -------------------------------------------------------------------
// 		Magic (Implementation)
// -------------------------------------------------------------------


_availableGuns = _A3Guns;
_availableMagazines = _A3Magazines;
_availableAttachments = _A3Attachments;
_availableItems = _A3Items;
_availableUniforms = _A3Uniforms;
_availableVests = _A3Vests;
_availableHeadgear = _A3Headgear;
_availableGoggles  = _A3Goggles;
_availableBackpacks = _A3Backpacks;

// MOD DETECTION
_hasACRE = true || isClass (configFile >> "CfgWeapons" >> "ACRE_PRC343");
_hasBeretPack2 = true || isClass (configFile >> "CfgWeapons" >> "B_P_Beret"); 
_hasNatoRussianSF = true || isClass (configFile >> "CfgWeapons" >> "arifle_mas_m16"); 
_hasRHM4 = true || isClass (configFile >> "CfgWeapons" >> "RH_m4"); 
_hasTFAR= true || isClass (configFile >> "CfgWeapons" >> "tf_anprc152");
_hasTrixieBritishWeapons = true || isClass (configFile >> "CfgWeapons" >> "Trixie_l85a2"); 
_hasStkr = true || isClass (configFile >> "CfgWeapons" >> "Trixie_l85a2_s");
_hasAGM_grenades = true || isClass(configFile >> "CfgPatches" >> "AGM_Grenades");
_hasAGM_attach = true || isClass(configFile >> "CfgPatches" >> "AGM_Attach");
_hasAGM_ballistics = true || isClass(configFile >> "CfgPatches" >> "AGM_Ballistics");
_hasAGM_disposable = true || isClass(configFile >> "CfgPatches" >> "AGM_Disposable");
_hasAGM_explosives = true || isClass(configFile >> "CfgPatches" >> "AGM_Explosives");
_hasAGM_hearing = true || isClass(configFile >> "CfgPatches" >> "AGM_Hearing");
_hasAGM_interaction = true || isClass(configFile >> "CfgPatches" >> "AGM_Interaction");
_hasAGM_logistics = true || isClass(configFile >> "CfgPatches" >> "AGM_Logistics");
_hasAGM_map = true || isClass(configFile >> "CfgPatches" >> "AGM_Map");
_hasAGM_medical = true || isClass(configFile >> "CfgPatches" >> "AGM_Medical");
_hasAGM_overheating = true || isClass(configFile >> "CfgPatches" >> "AGM_Overheating");
_hasAGM_parachute = true || isClass(configFile >> "CfgPatches" >> "AGM_Parachute");
_hasAGM_vector = true || isClass(configFile >> "CfgPatches" >> "AGM_Vector");
_hasAGM_wind = true || isClass(configFile >> "CfgPatches" >> "AGM_Wind");
_hasuk3cb_units = true || isClass(configFile >> "CfgPatches" >> "UK3CB_BAF_Units_MTP");


if (_hasACRE) then 
{
	_availableItems = _availableItems + _acreItems; 
};

if (_hasBeretPack2) then 
{
	_availableHeadgear = _availableHeadgear + _BeretPackHeadgear;
};

if (_hasNatoRussianSF) then 
{
	_availableGuns = _availableGuns + _masGuns;
	_availableMagazines = _availableMagazines + _masMagazines;
	_availableAttachments = _availableAttachments + _masAttachments;
	_availableBackpacks = _availableBackpacks + _masBackpacks;
};

if (_hasRHM4) then 
{
	_availableGuns = _availableGuns + _RHGuns;
	_availableAttachments = _availableAttachments + _RHAttachments;
	_availableMagazines = _availableMagazines + _RHMagazines;
};

if (_hasTFAR) then 
{
	_availableItems = _availableItems + _tfarItems;
	_availableBackpacks = _availableBackpacks + _tfarBackpacks;
};

if (_hasTrixieBritishWeapons) then 
{
	_availableGuns = _availableGuns + _trixieGuns;
	_availableMagazines = _availableMagazines + _trixieMagazines;
	_availableAttachments = _availableAttachments + _trixieAttachments;
};

if (_hasStkr) then 
{
	_availableGuns = _availableGuns + _stkrGuns;
	_availableAttachments = _availableAttachments + _stkrAttachments;
	_availableVests = _availableVests + _stkrVests;
	_availableHeadgear = _availableHeadgear + _stkrHeadgear;
	_availableBackpacks = _availableBackpacks + _stkrBackpacks;
	_availableUniforms = _availableUniforms + _stkrUniforms;
};

if (_hasAGM_grenades) then {
	_availableGuns = _availableGuns + _agm_grenades_Weapons;
	_availableMagazines = _availableMagazines + _agm_grenades_Magazines;
};

if (_hasAGM_attach) then {
	_availableGuns = _availableGuns + _agm_attach_Weapons;
	_availableMagazines = _availableMagazines + _agm_attach_Magazines
};

if (_hasAGM_ballistics) then {
	_availableMagazines = _availableMagazines + _agm_ballistics_Magazines;
	_availableAttachments = _availableAttachments + _agm_ballistics_attachments;
};

if (_hasAGM_disposable) then {
	_availableGuns = _availableGuns + _agm_disposable_Weapons;
	_availableMagazines = _availableMagazines + _agm_disposable_Magazines;
};

if (_hasAGM_explosives) then {
	_availableGuns = _availableGuns + _agm_explosives_Weapons;
	_availableMagazines = _availableMagazines + _agm_explosives_Magazines;
};

if (_hasAGM_hearing) then {
	_availableGuns = _availableGuns + _agm_hearing_Weapons;
};

if (_hasAGM_interaction) then {
	_availableGuns = _availableGuns + _agm_interaction_Weapons;
};

if (_hasAGM_logistics) then {
	_availableGuns = _availableGuns + _agm_logistics_Weapons;
};

if (_hasAGM_map) then {
	_availableGuns = _availableGuns + _agm_map_Weapons;
};

if (_hasAGM_medical) then {
	_availableGuns = _availableGuns + _agm_medical_Weapons;
};

if (_hasAGM_overheating) then {
	_availableGuns = _availableGuns + _agm_overheating_Weapons;
};

if (_hasAGM_parachute) then {
	_availableGuns = _availableGuns + _agm_parachute_Weapons;
};

if (_hasAGM_vector) then {
	_availableGuns = _availableGuns + _agm_vector_Weapons;
};

if (_hasAGM_wind) then {
	_availableGuns = _availableGuns + _agm_wind_Weapons;
};

if (_hasuk3cb_units) then {
	_availableItems = _availableItems + _uk3cb_Items;
};

// Check for pre-composed Weapons. Remove any that should be 'un-buildable'
// (This is easier than trying to add all pre-composed ones that are 'buildable')
_tempGuns = [];
{ 
	//Check for Optic, "Accessoire (e.g. Flashlight)" and Muzzle Device (e.g. Silencer)
	_preComposedOptic = [configFile >> "CfgWeapons" >> _x >> "LinkedItems" >> "LinkedItemsOptic", "item", "XLA_Null"] call BIS_fnc_returnConfigEntry;
	_preComposedAcc = [configFile >> "CfgWeapons" >> _x >> "LinkedItems" >> "LinkedItemsAcc", "item", "XLA_Null"] call BIS_fnc_returnConfigEntry;
	_preComposedMuzzle = [configFile >> "CfgWeapons" >> _x >> "LinkedItems" >> "LinkedItemsMuzzle", "item", "XLA_Null"] call BIS_fnc_returnConfigEntry;

	// Thanks due to "element in Array" testing case-sensitive, use "count" as a workaround
	_isAllowedOptic =  {toLower(_x) == toLower(_preComposedOptic)} count _availableAttachments;
	_isAllowedAcc  = {toLower(_x) == toLower(_preComposedAcc)} count _availableAttachments;
	_isAllowedMuzzle = {toLower(_x) == toLower(_preComposedMuzzle)} count _availableAttachments;

	_isAllowed = _isAllowedOptic > 0 && _isAllowedAcc > 0 && _isAllowedMuzzle > 0;
	if (_isAllowed) then {
		//("allowing " + _x) call BIS_fnc_log;
		_tempGuns = _tempGuns + [_x];
	} //else {
		//("forbidden " + _x) call BIS_fnc_log;
	//}
} forEach _availableGuns;

_availableGuns = _tempGuns;

// Populate with predefined items, do not add default "Virtual Arsenal" option
[_crate, _availableBackpacks,true,false] call bis_fnc_addVirtualBackpackCargo;
[_crate,(_availableGuns + _availableMagazines + _availableAttachments +_availableItems + _availableUniforms + _availableVests + _availableGoggles + _availableHeadgear),true,false] call  bis_fnc_addVirtualItemCargo;
[_crate, _availableMagazines,true,false] call bis_fnc_addVirtualMagazineCargo;
[_crate, (_availableGuns),true,false] call bis_fnc_addVirtualWeaponCargo;

/*
	This is taken from BIS_fnc_arsenal (functions_f_bootcamp\Inventory\fn_arsenal.sqf),
	specifically, this is from case "AmmoboxLocal" which is the final step in how the 
	BI script adds that "Virtual Arsenal" addAction.
	In the original script, there's a rather lengthy chain of calls,
	This script does things in a slightly non-canon way, by not using the missionnamespace variable "boxes"
	It seems to work, but once this is made into an addon, a cleaner approach would be nice.
	Ideally, one would re-implement BIS_fnc_arsenal entirely, e.g. as 3CB_fnc_arsenal.
*/

_hasAction = _crate getVariable ["XLA_ArsenalAddActionPresent", false];

if (!_hasAction) then {
	[[_crate, ['<t color=''#45B6EA''>' + (localize "str_GRAD_openSupplyBox") + '</t>',
	{
		_box = _this select 0;
		_unit = _this select 1;
		["Open",[nil,_box]] call bis_fnc_arsenal;
	},
	[],	6, true, false,	"", "true"]], "addAction",true] call BIS_fnc_MP;

	_crate setVariable ["XLA_ArsenalAddActionPresent", true, true];
};

}; //END OF "if (isServer)"