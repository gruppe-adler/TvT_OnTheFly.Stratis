class Vehicles: vehicles_base {

    class B_Quadbike_01_F: B_Quadbike_01_F {};
    class Box_NATO_Equip_F: Box_NATO_Equip_F {};

    class Redd_Tank_LKW_leicht_gl_Wolf_Flecktarn_FueFu {
        condition = "OTF_ISWOODLAND";
        price = 1700;
        stock = 10;
    };

    class Redd_Tank_LKW_leicht_gl_Wolf_Tropentarn_FueFu: Redd_Tank_LKW_leicht_gl_Wolf_Flecktarn_FueFu {
        condition = "!OTF_ISWOODLAND";
    };

    class Fennek_Flecktarn {
        condition = "OTF_ISWOODLAND";
        code = "if (isServer) then {(_this select 2) disableTIEquipment true};";
        price = 2200;
        stock = 10;
    };

    class Fennek_Tropen: Fennek_Flecktarn {
        condition = "!OTF_ISWOODLAND";
    };

    class Redd_Tank_Fuchs_1A4_Jg_Flecktarn {
        condition = "OTF_ISWOODLAND";
        code = "if (isServer) then {(_this select 2) disableTIEquipment true};";
        description = "Fuchs base version. Comes with MG3, does not come with Milan.";
        price = 5500;
        stock = 10;
    };

    class Redd_Tank_Fuchs_1A4_Jg_Tropentarn: Redd_Tank_Fuchs_1A4_Jg_Flecktarn {
        condition = "!OTF_ISWOODLAND";
    };
};
