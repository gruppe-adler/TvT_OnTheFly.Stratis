class ger_heer_s: ger_heer_w {
	class AllUnits: AllUnits {
		uniform = "SMM_Uniform_BW_ST";
        vest = "SMM_Vest_BW_ST";
		headgear = "SMM_Helmet_A_BW_ST";
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
			backpack = "SMM_Kitbag_BW_ST";
		};

		//assistant autorifleman
		class Soldier_AAR_F: Soldier_A_F {
			backpack = "SMM_Kitbag_BW_ST";
		};

        //medic
		class Medic_F: Medic_F {
			backpack = "SMM_Kitbag_BW_ST";
		};

        //squad leader
        class Soldier_SL_F: Soldier_SL_F {

        };

        //team leader
		class Soldier_TL_F: Soldier_TL_F {

			backpack = "SMM_Kitbag_BW_ST";
		};
	};

	class Rank: Rank {
		class LIEUTENANT: LIEUTENANT {
			headgear = "SMM_MilCap_BW_ST";
            
		};
	};
};
