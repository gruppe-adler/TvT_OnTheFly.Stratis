params ["_side"];

_allPlayers = [] call BIS_fnc_listPlayers;
_numberOfTeammates = switch (_side) do {
    case (WEST): {
        WEST countside _allPlayers;
    };

    case (EAST): {
        EAST countside _allPlayers;
    };

    case (INDEPENDENT): {
        INDEPENDENT countside _allPlayers;
    };

    case (CIVILIAN): {
        CIVILIAN countside _allPlayers;
    };

    default {
        1
    };
};

_numberOfTeammates
