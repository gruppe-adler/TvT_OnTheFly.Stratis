class ind_pmc_special {
	class AllUnits {
        primaryWeapon[] = {
            "SMG_03C_TR_black",
            "SMG_03C_TR_camo",
            "SMG_03C_TR_hex",
            "SMG_03C_TR_khaki"
        };
		primaryWeaponMagazine = "50Rnd_570x28_SMG_03";
		primaryWeaponMuzzle = "muzzle_snds_570";
		primaryWeaponOptics[] = {
            "rhsusf_acc_eotech_552",
            "rhsusf_acc_RM05",
            "rhsusf_acc_eotech_xps3"
        };
		primaryWeaponPointer[] = {
            "",
            "acc_flashlight"
        };
		primaryWeaponUnderbarrel = "";
		primaryWeaponUnderbarrelMagazine = "";
		secondaryWeapon = "";
		secondaryWeaponMagazine = "";
		handgunWeapon = "hgun_Pistol_heavy_01_F";
		handgunWeaponMagazine = "11Rnd_45ACP_Mag";
        handgunWeaponMuzzle = "muzzle_snds_acp";
        handgunWeaponOptics = "optic_MRD";
		uniform = "rhs_uniform_g3_blk";
        vest = "V_TacVestIR_blk";
		backpack = "";
		headgear = "H_Watchcap_blk";
		nvgoggles = "";
		radio = "TFAR_anprc152";
		binoculars = "Binocular";
		map = "ItemMap";
		gps = "ItemGPS";
		compass = "ItemCompass";
        addItemsToUniform[] = {
            MEDICITEMS_BASE,
            LIST_2("ACE_Chemlight_HiWhite"),
			"ACE_Flashlight_MX991",
			"ACE_MapTools",
            "ACE_NVG_Wide"
        };
        addItemsToVest[] = {};
        addItemsToBackpack[] = {};
	};

	class Type {
        //rifleman
		class Soldier_F {
            additemsToVest[] = {
                LIST_6("50Rnd_570x28_SMG_03"),
                LIST_2("11Rnd_45ACP_Mag"),
                LIST_2("rhs_mag_m67"),
                "rhs_mag_an_m8hc",
                "ACE_M84"
            };
		};

        //autorifleman
		class Soldier_AR_F: Soldier_F {
            primaryWeapon = "rhs_weap_m27iar";
			primaryWeaponMagazine = "hlc_50rnd_556x45_M";
            primaryWeaponOptics = "rhsusf_acc_eotech_552";
            primaryWeaponMuzzle = "rhsusf_acc_SF3P556";
			primaryWeaponUnderbarrel = "rhsusf_acc_harris_bipod";
            headgear = "";
            goggles = "G_Balaclava_blk";
            backpack = "B_TacticalPack_blk";
            addItemsToVest[] = {
                LIST_2("hlc_50rnd_556x45_M"),
                LIST_2("rhs_mag_an_m8hc"),
                LIST_2("rhs_mag_m67")
            };
            addItemsToBackpack[] = {
                LIST_5("hlc_50rnd_556x45_M")
            };
		};

        //light AT
		class Soldier_LAT_F: Soldier_F {
            secondaryWeapon = "rhs_weap_m72a7";
		};

        //ammo bearer
		class Soldier_A_F: Soldier_F {
            backpack = "B_TacticalPack_blk";
            addItemsToBackpack[] = {
                LIST_5("hlc_50rnd_556x45_M")
            };
		};

		//assistant autorifleman
		class Soldier_AAR_F: Soldier_F {
            backpack = "B_TacticalPack_blk";
            addItemsToBackpack[] = {
                LIST_5("hlc_50rnd_556x45_M")
            };
		};

        //medic
		class Medic_F: Soldier_F {
            backpack = "B_TacticalPack_blk";
            addItemsToBackpack[] = {
				LIST_20("ACE_fieldDressing"),
				LIST_10("ACE_fieldDressing"),
				LIST_15("ACE_morphine"),
				LIST_15("ACE_epinephrine"),
				LIST_2("ACE_bloodIV_250")
			};
		};

        //squad leader
        class Soldier_SL_F: Soldier_F {
            goggles[] = {
                "rhs_googles_black",
                "rhs_googles_clear"
            };
        };

        //team leader
		class Soldier_TL_F: Soldier_F {
            goggles[] = {
                "rhs_googles_black",
                "rhs_googles_clear"
            };
		};
	};

	class Rank {
		class LIEUTENANT {

		};
	};
};
