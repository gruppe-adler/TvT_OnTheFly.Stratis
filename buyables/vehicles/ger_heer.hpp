class Vehicles: vehicles_base {

    class B_Quadbike_01_F: B_Quadbike_01_F {};
    class Box_NATO_Equip_F: Box_NATO_Equip_F {};

    class B_Truck_01_transport_F {
        price = 2400;
        stock = 10;
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


    class CUP_B_Dingo_GER_Wdl {
        condition = "OTF_ISWOODLAND";
        code = "if (isServer) then {(_this select 2) disableTIEquipment true};";
        price = 6000;
        stock = 10;
    };

    class CUP_B_Dingo_GER_Des: CUP_B_Dingo_GER_Wdl {
        condition = "!OTF_ISWOODLAND";
    };
};
