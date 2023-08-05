class Params
{
    class WeatherSetting
    {
        title = "Weather";
        values[] = {-1,0,25,50,75,100};
        texts[] = {"Random","Clear","Cloudy","Overcast","Rainy","Stormy"};
        default = -1;
    };

    class TimeOfDay
    {
        title = "Time of Day";
        values[] = {-1,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23};
        texts[] = {"Random","00:00","01:00","02:00","03:00","04:00","05:00","06:00","07:00","08:00","09:00","10:00","11:00","12:00","13:00","14:00","15:00","16:00","17:00","18:00","19:00","20:00","21:00","22:00","23:00"};
        default = -1;
    };

    class BluforFaction
    {
        title = "Blufor Faction";
        values[] = {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17};
        texts[] = {
            "USA - Army - [RHS:USAF]",
            "USA - Marines - [RHS:USAF]",
            "Russia - MSV - [RHS:AFRF]",
            "Russia - Spetsnaz - [RHS:AFRF]",
            "Croatia - HKoV - [RHS:AFRF, RHS:USAF, RHS:GREF]",
            "Israel - IDF - [RHS:AFRF, RHS:USAF, FHQ Accessories]",
            "Turkey - TKK - [RHS:AFRF, RHS:USAF, RHS:GREF, Project Opfor, NIArms]",
            "Germany - Heer - [GA Mod, RHS:USAF, Redd n' Tank]",
            "Misc - Nationalists (Eastern European) - [RHS:AFRF, RHS:GREF]",
            "Misc - Special Forces (Western) - [RHS:USAF, NIArms, CUP Vehicles]",
            "Misc - PMC (Western) - [RHS:USAF, Project Opfor]",
            "Misc - Paramilitary Forces (Middle Eastern) - [RHS:AFRF, Project Opfor]",
            "Misc - Rural Mob (Middle Eastern, disadvantaged) - [RHS:GREF, Project Opfor]",
            "Misc - Rural Mob (Eastern European, disadvantaged) - [RHS:GREF, Project Opfor]",
            "WW2 Wehrmacht Early - [SPE CDLC]",
            "WW2 Wehrmacht Late - [SPE CDLC]",
            "WW2 US Early - [SPE CDLC]",
            "WW2 US Late - [SPE CDLC]"
        };
        default = 0;
    };

    class OpforFaction
    {
        title = "Opfor Faction";
        values[] = {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17};
        texts[] = {
            "USA - Army - [RHS:USAF]",
            "USA - Marines - [RHS:USAF]",
            "Russia - MSV - [RHS:AFRF]",
            "Russia - Spetsnaz - [RHS:AFRF]",
            "Croatia - HKoV - [RHS:AFRF, RHS:USAF, RHS:GREF]",
            "Israel - IDF - [RHS:AFRF, RHS:USAF, FHQ Accessories]",
            "Turkey - TKK - [RHS:AFRF, RHS:USAF, RHS:GREF, Project Opfor, NIArms]",
            "Germany - Heer - [GA Mod, RHS:USAF, Redd n' Tank]",
            "Misc - Nationalists (Eastern European) - [RHS:AFRF, RHS:GREF]",
            "Misc - Special Forces (Western) - [RHS:USAF, NIArms, CUP Vehicles]",
            "Misc - PMC (Western) - [RHS:USAF, Project Opfor]",
            "Misc - Paramilitary Forces (Middle Eastern) - [RHS:AFRF, Project Opfor]",
            "Misc - Rural Mob (Middle Eastern, disadvantaged) - [RHS:AFRF, Project Opfor]",
            "Misc - Rural Mob (Eastern European, disadvantaged) - [RHS:GREF, Project Opfor]",
            "WW2 Wehrmacht Early - [SPE CDLC]",
            "WW2 Wehrmacht Late - [SPE CDLC]",
            "WW2 US Early - [SPE CDLC]",
            "WW2 US Late - [SPE CDLC]"
        };
        default = 2;
    };

    class MoneyFactor
    {
        title = "Money";
        values[] = {0.75,1,1.5};
        texts[] = {"Less", "Normal", "More"};
        default = 1;
    };

    class BluforSpawnDist
	{
		title = "Blufor Minimum Spawn Distance (m)";
		values[] = {1000,1500,2000,2500,3000,3500,4000,4500,5000};
		texts[] = {"1000","1500","2000","2500","3000","3500","4000","4500","5000"};
		default = 1500;
	};

    class GradReplayAccuracy
	{
		title = "InGame Replay Accuracy";
		values[] = {1,2,3,4,5};
		texts[] = {"every 1s","every 2s","every 3s","every 4s","every 5s"};
		default = 3;
	};

    class RankedMode
    {
        title = "Track Winrates";
        values[] = {0,1};
        texts[] = {"Off","On"};
        default = 1;
    };

    class DebugMode
    {
        title = "Debug Mode";
        values[] = {0,1};
        texts[] = {"Off","On"};
        default = 0;
    };
};
