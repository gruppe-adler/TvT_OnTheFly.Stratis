# GRAD Scoreboard
A dynamic scoreboard that displays what you feed it.  
Works well together with [GRAD Winrate Tracker](https://github.com/gruppe-adler/grad-winrateTracker).

![](http://i.imgur.com/DL7b4bG.png)

## Features
* take a specifically formatted array of statistics
* optionally sort it
* display it in a dialog
* adjust the dialog dimensions depending on array contents
* try to find the player's profile name and highlight their statistics

## Dependencies
The [CBA_A3](https://github.com/CBATeam/CBA_A3) mod is required.

## Installation

### Manually
1. Create a folder in your mission root folder and name it `modules`. Then create one inside there and call it `grad-scoreboard`.
2. Download the contents of this repository ( there's a download link at the side ) and put it into the directory you just created.
3. see step 3 below in the npm part

### Via `npm`
_for details about what npm is and how to use it, look it up on [npmjs.com](https://www.npmjs.com/)_

1. Install package `grad-scoreboard` : `npm install --save grad-scoreboard`
2. Prepend your mission's `description.ext` with `#define MODULES_DIRECTORY node_modules`
3. Append the following lines of code to the `description.ext`:

```sqf
#include "node_modules\grad-scoreboard\grad_scoreboard.hpp"

class CfgFunctions {
    #include "node_modules\grad-scoreboard\cfgFunctions.hpp"
};
```

## Usage
If no second statistics array is provided, the additional window will be hidden. The parameter array can be generated with [GRAD Winrate Tracker](https://github.com/gruppe-adler/grad-winrateTracker) (however, if you want any other stats than games, wins, losses, winrate, winrateTracker will not work for you).
To open the scoreboard, use  
`[duration,main stats,main headline,rank numbers,sort,2nd stats,2nd headline,2nd rank numbers,2nd sort,disable simulation] call grad_scoreboard_fnc_loadScoreboard`:

| Parameter                   | Explanation                                                                                                                                                    |
|-----------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------|
| duration                    | Number - Duration for which the dialog is displayed. -1 to disable.                                                                                            |
| main stats                  | Array - Contains all statistics to be displayed in main window (see below for correct syntax).                                                                 |
| main headline               | String - Title of the main window.                                                                                                                             |
| rank numbers (optional)     | Bool - Display rank numbers as first column in main window?                                                                                                    |
| sort (optional)             | Bool/Array - If array: [sort statistics? (bool), index to sort by (number), sort ascending (bool)]. If bool, true: Sort by first index, descending.            |
| 2nd stats (optional)        | Array - Contains all statistics to be displayed in additional window (see below for correct syntax)                                                            |
| 2nd headline (optional)     | String - Title of additional window.                                                                                                                           |
| 2nd rank numbers (optional) | Bool - Display rank numbers as first column in additional window?                                                                                              |
| 2nd sort (optional)         | Bool/Array - If array: [sort additional statistics? (bool), index to sort by (number), sort ascending (bool)]. If bool, true: Sort by first index, descending. |
| disable simulation          | Bool - Disable player simulation for the *duration*.                                                                                                           |

Example:
`[20,_allStats,"statistics of my mission",true] call grad_scoreboard_fnc_loadScoreboard`

## Statistics Arrays Syntax
The statistics arrays passed to the scoreboard have to be formatted in a certain way:

`_allStats = [array,array,array,...]`

* the first nested array is interpreted as the headline
* all nested arrays have to be the same length
* all elements of the same index have to be of the same type
* the main and additional stats arrays can be completely different

Example:

```sqf
_allStats = [
    ["Player name", "Points", "Kills"],
    ["Hans", 12, 6],
    ["Franz", 15, 5],
    ["Alf", 9, 2]
];
```

## Sorting
If the statistics are to be sorted before displaying, the *sort* parameter is used.

`[true,1,false]` would sort the stats array from the previous example descending by points:

```sqf
_allStats = [
    ["Player name", "Points", "Kills"],
    ["Franz", 15, 5],
    ["Hans", 12, 6],
    ["Alf", 9, 2]
];
```

`[true,2,true]` would sort the stats array from the previous example ascending by kills:

```sqf
_allStats = [
    ["Player name", "Points", "Kills"],
    ["Alf", 9, 2]
    ["Franz", 15, 5],
    ["Hans", 12, 6],
];
```
