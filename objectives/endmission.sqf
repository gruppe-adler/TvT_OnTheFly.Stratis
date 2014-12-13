END_MISSION_TRIGGERED = true; publicVariable "END_MISSION_TRIGGERED";
[[[localize "str_GRAD_winmsg" + "."],"mp_helpers\hint.sqf"],"BIS_fnc_execVM",true,true] spawn BIS_fnc_MP;
sleep 1;
[[[localize "str_GRAD_winmsg" + ".."],"mp_helpers\hint.sqf"],"BIS_fnc_execVM",true,true] spawn BIS_fnc_MP;
sleep 1;
[[[localize "str_GRAD_winmsg" + "..."],"mp_helpers\hint.sqf"],"BIS_fnc_execVM",true,true] spawn BIS_fnc_MP;