_id = -1;
_greatest = -999999;
{
    if (typeName _x == "SCALAR") then {
        if (_x > _greatest) then {
            _greatest = _x;
            _id = _forEachIndex;
        };
    };
} forEach _this;

_id
