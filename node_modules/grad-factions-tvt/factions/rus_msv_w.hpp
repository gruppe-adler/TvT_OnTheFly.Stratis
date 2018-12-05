class rus_msv_w {
	class AllUnits {
        primaryWeapon = "rhs_weap_ak74m";
		primaryWeaponMagazine = "rhs_30Rnd_545x39_AK";
		primaryWeaponMuzzle = "";
		primaryWeaponOptics = "";
		primaryWeaponPointer = "";
		primaryWeaponUnderbarrel = "";
		primaryWeaponUnderbarrelMagazine = "";
		secondaryWeapon = "";
		secondaryWeaponMagazine = "";
		handgunWeapon = "";
		uniform = "rhs_uniform_flora";
        vest = "rhs_6b23_rifleman";
		backpack = "";
		headgear = "rhs_6b26";
		nvgoggles = "";
		radio = "TFAR_fadak";
		binoculars = "Binocular";
		map = "ItemMap";
		gps = "ItemGPS";
		compass = "ItemCompass";
        addItemsToUniform[] = {
			LIST_6("ACE_fieldDressing"),
			LIST_2("ACE_morphine"),
			LIST_2("rhs_mag_rdg2_white"),
            LIST_2("ACE_Chemlight_HiWhite"),
			"ACE_epinephrine",
			"ACE_Flashlight_KSF1",
			"ACE_MapTools"
		};
        addItemsToBackpack[] = {};
	};

	class Type {
        //rifleman
		class Soldier_F {
			addItemsToVest[] = {
				LIST_7("rhs_30Rnd_545x39_AK"),
				LIST_2("rhs_mag_rgo")
			};
		};

        //autorifleman
		class Soldier_AR_F: Soldier_F {
			primaryWeapon = "rhs_weap_pkp";
			primaryWeaponMagazine = "rhs_100Rnd_762x54mmR";
			backpack = "rhs_assault_umbts";
			headgear = "rhs_6b26_ess";
			addItemsToVest[] = {
				LIST_2("rhs_mag_rgo"),
                LIST_1("rhs_100Rnd_762x54mmR")
			};
			addItemsToBackpack[] = {
				LIST_2("rhs_100Rnd_762x54mmR_green")
			};
		};

        //light AT
		class Soldier_LAT_F: Soldier_F {
			secondaryWeapon = "rhs_weap_rpg26";
		};

        //ammo bearer
		class Soldier_A_F: Soldier_F {
			backpack = "rhs_assault_umbts";
			addItemsToBackpack[] = {
				LIST_2("rhs_100Rnd_762x54mmR_green")
			};
		};

		//assistant autorifleman
		class Soldier_AAR_F: Soldier_F {
			backpack = "rhs_assault_umbts";
			addItemsToBackpack[] = {
				LIST_2("rhs_100Rnd_762x54mmR_green")
			};
		};

        //medic
		class Medic_F: Soldier_F {
			backpack = "rhs_assault_umbts";
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
			primaryWeaponOptics = "rhs_acc_1p63";
			vest = "rhs_6b23_6sh92_headset_mapcase";
			backpack = "TFAR_mr3000_rhs";
			headgear = "rhs_6b26_ess";
			addItemsToBackpack[] =  {
				LIST_3("rhs_mag_rdg2_black"),
				LIST_3("rhs_mag_rdg2_white")
			};
        };

        //team leader
		class Soldier_TL_F: Soldier_F {
			primaryWeapon = "rhs_weap_ak74m_gp25";
			primaryWeaponOptics = "rhs_acc_1p63";
			vest = "rhs_6b23_6sh92_headset";
			backpack = "rhs_assault_umbts";
			headgear = "rhs_6b26_ess";
			addItemsToBackpack[] = {
				LIST_2("rhs_GRD40_White"),
				LIST_2("rhs_GRD40_Green"),
				LIST_2("rhs_GRD40_Red")
			};
		};
	};

	class Rank {
		class LIEUTENANT {
			headgear = "rhs_fieldcap";
		};
	};
};
