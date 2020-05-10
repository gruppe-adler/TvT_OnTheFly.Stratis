class Vehicles: vehicles_base {

    class B_Quadbike_01_F: B_Quadbike_01_F {};
    class Box_NATO_Equip_F: Box_NATO_Equip_F {};

    class rhs_tigr_msv {
        condition = "OTF_ISWOODLAND";
        price = 4500;
        stock = 10;
    };

    class rhs_tigr_3camo_msv: rhs_tigr_msv {
        condition = "!OTF_ISWOODLAND";
    };

    class rhs_tigr_sts_msv {
        condition = "OTF_ISWOODLAND";
        price = 10500;
        stock = 10;
        code = "if (isServer) then {for '_i' from 0 to 12 do {(_this select 2) removeMagazinesTurret ['RHS_mag_VOG30_30',[1]]}}";
    };

    class rhs_tigr_sts_3camo_msv: rhs_tigr_sts_msv {
        condition = "!OTF_ISWOODLAND";
    };
};
