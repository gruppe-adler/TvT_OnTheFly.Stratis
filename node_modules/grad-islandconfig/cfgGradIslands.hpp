class cfgGradIslands {
    class Altis {
        displayName = "Altis";
        type = "mediterranean";
        isWoodland = true;
        spawnPosBlu[] = {8782,25180,0};
        spawnPosOpf[] = {8481,25263,0};
        spawnPosInd[] = {8216,24939,0};
        urbanops_locationBlacklist[] = {
            "AAC airfield",
            "Agios Georgios",
            "Agios Georgios",
            "Agios Kosmas",
            "Agios Panagiotis",
            "Aktinarki",
            "Almyra",
            "Atsalis",
            "Bomos",
            "Cap Agrios",
            "Cap Drakontas",
            "Cap Kategidis",
            "Cap Makrinos",
            "Cap Thelos",
            "Cap Zefyris",
            "Chelonisi",
            "Drimea",
            "dump",
            "Edoris",
            "Faros",
            "Fournos",
            "Gori",
            "Kavala Pier",
            "Limni",
            "Livadi",
            "Makrynisi",
            "Mazi",
            "mine",
            "Molos Airfield",
            "Monisi",
            "Nychi",
            "Ochrolimni",
            "Pyrgi",
            "quarry",
            "Sagonisi",
            "Savri",
            "Sideras",
            "Surf Club",
            "Xirolimni Dam",
            "Zeloran"
        };
    };

    class Bootcamp_ACR {
        displayName = "Bukovina";
        type = "russian";
        isWoodland = true;
        spawnPosBlu[] = {3225,4342,0};
        spawnPosOpf[] = {3449,4376,0};
        spawnPosInd[] = {3807,4346,0};
    };

    class Beketov {
        displayName = "Beketov";
        type = "russian";
        isWoodland = true;
        spawnPosBlu[] = {-258.376,308.728,0};
        spawnPosOpf[] = {-249.061,955.673,0};
        urbanops_locationBlacklist[] = {
            "Belokamenka",
            "Dorogino",
            "Limonovo",
            "Malaevo",
            "Oblepikhino",
            "SWAMP"
        };
    };

    class Chernarus {
        displayName = "Chernarus (Autumn)";
        type = "russian";
        isWoodland = true;
        spawnPosBlu[] = {-599,2508,0};
        spawnPosOpf[] = {-567,3402,0};
        spawnPosInd[] = {-568,4180,0};
        urbanops_locationBlacklist[] = {
            "airfield",
            "airstrip",
            "Black Forest",
            "Blunt Rocks",
            "Cap Golova",
            "Dichina",
            "Drakon",
            "Green Mountain",
            "Grozovoy Pass",
            "Kopyto",
            "Krutoy Cap",
            "Kumyrna",
            "Novy Lug",
            "Old Fields",
            "Pass Oreshka",
            "Pass Sosnovy",
            "power plant",
            "quarry",
            "Skalisty Island",
            "Skalka",
            "Three Valleys",
            "Vysota"
        };
    };

    class Chernarus_Summer: Chernarus {};
    class Chernarus_winter: Chernarus {};

    class d41_ruegen {
        displayName = "Ruegen";
        type = "russian";
        isWoodland = true;
        spawnPosBlu[] = {-312,604,0};
        spawnPosOpf[] = {-364,1481,0};
        spawnPosInd[] = {-474,2161,0};
    };

    class d41_ruegen_scorched: d41_ruegen {};

    class dingor {
        displayName = "Dingor";
        type = "middle eastern";
        isWoodland = false;
        spawnPosBlu[] = {1096.81,9389.22,0};
        spawnPosOpf[] = {889.053,9438.74,0};
        urbanops_locationBlacklist[] = {
            "Puente Malargo",
            "Mt. Toris"
        };
    };

    class Enoch {
        displayName = "Livonia";
        type = "russian";
        isWoodland = true;
        spawnPosBlu[] = {-331,2112,0};
        spawnPosOpf[] = {-288,3004,0};
        spawnPosInd[] = {-313,3951,0};
    };

    class gm_weferlingen_summer {
        displayName = "Weferlingen";
        type = "russian";
        isWoodland = true;
        spawnPosBlu[] = {602,-414,0};
        spawnPosOpf[] = {1349,-483,0};
        spawnPosInd[] = {2194,-376,0};
    };

    class gm_weferlingen_winter: gm_weferlingen_summer {};

    class hellanmaa {
        displayName = "hellanmaa";
        type = "russian";
        isWoodland = true;
        spawnPosBlu[] = {8199,8295,0};
        spawnPosOpf[] = {7785,8293,0};
        urbanops_locationBlacklist[] = {};
    };

    class Intro {
        displayName = "Ramahdi";
        type = "middle eastern";
        isWoodland = false;
        urbanops_sizeFactor = 0.30;
        spawnPosBlu[] = {1604.93,1575.83,0};
        spawnPosOpf[] = {1542.37,1750.86,0};

        class customLocations {
            class Ramahdi {
                name = "Ramahdi";
                type = "NameVillage";
                pos[] = {2893.81,2879.46,0};
            };
        };
    };

    class fallujah {
        displayName = "Fallujah";
        type = "middle eastern";
        isWoodland = false;
        spawnPosBlu[] = {10226.5,605.61,0};
        spawnPosOpf[] = {10204.2,1033.22,0};

        class customLocations {
            class airfieldN {
                name = "Airfield North";
                type = "NameCityCapital";
                pos[] = {7972.45,2142.85,0};
            };

            class airfieldS {
                name = "Airfield South";
                type = "NameCityCapital";
                pos[] = {8304.41,1593.64,0};
            };

            class hotel {
                name = "Hotel";
                type = "NameVillage";
                pos[] = {8231.46,5520.07,0};
            };

            class village1 {
                name = "Shakbur";
                type = "NameVillage";
                pos[] = {9068.4,9026.81,0};
            };

            class FOB {
                name = "FOB";
                type = "NameVillage";
                pos[] = {5692.07,9856.37,0};
            };

            class powerplant {
                name = "Power Plant";
                type = "NameVillage";
                pos[] = {687.158,8340.91,0};
            };

            class outskirts1 {
                name = "Outskirts";
                type = "NameVillage";
                pos[] = {3890.94,2827.52,0};
            };

            class milbase {
                name = "Military Base";
                type = "NameCity";
                pos[] = {2927.96,6340.07,0};
            };
        };
    };

    class fata {
        displayName = "Fata";
        type = "middle eastern";
        isWoodland = false;
        spawnPosBlu[] = {10616.3,8942.11,0};
        spawnPosOpf[] = {10723.9,10105,0};
        urbanops_locationBlacklist[] = {
            "Goram Valley",
            "Kabashir Forest",
            "Mouaneb",
            "Mussara Bridge",
            "Paktita Valley",
            "Serpent's Road",
            "Sirika",
            "Suhani Valley",
            "Sukri River",
            "Tamir Bridge",
            "Tamir Highway",
            "Tamir River"
        };
    };

    class lingor3 {
        displayName = "Lingor";
        type = "tropical";
        isWoodland = true;
        spawnPosBlu[] = {1096.81,9389.22,0};
        spawnPosOpf[] = {889.053,9438.74,0};
        urbanops_locationBlacklist[] = {
            "Puente Malargo",
            "Mt. Toris"
        };
    };

    class lythium {
        displayName = "Lythium";
        type = "middle eastern";
        isWoodland = false;
        spawnPosBlu[] = {-205,71,0};
        spawnPosOpf[] = {-333,833,0};
        spawnPosInd[] = {-286,1336,0};
        urbanops_locationBlacklist[] = {};
    };

    class Malden {
        displayName = "Malden";
        type = "mediterranean";
        isWoodland = true;
        spawnPosBlu[] = {10035,2134,0};
        spawnPosOpf[] = {10159,2200,0};
        spawnPosInd[] = {9983,2289,0};
        urbanops_locationBlacklist[] = {
            "Pegasus Air Co.",
            "Moray",
            "Faro",
            "harbor"
        };
    };

    class mbg_celle2 {
        displayName = "Celle";
        type = "russian";
        isWoodland = true;
        spawnPosBlu[] = {13121.7,12175.6,0};
        spawnPosOpf[] = {12488.2,12689.2,0};
        urbanops_locationBlacklist[] = {};
    };

    class Porto {
        displayName = "Porto";
        type = "middle eastern";
        isWoodland = false;
        spawnPosBlu[] = {1376.64,628.892,0};
        spawnPosOpf[] = {1136.77,671.378,0};
        urbanops_sizeFactor = 0.30;

        class customLocations {
            class portoHarbor {
                name = "Porto Harbor";
                type = "NameCity";
                pos[] = {2589.53,2232.25,0};
            };
        };
    };

    class prei_khmaoch_luong {
        displayName = "Prei Khmaoch Luong";
        type = "tropical";
        isWoodland = true;
        spawnPosBlu[] = {-172,640,0};
        spawnPosOpf[] = {-193,887,0};
        spawnPosInd[] = {-253,1608,0};
    };

    class ruha {
        displayName = "Ruha";
        type = "russian";
        isWoodland = true;
        spawnPosBlu[] = {-84,38,0};
        spawnPosOpf[] = {-100,367,0};
        spawnPosInd[] = {-91,629,0};
    };

    class Stratis {
        displayName = "Stratis";
        type = "mediterranean";
        isWoodland = true;
        spawnPosBlu[] = {7100,5936,0};
        spawnPosOpf[] = {7106,5975,0};
        spawnPosInd[] = {7109,6010,0};
        urbanops_locationBlacklist[] = {
            "airfield",
            "Kamino Coast",
            "LZ Baldy",
            "Pythos",
            "The Spartan",
            "Xiros"
        };
    };

    class sara_dbe1 {
        displayName = "United Sahrani";
        type = "mediterranean";
        isWoodland = true;
        spawnPosBlu[] = {1590,2190,0};
        spawnPosOpf[] = {1475,2278,0};
        spawnPosInd[] = {1641,2344,0};
        urbanops_locationBlacklist[] = {
            "Antigua",
            "Cabo Canino",
            "Cabo de Fidel",
            "Cabo Gavio",
            "Cabo Gavio",
            "Cabo Indice",
            "Cabo Juventudo",
            "Cabo Santa Lucia",
            "Cabo Valiente",
            "Calha de Cayo",
            "Calheta de Cedras",
            "Calheta Demiseca",
            "Calheta Seca",
            "Cimas Dobles",
            "El Gordo",
            "Isla Arimar",
            "Isla de la Caja",
            "Isla de Libertad",
            "Isla de los Tojos",
            "Isla de Matey",
            "Isla del Vassal",
            "Isla del Vida",
            "Isla del Zorra",
            "Isla des Compadres",
            "Islas Gatunas",
            "Matas",
            "Monte Asharah",
            "Monte Galassi",
            "Parvulo",
            "Passo Epone",
            "Passo Paradiso",
            "Passo San Andres",
            "Passo San Marco",
            "Pesadas",
            "Puntas Occidental",
            "Puntas Oriental",
            "Roca del Dror",
            "Rocara",
            "San Peregrino",
            "San Tomas",
            "Sierra de los Pinos",
            "Sierra Madre",
            "Sierra Masbete",
            "Sierra Pita",
            "Terra Acorcha",
            "Terra Marismo",
            "Trelobada",
            "Tres Valles",
            "Valle Azul",
            "Valle de Carmen",
            "Vallejo"
        };
    };

    class Shapur_BAF {
        displayName = "Shapur";
        type = "middle eastern";
        isWoodland = false;
        spawnPosBlu[] = {-198,171,0};
        spawnPosOpf[] = {-183,1006,0};
        spawnPosInd[] = {-178,1787,0};
        urbanops_sizeFactor = 0.75;
        urbanops_locationBlacklist[] = {
            "airfield"
        };
    };

    class Takistan {
        displayName = "Takistan";
        type = "middle eastern";
        isWoodland = false;
        spawnPosBlu[] = {954,-672,0};
        spawnPosOpf[] = {1508,-661,0};
        spawnPosInd[] = {2074,-596,0};
        urbanops_locationBlacklist[] = {
            "airfield",
            "Bala pass",
            "Darbang pass",
            "Jaza",
            "Loy Manara oilfield",
            "military base",
            "Nagara-1 oilfield",
            "Nar",
            "Naran Darre pass",
            "Naygul valley",
            "Par-e Siah oilfield",
            "Sar-e Sang pass"
        };
    };

    class Tanoa {
        displayName = "Tanoa";
        type = "tropical";
        isWoodland = true;
        spawnPosBlu[] = {10513,14650,0};
        spawnPosOpf[] = {10421,14542,0};
        spawnPosInd[] = {10693,14660,0};
        urbanops_locationBlacklist[] = {
            "camp remnants",
            "Ile Sainte-Marie",
            "Ravi-ta Island",
            "vehicle range",
            "GSM station",
            "Comms Whiskey",
            "firing range",
            "maze",
            "Mont Tanoa",
            "harbor remnants",
            "Ile Douen",
            "Red Spring surface mine",
            "Yasa Island",
            "Sosovu Island",
            "railway depot",
            "diesel power plant",
            "temple ruins",
            "banana plantations",
            "plantation",
            "lumberyard",
            "fuel depot",
            "Yani Islets",
            "cocoa plantations",
            "sawmill",
            "Ile Saint-George",
            "ferry",
            "fortress ruins",
            "Tuadua Island",
            "Imuri Island"
        };
    };

    class tem_cham {
        displayName = "Cham";
        type = "russian";
        isWoodland = true;
        spawnPosBlu[] = {8158,8286,0};
        spawnPosOpf[] = {7637,8314,0};
        spawnPosInd[] = {7022,8327,0};
    };

    class tem_vinjesvingenc {
        displayName = "Vinjesvingen";
        type = "russian";
        isWoodland = true;
        spawnPosBlu[] = {113,-136,0};
        spawnPosOpf[] = {575,-173,0};
        spawnPosInd[] = {1170,-176,0};
    };

    class Tembelan {
        displayName = "Tembelan";
        type = "tropical";
        isWoodland = true;
        spawnPosBlu[] = {457,5194,0};
        spawnPosOpf[] = {943,5161,0};
        spawnPosInd[] = {1120,5690,0};
    };

    class utes {
        displayName = "Utes";
        type = "russian";
        isWoodland = true;
        spawnPosBlu[] = {1995,4349,0};
        spawnPosOpf[] = {2342,4073,0};
        spawnPosInd[] = {2168,3823,0};
        urbanops_sizeFactor = 0.75;
        urbanops_locationBlacklist[] = {
            "USS Khe Sanh"
        };
    };

    class vt5 {
        displayName = "vt5";
        type = "russian";
        isWoodland = true;
        spawnPosBlu[] = {5709.2,6239.52,0};
        spawnPosOpf[] = {6156.56,5841.48,0};
        urbanops_sizeFactor = 0.75;
        urbanops_locationBlacklist[] = {};
        class customLocations {
            class powerplant {
                name = "power plant";
                type = "NameCity";
                pos[] = {3260.85,3464.43};
            };
            class radiotower {
                name = "Mätäsvaara";
                type = "NameVillage";
                pos[] = {801.424,484.858};
            };
            class airfield {
                name = "airfield";
                type = "NameVillage";
                pos[] = {212.334,405.515};
            };
            class gasStation {
                name = "gas station";
                type = "NameVillage";
                pos[] = {2381.52,1499.99};
            };
            class factory {
                name = "Röykkä";
                type = "NameCity";
                pos[] = {741.191,5601.93};
            };
            class garages {
                name = "Klaukkala";
                type = "NameCity";
                pos[] = {4921.19,4142.72};
            };
            class fields {
                name = "Hyrylä";
                type = "NameCity";
                pos[] = {5009.03,2233.1};
            };
            class haybales {
                name = "Kärpänkylä";
                type = "NameVillage";
                pos[] = {4194.69,2172.19};
            };
            class forest {
                name = "Parkumäki";
                type = "NameVillage";
                pos[] = {3900.89,2701.57};
            };
            class peninsula {
                name = "Tuukkala";
                type = "NameVillage";
                pos[] = {3482.91,1596.57};
            };
        };
    };

    class WL_Rosche {
        displayName = "Rosche";
        type = "russian";
        isWoodland = true;
        spawnPosBlu[] = {-128,60,0};
        spawnPosOpf[] = {-146,519,0};
        spawnPosInd[] = {-170,938,0};
    };

    class Woodland_ACR {
        displayName = "Bystrica";
        type = "russian";
        isWoodland = true;
        spawnPosBlu[] = {-582,-361,0};
        spawnPosOpf[] = {1022,-770,0};
        spawnPosInd[] = {2236,-679,0};
        urbanops_locationBlacklist[] = {};
        class customLocations {
            class cherno {
                name = "Chernogorsk";
                type = "NameCityCapital";
                pos[] = {1358.15,1684.27,0};
            };
            class elektro {
                name = "Elektrozavodsk";
                type = "NameCity";
                pos[] = {5145.3,1462.94,0};
            };
            class elektroHarbor {
                name = "Elektro Harbor";
                type = "NameCity";
                pos[] = {4735.83,1111.63,0};
            };
            class farms {
                name = "Farms";
                type = "NameCity";
                pos[] = {2560.86,2637.29,0};
            };
            class pusta {
                name = "Pusta";
                type = "NameVillage";
                pos[] = {3761.12,3020.14,0};
            };
        };
    };

    class Zargabad {
        displayName = "Zargabad";
        type = "middle eastern";
        isWoodland = false;
        spawnPosBlu[] = {-311,341,0};
        spawnPosOpf[] = {17,945,0};
        spawnPosInd[] = {371,1715,0};
        urbanops_locationBlacklist[] = {
            "airfield",
            "Firuz Baharv"
        };
        class customLocations {
            class barracks {
                name = "Barracks";
                type = "NameVillage";
                pos[] = {3956.09,2787.43,0};
            };
        };
    };
};
