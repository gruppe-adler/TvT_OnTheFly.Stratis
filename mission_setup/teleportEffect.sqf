_side = _this select 0;
_posi = _this select 1;

[_posi] spawn {
_position = _this select 0;
	if (isServer && !BLUFOR_TELEPORTED && OPFORCE == 3) then {
		funkwagen = [getPos opfor_teamlead,10,"rhs_gaz66_r142_vv"] call spawnStuff;
		sleep 2;
		[funkwagen] call clearInventory;
		funkwagen animate ["light_hide",1];
			
		[opfor_teamlead, funkwagen, true] call ACE_VehicleLock_fnc_addKeyForVehicle;

		[_position,10,funkwagen] call moveStuff;


		russian_brt = [_position,10,"rhs_btr60_vv"] call spawnStuff;
		sleep 2;
		[opfor_teamlead, russian_brt, true] call ACE_VehicleLock_fnc_addKeyForVehicle;
		uaz = [_position,10,"rhs_uaz_open_MSV_01"] call spawnStuff;
		[opfor_teamlead, uaz, true] call ACE_VehicleLock_fnc_addKeyForVehicle;
		sleep 2;
		[russian_brt] call clearInventory;


		uaz animate ["light_hide",1];
		[[[funkwagen],"objectives\russianMarker.sqf"],"BIS_fnc_execVM",true,true] spawn BIS_fnc_MP;
	};

	if (isServer && BLUFOR_TELEPORTED && OPFORCE == 3) then {
		
		blufor_hmvv =  [_position,10,"rhsusf_m1025_d_m2"] call spawnStuff;
		sleep 2;
		[opfor_teamlead, blufor_hmvv, true] call ACE_VehicleLock_fnc_addKeyForVehicle;
		blufor_observer_heli = [_position,10,"RHS_UH1Y"] call spawnStuff;
		sleep 2;
		[opfor_teamlead, blufor_observer_heli, true] call ACE_VehicleLock_fnc_addKeyForVehicle;
		[blufor_observer_heli] call clearInventory;

		blufor_observer_heli animate ["hide_rockets",1];
		blufor_observer_heli animate ["hide_mg",1];
		
	};
};


if (side player != _side) exitWith {};

[_posi,10,player] call moveStuff;