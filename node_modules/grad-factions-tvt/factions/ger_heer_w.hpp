class ger_heer_w {
	class AllUnits {
        primaryWeapon = "rhs_weap_g36kv";
        primaryWeaponMagazine = "rhssaf_30rnd_556x45_EPR_G36";
		primaryWeaponMuzzle = "";
		primaryWeaponOptics = "rhsusf_acc_eotech_552";
		primaryWeaponPointer = "";
		primaryWeaponUnderbarrel = "";
		primaryWeaponUnderbarrelMagazine = "";
		secondaryWeapon = "";
		secondaryWeaponMagazine = "";
		handgunWeapon = "rhsusf_weap_m9";
        handgunWeaponMagazine = "rhsusf_mag_15Rnd_9x19_JHP";
		uniform = "ARC_GER_Flecktarn_Uniform";
        vest = "ARC_GER_Flecktarn_PlateCarrier_1";
		backpack = "";
		headgear = "ARC_GER_Flecktarn_Helmet_simple";
		nvgoggles = "";
		radio = "tf_anprc152";
		binoculars = "Binocular";
		map = "ItemMap";
		gps = "ItemGPS";
		compass = "ItemCompass";
        addItemsToUniform[] = {
            LIST_6("ACE_fieldDressing"),
			LIST_3("ACE_CableTie"),
			LIST_2("ACE_morphine"),
			"ACE_epinephrine",
			"ACE_Flashlight_MX991",
			"ACE_key_west",
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
				LIST_2("rhsusf_mag_15Rnd_9x19_JHP"),
				LIST_2("rhs_mag_m67")
			};
		};

        //autorifleman
		class Soldier_AR_F: Soldier_F {
            primaryWeapon = "rhs_weap_minimi_para_railed";
            primaryWeaponMagazine = "rhs_200rnd_556x45_M_SAW";
            handgunWeapon = "";
            handgunWeaponMagazine = "";
            addItemsToVest[] = {
				LIST_2("rhs_200rnd_556x45_M_SAW"),
				LIST_2("rhs_mag_an_m8hc"),
				LIST_2("rhs_mag_m67")
			};
		};

        //light AT
		class Soldier_LAT_F: Soldier_F {
            secondaryWeapon = "rhs_weap_M136";
		};

        //ammo bearer
		class Soldier_A_F: Soldier_F {
            backpack = "ARC_GER_Kitbag_compact_Flecktarn";
            addItemsToBackpack[] = {
                LIST_2("rhs_200rnd_556x45_M_SAW"),
                "rhs_200rnd_556x45_T_SAW"
            };
		};

        //medic
		class Medic_F: Soldier_F {
            headgear = "ARC_GER_Flecktarn_Helmet_Medic";
            backpack = "ARC_GER_Backpack_Flecktarn_Med";
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
            uniform  = "ARC_GER_Flecktarn_Uniform_vest";
            headgear = "ARC_GER_Flecktarn_Helmet_Light";
            backpack = "tf_rt1523g_bwmod";
            addItemsToBackpack[] =  {
				LIST_2("rhs_mag_m18_green"),
				LIST_2("rhs_mag_m18_purple"),
				LIST_2("rhs_mag_m18_red")
			};
        };

        //team leader
		class Soldier_TL_F: Soldier_F {
            uniform  = "ARC_GER_Flecktarn_Uniform_vest";
            headgear = "ARC_GER_Flecktarn_Helmet_Light";
            primaryWeapon = "rhs_weap_g36kv_ag36";
            backpack = "ARC_GER_Backpack_compact_Flecktarn";
            addItemsToBackpack[] = {
				LIST_2("1Rnd_SmokeGreen_Grenade_shell"),
				LIST_2("1Rnd_SmokePurple_Grenade_shell"),
				LIST_2("1Rnd_SmokeRed_Grenade_shell")
			};
		};
	};

	class Rank {
		class LIEUTENANT {
            backpack = "tf_rt1523g_big_bwmod";
            headgear = "ARC_GER_Flecktarn_Milcap";
		};
	};
};
