//Init stuff
_crate = _this select 0;

clearWeaponCargoGlobal _crate; clearItemCargoGlobal _crate; clearMagazineCargoGlobal _crate; clearBackpackCargo _crate; 

removeAllActions _crate; //funzt nicht mit Inventar AddAction


    
       _crate addAction ['<t color=''#45B6EA''>' + (localize "str_GRAD_openSupplyBox") + '</t>',
    {
    _box = _this select 0;
    _unit = _this select 1;
    ["Open",[nil,_box]] call bis_fnc_arsenal; 
    }];


