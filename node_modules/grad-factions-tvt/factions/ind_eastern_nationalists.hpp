class ind_eastern_nationalists {
	class AllUnits {
        primaryWeapon = "rhs_weap_akms";
        primaryWeaponMagazine = "rhs_30Rnd_762x39mm";
		primaryWeaponMuzzle = "";
		primaryWeaponOptics = "";
		primaryWeaponPointer = "";
		primaryWeaponUnderbarrel = "";
		primaryWeaponUnderbarrelMagazine = "";
		secondaryWeapon = "";
		secondaryWeaponMagazine = "";
		handgunWeapon = "";
		uniform = "rhsgref_uniform_woodland_olive";
        vest = "V_TacVest_blk";
		backpack = "";
		headgear = "rhs_beanie_green";
        goggles = "G_Bandanna_oli";
		nvgoggles = "";
		radio = "tf_fadak";
		binoculars = "Binocular";
		map = "ItemMap";
		gps = "ItemGPS";
		compass = "ItemCompass";
        addItemsToUniform[] = {
            LIST_6("ACE_fieldDressing"),
			LIST_2("ACE_morphine"),
			LIST_2("rhs_mag_rdg2_white"),
			"ACE_epinephrine",
			"ACE_Flashlight_KSF1",
			"ACE_key_east",
			"ACE_MapTools"
        };
        addItemsToVest[] = {};
        addItemsToBackpack[] = {};
	};

	class Type {
        //rifleman
		class Soldier_F {
            addItemsToVest[] = {
                LIST_6("rhs_30Rnd_762x39mm"),
                "rhs_mag_f1"
            };
		};

        //autorifleman
		class Soldier_AR_F: Soldier_F {
            vest = "V_Chestrig_oli";
            headgear = "";
            goggles = "rhs_balaclava1_olive";
            primaryWeapon = "rhs_weap_pkm";
            primaryWeaponMagazine = "rhs_100Rnd_762x54mmR";
            addItemsToVest[] = {
                "rhs_100Rnd_762x54mmR_green",
                "rhs_mag_f1"
            };
            backpack = "B_AssaultPack_blk";
            addItemsToBackpack[] = {
                "rhs_100Rnd_762x54mmR",
                "rhs_100Rnd_762x54mmR_green"
            };
		};

        //light AT
		class Soldier_LAT_F: Soldier_F {
            uniform = "rhsgref_uniform_woodland";
            vest = "V_TacVest_camo";
            headgear = "H_Booniehat_oli";
            goggles = "G_Bandanna_khk";
            primaryWeapon = "rhs_weap_m70b1";
            secondaryWeapon = "rhs_weap_rpg26";
		};

        //ammo bearer
		class Soldier_A_F: Soldier_F {
            uniform = "rhsgref_uniform_flecktarn";
            vest = "V_TacVest_blk";
            headgear = "";
            goggles = "G_Balaclava_blk";
            primaryWeapon = "rhs_weap_m70b1";
            backpack = "B_TacticalPack_oli";
            addItemsToBackpack[] = {
                LIST_2("rhs_100Rnd_762x54mmR"),
                "rhs_100Rnd_762x54mmR_green"
            };
		};

        //medic
		class Medic_F: Soldier_F {
            uniform = "rhsgref_uniform_woodland";
            vest = "V_TacVest_blk";
            headgear = "H_Booniehat_oli";
            goggles = "G_Bandanna_tan";
            primaryWeapon = "rhs_weap_m92";
            backpack = "B_AssaultPack_rgr";
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
            uniform = "rhsgref_uniform_flecktarn";
            vest = "rhsgref_TacVest_ERDL";
            headgear = "H_Watchcap_blk";
            goggles = "rhs_scarf";
            primaryWeapon = "rhs_weap_ak104";
        };

        //team leader
		class Soldier_TL_F: Soldier_F {
            vest = "V_TacVest_oli";
            headgear = "H_Booniehat_khk";
            goggles = "G_Bandanna_khk";
            primaryWeapon = "rhs_weap_akms_gp25";
            backpack = "B_AssaultPack_rgr";
            addItemsToBackpack[] = {
                LIST_2("rhs_GRD40_White"),
				LIST_2("rhs_GRD40_Green"),
				LIST_2("rhs_GRD40_Red")
            };
		};
	};

	class Rank {
		class LIEUTENANT {
            headgear = "rhs_beret_milp";
            goggles = "G_Aviator";
		};
	};
};
