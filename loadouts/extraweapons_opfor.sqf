_crate_opfor = _this select 0;


clearWeaponCargoGlobal _crate_opfor; clearItemCargoGlobal _crate_opfor; clearMagazineCargoGlobal _crate_opfor; clearBackpackCargo _crate_opfor;

_crate_opfor addItemCargoGlobal ["AGM_CableTie", 10];
_crate_opfor addItemCargoGlobal ["SmokeShellRed", 30];
_crate_opfor addItemCargoGlobal ["AGM_Bandage", 60];
_crate_opfor addItemCargoGlobal ["AGM_Morphine", 20];
_crate_opfor additemcargoGlobal ["AGM_Epipen", 10];
_crate_opfor addItemCargoGlobal ["AGM_Bloodbag", 5];
_crate_opfor addItemCargoGlobal ["AGM_HandFlare_Red", 20];
_crate_opfor addItemCargoGlobal ["HandGrenade", 16];
_crate_opfor addweaponcargoglobal ["srifle_DMR_01_F", 1];
_crate_opfor addmagazinecargoglobal ["10Rnd_762x51_Mag", 9];

if (SMA_AND_HLC_WEAPONS) then {
    _crate_opfor addweaponcargoglobal ["hlc_rifle_rpk", 1];
    _crate_opfor addmagazinecargoglobal ["hlc_75Rnd_762x39_m_rpk", 7];
};
