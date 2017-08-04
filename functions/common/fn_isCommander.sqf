params [["_unit",objNull]];

_isCommander = switch (playerSide) do {
    case (WEST): {
        if (!isNil "bluforcommander") then {_unit == bluforcommander} else {false}
    };

    case (EAST): {
        if (!isNil "opforcommander") then {_unit == opforcommander} else {false}
    };

    default {
        false
    };
};

_isCommander
