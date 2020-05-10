class us_marines_d: us_marines_w {
	class AllUnits: AllUnits {
		uniform = "rhs_uniform_FROG01_d";
		headgear = "rhsusf_lwh_helmet_marpatd";
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

		};

		//assistant autorifleman
		class Soldier_AAR_F: Soldier_A_F {

		};

        //medic
		class Medic_F: Medic_F {

		};

        //squad leader
        class Soldier_SL_F: Soldier_SL_F {
            headgear = "rhsusf_lwh_helmet_marpatd_headset";
        };

        //team leader
		class Soldier_TL_F: Soldier_TL_F {
            headgear = "rhsusf_lwh_helmet_marpatd_headset";
		};
	};

	class Rank: Rank {
		class LIEUTENANT: LIEUTENANT {
			headgear = "rhs_8point_marpatd";
			backpack = "TFAR_rt1523g_big";
		};
	};
};
