class Vehicles: vehicles_base {

    class B_Quadbike_01_F: B_Quadbike_01_F {};
    class Box_NATO_Equip_F: Box_NATO_Equip_F {};


    class rhsusf_m998_w_2dr_halftop {
        condition = "OTF_ISWOODLAND";
        price = 1800;
        stock = 10;
    };

    class rhsusf_m998_d_2dr_halftop: rhsusf_m998_w_2dr_halftop {
        condition = "!OTF_ISWOODLAND";
    };

    class rhsusf_m1025_w_m2 {
        condition = "OTF_ISWOODLAND";
        price = 4000;
        stock = 10;
    };

    class rhsusf_m1025_d_m2: rhsusf_m1025_w_m2 {
        condition = "!OTF_ISWOODLAND";
    };

    class rhsusf_m113_usarmy {
        condition = "OTF_ISWOODLAND";
        price = 6000;
        stock = 10;
    };

    class rhsusf_m113d_usarmy: rhsusf_m113_usarmy {
        condition = "!OTF_ISWOODLAND";
    };
};
