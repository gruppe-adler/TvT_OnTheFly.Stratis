class ger_heer_d: ger_heer_w {
	class AllUnits: AllUnits {
		uniform = "ARC_GER_Tropentarn_Uniform";
        vest = "ARC_GER_Tropentarn_PlateCarrier_1";
		headgear = "ARC_GER_Tropentarn_Helmet_simple";
	};

	class Type: Type {
        //rifleman
		class Soldier_F: Soldier_F {

		};

        //autorifleman
		class Soldier_AR_F: Soldier_AR_F {

		};

        //light AT
		class Soldier_LAT_F: Soldier_LAT_F {

		};

        //ammo bearer
		class Soldier_A_F: Soldier_A_F {
			backpack = "ARC_GER_Kitbag_compact_Tropentarn";
		};

        //medic
		class Medic_F: Medic_F {
			backpack = "ARC_GER_Backpack_Tropentarn_Med";
			headgear = "ARC_GER_Tropentarn_Helmet_simple_medic";
		};

        //squad leader
        class Soldier_SL_F: Soldier_SL_F {
			uniform = "ARC_GER_Tropentarn_Uniform_vest";
			headgear = "ARC_GER_Tropentarn_Helmet_Light";
        };

        //team leader
		class Soldier_TL_F: Soldier_TL_F {
			uniform = "ARC_GER_Tropentarn_Uniform_vest";
			headgear = "ARC_GER_Tropentarn_Helmet_Light";
			backpack = "ARC_GER_Backpack_compact_Tropentarn";
		};
	};

	class Rank: Rank {
		class LIEUTENANT: LIEUTENANT {
			headgear = "ARC_GER_Tropentarn_Milcap";
			backpack = "tf_rt1523g_big_bwmod_tropen";
		};
	};
};
