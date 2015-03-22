//Init stuff
_crate = _this select 0;

clearWeaponCargoGlobal _crate; clearItemCargoGlobal _crate; clearMagazineCargoGlobal _crate; clearBackpackCargo _crate; 

removeAllActions _crate; //funzt nicht mit Inventar AddAction

["AmmoboxInit",[_crate, true, {true}]] spawn BIS_fnc_arsenal;

_crate addAction ["Ausrüstung", {
	["Open", true] spawn BIS_fnc_arsenal;
}];

diag_log "arsenal initialized";
