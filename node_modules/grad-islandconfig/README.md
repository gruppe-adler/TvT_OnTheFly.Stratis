# GRAD IslandConfig
![npm](https://img.shields.io/npm/v/grad-islandconfig)

Mission-specific configs for a collection of islands. There won't be any GitHub releases, so whatever is in master branch (or released as an npm package) is what you need.

## Installation

### Variant 1: npm

Highly recommended: `>= npm-3.x`, which comes with NodeJS 6.x. Don't use older versions!

`npm install grad-islandconfig --save`

For updating, change the desired version number in your mission's `package.json`, and do `npm install`

### Variant 2: manually

Alternatively, you can install `grad-islandconfig` manually.

* download  `grad-islandconfig` as a zipfile from github, and put the contents into a `node_modules` directory, so that you get:

```
myMission.altis/node_modules/grad-islandconfig
```

## Implementation

Include in your `description.ext` like so:

```
#include node_modules\grad-islandconfig\cfgGradIslands.hpp
```

To get a value you can use:

```
_valueName = "isWoodland";
_defaultValue = false;
_return = [missionConfigFile >> "cfgGradIslands",_valueName,_defaultValue] call BIS_fnc_returnConfigEntry;

// true and false are returned as strings --> convert to bool here
if (_return isEqualType "" && {toLower _return in ["true","false"]}) then {_return = _return == "true"};
```

## Building

The included file `islands.txt` aims to list all maps currently in our modset that are relevant to our multi-map missions. To use this list in your build script you can do:

```
islands=($(curl -k https://raw.githubusercontent.com/gruppe-adler/grad-islandconfig/master/islands.txt))
islands=("${islands[@]%%:*}")
```
