class ind_eastern_peasants: ind_me_terrorists {
	class AllUnits: AllUnits {
		uniform[] = {
            "LOP_U_CHR_Woodlander_01",
            "LOP_U_CHR_Woodlander_02",
            "LOP_U_CHR_Woodlander_04",
            "LOP_U_CHR_Worker_03",
            "LOP_U_CHR_Worker_04",
            "LOP_U_CHR_Worker_01",
            "LOP_U_CHR_Worker_02",
            "LOP_U_CHR_Villager_01",
            "LOP_U_CHR_Villager_04",
            "LOP_U_CHR_Villager_03",
            "LOP_U_CHR_Villager_02"
        };
		headgear[] = {
            "",
            "LOP_H_Ushanka",
            "LOP_H_Villager_cap",
            "H_Hat_brown"
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
