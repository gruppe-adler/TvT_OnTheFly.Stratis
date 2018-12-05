class fin_borderGuard {
	class AllUnits {
        primaryWeapon = "rhs_weap_g36c";
        primaryWeaponMagazine = "rhssaf_30rnd_556x45_EPR_G36";
		primaryWeaponMuzzle = "";
		primaryWeaponOptics[] = {
            "rhsusf_acc_RX01_NoFilter",
            "rhsusf_acc_RX01",
            "rhsusf_acc_RX01_NoFilter_tan",
            "rhsusf_acc_RX01_tan"
        };
		primaryWeaponPointer = "";
		primaryWeaponUnderbarrel = "";
		primaryWeaponUnderbarrelMagazine = "";
		secondaryWeapon = "";
		secondaryWeaponMagazine = "";
		handgunWeapon = "";
        handgunWeaponMagazine = "";
		uniform = "rhssaf_uniform_m93_oakleaf";
        vest = "rhssaf_vest_md99_woodland_rifleman";
		backpack = "";
		headgear = "rhssaf_helmet_m97_oakleaf";
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
			"ACE_MapTools"
        };
        addItemsToVest[] = {};
        addItemsToBackpack[] = {};
	};

	class Type {
        //rifleman
		class Soldier_F {
            addItemsToVest[] = {
				LIST_7("rhssaf_30rnd_556x45_EPR_G36"),
				LIST_2("rhs_mag_an_m8hc"),
				LIST_2("rhs_mag_m67")
			};
		};

        //autorifleman
		class Soldier_AR_F: Soldier_F {
            primaryWeapon = "rhs_weap_minimi_para_railed";
            primaryWeaponMagazine = "rhsusf_100Rnd_556x45_mixed_soft_pouch";
            handgunWeapon = "";
            handgunWeaponMagazine = "";
            backpack = "rhssaf_kitbag_md2camo";
            addItemsToVest[] = {
				LIST_2("rhs_mag_an_m8hc"),
				LIST_2("rhs_mag_m67")
			};
            addItemsToBackpack[] = {
                LIST_6("rhsusf_100Rnd_556x45_mixed_soft_pouch")
            };
		};

        //light AT
		class Soldier_LAT_F: Soldier_F {
            secondaryWeapon = "rhs_weap_m80";
		};

        //ammo bearer
		class Soldier_A_F: Soldier_F {
            backpack = "rhssaf_kitbag_md2camo";
            addItemsToBackpack[] = {
                LIST_3("rhsusf_100Rnd_556x45_mixed_soft_pouch"),
                LIST_6("rhssaf_30rnd_556x45_EPR_G36")
            };
		};

		//assistant autorifleman
		class Soldier_AAR_F: Soldier_F {
            backpack = "rhssaf_kitbag_md2camo";
            addItemsToBackpack[] = {
                LIST_3("rhsusf_100Rnd_556x45_mixed_soft_pouch")
            };
		};

        //medic
		class Medic_F: Soldier_F {
            backpack = "rhssaf_kitbag_md2camo";
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
            vest = "rhssaf_vest_md99_woodland_rifleman_radio";
            backpack = "TFAR_rt1523g_bwmod";
            addItemsToBackpack[] =  {
				LIST_2("rhs_mag_m18_green"),
				LIST_2("rhs_mag_m18_purple"),
				LIST_2("rhs_mag_m18_red")
			};
        };

        //team leader
		class Soldier_TL_F: Soldier_F {
            vest = "rhssaf_vest_md99_woodland_rifleman_radio";
            primaryWeapon = "rhs_weap_g36kv_ag36";
            backpack = "rhssaf_kitbag_md2camo";
            addItemsToBackpack[] = {
				LIST_2("1Rnd_SmokeGreen_Grenade_shell"),
				LIST_2("1Rnd_SmokePurple_Grenade_shell"),
				LIST_2("1Rnd_SmokeRed_Grenade_shell")
			};
		};
	};

	class Rank {
		class LIEUTENANT {
            backpack = "TFAR_rt1523g_big_bwmod";
            headgear = "rhssaf_helmet_m97_oakleaf_black_ess_bare";
		};
	};
};
