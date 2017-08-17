[![Build Status](https://travis-ci.org/gruppe-adler/TvT_OnTheFly.Stratis.svg?branch=master)](https://travis-ci.org/gruppe-adler/TvT_OnTheFly.Stratis)

# On The Fly

On The Fly is a simple, dynamic TvT scenario, in which OPFOR has to defend a satelite dish while BLUFOR has to capture it. This mission can be played on any map that is configured in [cfgIslands](https://github.com/gruppe-adler/TvT_OnTheFly.Stratis/cfgIslands.hpp).

## Dependencies

* [CBA_A3](https://github.com/CBATeam/CBA_A3)
* [ACE3](https://github.com/acemod/ACE3)

Some factions have additional dependencies. You can see which addons are needed [here](https://github.com/gruppe-adler/grad-factions-tvt).


## Game Flow

1. Players are distributed 2:3 between OPFOR and BLUFOR
2. OPFOR commander chooses a starting position on the map
3. OPFOR players are teleported to their chosen location, can drag/carry the satelite dish around and can start setting up their defenses
4. BLUFOR commander chooses a starting position on the map that is outside a specific radius around the OPFOR position (shown on map)
5. BLUFOR players are teleported to their chosen location and can start attacking - the game begins


## Win Conditions

To capture the satelite dish, a BLUFOR player has to stand next to it while no enemies are nearby. Multiple BLUFOR players do not capture the dish faster. If BLUFOR is interrupted while capturing, the timer resets.

OPFOR wins when:
* all BLUFOR players are eliminated

BLUFOR wins when:
* all OPFOR players are eliminated OR
* the satelite dish is captured


## Equipment

Both BLUFOR and OPFOR receive money at the start of the game. The amount is based on the number of players on each respective side. The buy menu can be opened with *ACE-Interaction* on the satelite dish's generator for OPFOR and on the command vehicle for BLUFOR.

Every OPFOR player starts with a number of random fortifications in his fortification inventory (*ACE-Selfinteraction >> Equipment >> Fortifications*). Additional fortifications as well as static weapons and explosives can be bought. BLUFOR can buy vehicles and explosives in their buy menu.
