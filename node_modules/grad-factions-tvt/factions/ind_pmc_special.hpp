class ind_pmc_special {
	class AllUnits {
        primaryWeapon = "SMG_02_F";
		primaryWeaponMagazine = "30Rnd_9x21_Mag_SMG_02_Tracer_Red";
		primaryWeaponMuzzle = "muzzle_snds_L";
		primaryWeaponOptics = "optic_Aco_smg";
		primaryWeaponPointer = "rhsusf_acc_anpeq15A";
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
            LIST_6("ACE_fieldDressing"),
			LIST_3("ACE_CableTie"),
			LIST_2("ACE_morphine"),
            LIST_2("ACE_Chemlight_HiWhite"),
			"ACE_epinephrine",
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
                LIST_9("30Rnd_9x21_Mag_SMG_02_Tracer_Red"),
                LIST_2("11Rnd_45ACP_Mag"),
                LIST_2("rhs_mag_m67"),
                "rhs_mag_an_m8hc",
                "ACE_M84"
            };
		};

        //autorifleman
		class Soldier_AR_F: Soldier_F {
            primaryWeapon = "rhs_weap_m27iar";
			primaryWeaponMagazine = "rhs_mag_30Rnd_556x45_Mk262_Stanag";
            primaryWeaponOptics = "rhsusf_acc_eotech_552";
            primaryWeaponMuzzle = "rhsusf_acc_SF3P556";
			primaryWeaponUnderbarrel = "rhsusf_acc_harris_bipod";
            headgear = "";
            goggles = "G_Balaclava_blk";
            addItemsToVest[] = {
                LIST_10("rhs_mag_30Rnd_556x45_Mk262_Stanag"),
                LIST_2("rhs_mag_an_m8hc"),
                LIST_2("rhs_mag_m67")
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
                LIST_10("rhs_mag_30Rnd_556x45_Mk262_Stanag")
            };
		};

		//assistant autorifleman
		class Soldier_AAR_F: Soldier_F {
            backpack = "B_TacticalPack_blk";
            addItemsToBackpack[] = {
                LIST_10("rhs_mag_30Rnd_556x45_Mk262_Stanag")
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
            goggles = "rhs_googles_black";
        };

        //team leader
		class Soldier_TL_F: Soldier_F {
            goggles = "rhs_googles_black";
		};
	};

	class Rank {
		class LIEUTENANT {

		};
	};
};
