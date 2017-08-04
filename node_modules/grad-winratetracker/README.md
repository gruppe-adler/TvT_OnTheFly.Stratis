# GRAD WinrateTracker
Tracks winrate for players and sides and saves them on the server.
Can be used supplementary to [GRAD Scoreboard](https://github.com/gruppe-adler/grad-scoreboard) or standalone.

Enables you to:
* save statistics of multiple games of the same mission
* save statistics of multiple games of different missions
* generate a statistics array that you can feed into [GRAD Scoreboard](https://github.com/gruppe-adler/grad-scoreboard) to display it

## Dependencies
* [CBA_A3](https://github.com/CBATeam/CBA_A3)

## Installation
### Manually
1. Create a folder in your mission root folder and name it `modules`. Then create one inside there and call it `grad-winrateTracker`.
2. Download the contents of this repository ( there's a download link at the side ) and put it into the directory you just created.
3. Append the following lines of code to the `description.ext`:

```sqf
class CfgFunctions {
    #include "modules\grad-winrateTracker\cfgFunctions.hpp"
};
```

### Via `npm`
_for details about what npm is and how to use it, look it up on [npmjs.com](https://www.npmjs.com/)_

1. Install package `grad-winrateTracker` : `npm install --save grad-winrateTracker`
2. Append the following lines of code to the `description.ext`:

```sqf
#define MODULES_DIRECTORY node_modules
class CfgFunctions {
    #include "node_modules\grad-winrateTracker\cfgFunctions.hpp"
};
```

## Usage
### Getting Playernames
The mission just started and you want to save all names of players per side for later. Use `[side] call grad_winrateTracker_fnc_getPlayerNamesOfSide`.

| Parameter | Type | Explanation                                                                                      |
|-----------|------|--------------------------------------------------------------------------------------------------|
| side      | side | Optional. The side of playernames to get. If no side is provided, all player names are returned. |

Example:  
```sqf
myMission_bluforPlayers = [west] call grad_winrateTracker_fnc_getPlayerNamesOfSide;
myMission_opforPlayers = [east] call grad_winrateTracker_fnc_getPlayerNamesOfSide;
myMission_indepPlayers = [independent] call grad_winrateTracker_fnc_getPlayerNamesOfSide;
```

### Saving Stats
The mission ended, you now want to save the statistics. Use `[winning player names,losing player names,winning team names,losing team names] call grad_winrateTracker_fnc_saveWinrate`. An array is returned that can then be fed into [GRAD Scoreboard](https://github.com/gruppe-adler/grad-scoreboard) (not part of this module). The stats are also logged in your server logfile.

| Parameter            | Type         | Explanation                                                                  |
|----------------------|--------------|------------------------------------------------------------------------------|
| winning player names | Array        | An array of names of all players who won this mission.                       |
| losing player names  | Array        | An array of names of all players who lost this mission.                      |
| winning team names   | Array/String | Optional. A single name or an array of names of teams who won this mission.  |
| losing team names    | Array/String | Optional. A single name or an array of names of teams who lost this mission. |

Example:  
```sqf
_winners = myMission_bluforPlayers;                         //array that we saved at mission start
_losers = myMission_opforPlayers + myMission_indepPlayers;  //arrays that we saved at mission start
_stats = [_winners,_losers,"BLUFOR",["OPFOR","INDEPENDENT"]] call grad_winrateTracker_fnc_saveWinrate;
_stats call grad_scoreboard_fnc_loadScoreboard;
```

### Getting Stats
If you want the raw stats instead of the scoreboard array that is returned by `grad_winrateTracker_fnc_saveWinrate`, you can use `[mission name] call grad_winrateTracker_fnc_getStats`.

| Parameter    | Type   | Explanation                                                                                                                                                  |
|--------------|--------|--------------------------------------------------------------------------------------------------------------------------------------------------------------|
| mission name | String | Optional. Mission name of stats to get. If none provided, missionName of config `CfgWinrateTracker` is used. If none found, name of current mission is used. |

Example:  
```sqf
[missionName] call grad_winrateTracker_fnc_getStats;
```

### Resetting Stats
To reset stats you can use `[_consent,_missionName] call grad_winrateTracker_fnc_resetStats`. This will delete all stats of the provided missionName.

| Parameter   | Type   | Explanation                                                                                                 |
|-------------|--------|-------------------------------------------------------------------------------------------------------------|
| consent     | String | Function will only work if this is "I KNOW THIS WILL DELETE ALL STATS".                                     |
| missionName | String | Optional. Mission name of stats to be reset. If not provided, mission name of current mission will be used. |

Example:  
```sqf
["I KNOW THIS WILL DELETE ALL STATS"] call grad_winrateTracker_fnc_resetStats;
```


## Configuration
You can configure this module in your `description.ext`. This is entirely optional however, since every setting has a default value.  
All of these values only affect the returned array, that you can use with [GRAD Scoreboard](https://github.com/gruppe-adler/grad-scoreboard).

Add the class `CfgWinrateTracker` to your `description.ext`, then add any of these attributes to configure the module:

| Attribute       | Default Value         | Explanation                                                  |
|-----------------|-----------------------|--------------------------------------------------------------|
| scoreBoardDuration      | 20                      | duration that the scoreboard will stay open  |
| sortBy       | "WINRATE"                          | what to sort by, can be "GAMES","WINS","LOSSES","WINRATES"               |
| minGamesForSort     | 5                           | minimum number of games a player needs to have to be in the upper ranks  |
| playerStatsHeadline   | "PLAYER WINRATES"         | headline for scoreboard                                  |
| teamStatsHeadline   | "TEAM WINRATES"             | headline for team stats                            |
| missionName | missionName of current mission      | name that these stats will be saved under |

Example:  
```sqf
class CfgWinrateTracker {
    scoreBoardDuration = 20;                            
    sortBy = "WINRATE";                                
    minGamesForSort = 5;                                
    playerStatsHeadline = "PLAYER WINRATES";           
    teamStatsHeadline = "TEAM WINRATES";                
};
```

### minGamesForSort
A few more words on this attribute. Let's say we set this to 10 and we sort by winrate. Let's also say we have 5 players:

* Jim, 90% winrate, 5 games
* Jeb, 70% winrate, 12 games
* Joe, 20% winrate, 17 games
* Jay, 75% winrate, 8 games
* Jan, 30% winrate, 4 games

They will be sorted like this, because only Jeb and Joe have more than minGamesForSort games played:

| Rank | Player | Games | Winrate |
|------|--------|-------|---------|
| 1    | Jeb    | 12    | 70%     |
| 2    | Joe    | 17    | 20%     |
| 3    | Jim    | 5     | 90%     |
| 4    | Jay    | 8     | 75%     |
| 5    | Jan    | 4     | 30%     |

### missionName
If no missionName is set in config, the missionName of the current mission will be used. On a dedicated server, this is the .pbo name excluding the map tag. So if you have a missionfile called `TvT_myMission_1.3.2.Altis.pbo` and want the stats to be persistent across versions, you should set the missionName attribute in `CfgWinrateTracker` to `TvT_myMission`.
