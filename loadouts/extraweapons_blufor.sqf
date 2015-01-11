_crate_blufor = _this select 0;



clearWeaponCargoGlobal _crate_blufor; clearItemCargoGlobal _crate_blufor; clearMagazineCargoGlobal _crate_blufor; clearBackpackCargo _crate_blufor; 

_crate_blufor addItemCargoGlobal ["AGM_CableTie", 10];  
_crate_blufor addItemCargoGlobal ["SmokeShellBlue", 30];  
_crate_blufor addItemCargoGlobal ["AGM_Bandage", 60]; 
_crate_blufor addItemCargoGlobal ["AGM_Morphine", 20]; 
_crate_blufor additemcargoGlobal ["AGM_Epipen", 10];  
_crate_blufor addItemCargoGlobal ["AGM_Bloodbag", 5]; 
_crate_blufor addItemCargoGlobal ["HandGrenade", 16]; 
_crate_blufor addItemCargoGlobal ["AGM_HandFlare_Green", 20];   
_crate_blufor addweaponcargoglobal ["srifle_EBR_F", 1]; 
_crate_blufor addmagazinecargoglobal ["20Rnd_762x51_Mag", 6]; 
_crate_blufor addItemCargoGlobal ["optic_MRCO", 1];  

if (addOnsSMAandHLC) then {
_crate_blufor addweaponcargoglobal ["hlc_lmg_M60E4", 1]; 
_crate_blufor addmagazinecargoglobal ["hlc_100Rnd_762x51_M_M60E4", 5];
};