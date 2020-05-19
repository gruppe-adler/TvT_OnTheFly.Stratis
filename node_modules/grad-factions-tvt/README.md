# GRAD Factions TvT
Internal information for Gruppe Adler members [here](https://forum.gruppe-adler.de/topic/1557/grad-factions-tvt-loadout-sammlung).

## Installation

### Variant 1: npm

Highly recommended: `>= npm-3.x`, which comes with NodeJS 6.x. Don't use older versions!

`npm install grad-factions-tvt --save`

For updating, change the desired version number in your mission's `package.json`, and do `npm install`

### Variant 2: manually

Alternatively, you can install `grad-factions-tvt` manually. You will then also need `grad-loadout`.

* download both  `grad-factions-tvt` and `grad-loadout` as zipfiles from github, and put the directories into a `node_modules` directories, so that you get:

```
myMission.altis/node_modules/grad-factions-tvt
myMission.altis/node_modules/grad-loadout
```

## Configuration

### description.ext

```
class Loadouts {
    baseDelay = 1;      // base delay in seconds before applying loadouts on mission start
    handleRadios = 1;   // radios are handled by grad-loadout
    resetLoadout = 0;   // start with empty loadouts instead of modifying existing loadout

	class Faction {
        #include "node_modules\grad-factions-tvt\loadouts.hpp"
    };
};

class CfgFunctions {
    #include "node_modules\grad-loadout\CfgFunctions.hpp"
};
```

### init.sqf

You're nearly done. One last thing you will have to do: define which loadouts should actually be applied:
Somewhere in your init.sqf, for example:

```
["BLU_F", "ger_heer_w"] call GRAD_Loadout_fnc_FactionSetLoadout;
["OPF_G_F", "rus_msv_w"] call GRAD_Loadout_fnc_FactionSetLoadout;
```

So the "BLU_F" faction (vanilla NATO units) will use the "ger_heer_w" loadouts.

## Available Loadouts and Dependencies

These factions are available (see also the `factions` directory):

*  (RUS MSV)
*  (US Army)
*  (Eastern Nationalists)
*  (Middle Eastern Terrorists)
*  (PMC Special Forces)

| name                     | description                         | dependencies                                                                                                                                                                        |
|--------------------------|-------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| ger_heer_d               | Bundeswehr Tropentarn               | Gruppe Adler Mod                                                                                                                                                                    |
| ger_heer_w               | Bundeswehr Flecktarn                | Gruppe Adler Mod                                                                                                                                                                    |
| ger_heer_s               | Bundeswehr Schneetarn               | Gruppe Adler Mod                                                                                                                                                                    |
| hr_hkov                  | Croatian Ground Forces (HKoV)       | [RHS: GREF](http://www.rhsmods.org/mod/3), [RHS: SAF](http://www.rhsmods.org/mod/4), [RHS: USAF](http://www.rhsmods.org/mod/2)                                                      |
| ind_eastern_nationalists | Rebels with Russian equipment       | [RHS: AFRF](http://www.rhsmods.org/mod/1), [RHS: GREF](http://www.rhsmods.org/mod/3)                                                                                                |
| ind_eastern_peasants     | Peasants with Russian equipment     | [Project Opfor](http://www.armaholic.com/page.php?id=31310), [RHS: GREF](http://www.rhsmods.org/mod/3)                                                                              |
| ind_pmc_special          | PMC / Special Forces                | [NIArms](https://steamcommunity.com/sharedfiles/filedetails/?id=1208517358)                                                                                                         |
| ind_pmc_west             | PMC / Casual / Western              | [Project Opfor](http://www.armaholic.com/page.php?id=31310), [RHS: USAF](http://www.rhsmods.org/mod/2)                                                                              |
| ind_me_terrorists        | Middle Eastern terrorists           | [Project Opfor](http://www.armaholic.com/page.php?id=31310), [RHS: GREF](http://www.rhsmods.org/mod/3)                                                                              |
| ind_me_para              | Middle Eastern Paramilitary Forces  | [Project Opfor](http://www.armaholic.com/page.php?id=31310), [RHS: AFRF](http://www.rhsmods.org/mod/1)                                                                              |
| isr_idf                  | Israel Defense Forces               | [RHS: AFRF](http://www.rhsmods.org/mod/1), [RHS: USAF](http://www.rhsmods.org/mod/2), [FHQ Accessories](https://steamcommunity.com/sharedfiles/filedetails/?id=388697912)           |
| rus_msv_d                | Russian MSV EMR Desert              | [RHS: AFRF](http://www.rhsmods.org/mod/1)                                                                                                                                           |
| rus_msv_w                | Russian MSV Flora                   | [RHS: AFRF](http://www.rhsmods.org/mod/1)                                                                                                                                           |
| rus_spetsnaz             | Russian Spetsnaz (Gorka R)          | [RHS: AFRF](http://www.rhsmods.org/mod/1)                                                                                                                                           |
| tur_tkk                  | Turkish Army (Türk Kara Kuvvetleri) | [Project Opfor](http://www.armaholic.com/page.php?id=31310), [RHS: AFRF](http://www.rhsmods.org/mod/1), [NIArms](https://steamcommunity.com/sharedfiles/filedetails/?id=1208517358) |
| us_army                  | US Army OCP                         | [RHS: USAF](http://www.rhsmods.org/mod/2)                                                                                                                                           |
| us_marines_d             | US Marines Desert                   | [RHS: USAF](http://www.rhsmods.org/mod/2)                                                                                                                                           |
| us_marines_w             | US Marines Woodland                 | [RHS: USAF](http://www.rhsmods.org/mod/2)                                                                                                                                           |
| fin_borderGuard          | Finnish Border Guard                | [RHS: SAF](http://www.rhsmods.org/mod/4), [RHS: AFRF](http://www.rhsmods.org/mod/1)                                                                                                 |


## Units

**HINT**: If you do not know which faction your editor-created units belong to, have a look into the [BI Community Wiki](https://community.bistudio.com/wiki/Arma_3_CfgVehicles_WEST)

**NOTE**: Loadouts are not guaranteed to work with units provided by Mods. If you need a specific mod supported, open an issue with [grad-loadout](https://github.com/gruppe-adler/grad-loadout).

Von den angegebenen Kategorien haben die folgenden Einheiten ein Standardloadout:

Englisch:                     | Deutsch:                                 | Funktion:
------------------------------|------------------------------------------|----------------------------------------
Asst. Autorifleman            | Zweiter Automatik Schütze                | Munitionsträger für LMG
Ammo Bearer                   | Munitionsträger                          | Munitionsträger für LMG
Autorifleman                  | Automatik-Schütze                        | LMG Schütze
Combat Life Saver             | Sanitäter                                | Sanitäter
Rifleman                      | Schütze                                  | Schütze
Rifleman (AT)                 | Schütze (Panzerabwehr)                   | Schütze mit leichter AT-Waffe
Squad Leader                  | Truppführer                              | Truppführer
Team Leader                   | Teamleader                               | Gruppenführer und Zugführer

--------------------------------------------------------------------------------

http://www.gruppe-adler.de
