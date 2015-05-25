_side = _this select 0;
_posi = _this select 1;

[_posi] spawn {
_position = _this select 0;
	if (isServer && !BLUFOR_TELEPORTED) then {
		funkwagen = [getPos opfor_teamlead,10,"rhs_gaz66_r142_vv"] call spawnStuff;
		sleep 0.1;
		[funkwagen] call clearInventory;
		funkwagen animate ["light_hide",1];
			
			

		[_position,10,funkwagen] call moveStuff;


		russian_brt = [_position,10,"rhs_btr60_vv"] call spawnStuff;
		sleep 0.1;
		uaz = [_position,10,"rhs_uaz_open_MSV_01"] call spawnStuff;
		sleep 0.1;
		[russian_brt] call clearInventory;

		uaz animate ["light_hide",1];
		[[[funkwagen],"objectives\russianMarker.sqf"],"BIS_fnc_execVM",true,true] spawn BIS_fnc_MP;
	};

	if (isServer && BLUFOR_TELEPORTED) then {
		
		blufor_hmvv =  [_position,10,"rhsusf_m1025_d_m2"] call spawnStuff;
		blufor_observer_heli = [_position,10,"RHS_UH1Y"] call spawnStuff;
		sleep 0.1;
		
		[blufor_observer_heli] call clearInventory;

		blufor_observer_heli animate ["hide_rockets",1];
		blufor_observer_heli animate ["hide_mg",1];
		
	};
};


if (side player != _side) exitWith {};

[_posi,10,player] call moveStuff;