class ind_eastern_peasants: ind_me_terrorists {
	class AllUnits: AllUnits {
		uniform[] = {
			"UK3CB_CHC_C_U_ACTIVIST_01",
			"UK3CB_CHC_C_U_ACTIVIST_04",
			"UK3CB_CHC_C_U_CIT_01",
			"UK3CB_CHC_C_U_CIT_03",
			"UK3CB_CHC_C_U_CIT_04",
			"UK3CB_CHC_C_U_WORK_02",
			"UK3CB_CHC_C_U_VILL_03",
			"UK3CB_CHC_C_U_WOOD_01",
			"UK3CB_CHC_C_U_WOOD_02",
			"UK3CB_CHC_C_U_WOOD_03",
			"UK3CB_CHC_C_U_WOOD_04"
		};
		headgear[] = {
			"",
			"UK3CB_H_Ushanka_Cap_01",
			"UK3CB_H_Villager_Cap_01",
			"UK3CB_H_Beanie_02_Blk",
			"UK3CB_H_Beanie_02_Brn",
			"UK3CB_H_Beanie_02_Camo",
			"H_Hat_brown",
			"rhs_ushanka"
		};
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
		class Soldier_AAR_F: Soldier_AAR_F {

		};

		//medic
		class Medic_F: Medic_F {
			headgear = "";
			goggles = "";
		};

		//squad leader
		class Soldier_SL_F: Soldier_SL_F {
			headgear = "rhsgref_fieldcap_ttsko_forest";
		};

		//team leader
		class Soldier_TL_F: Soldier_TL_F {
			headgear = "rhsgref_fieldcap_ttsko_forest";
			goggles = "";
		};
	};
};
