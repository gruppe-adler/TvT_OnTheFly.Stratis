class Vehicles: vehicles_base {

    class B_Quadbike_01_F: B_Quadbike_01_F {};
    class Box_NATO_Equip_F: Box_NATO_Equip_F {};


    class CUP_I_SUV_ION {
        price = 2400;
        stock = 10;
    };

    class CUP_I_SUV_Armored_ION {
        price = 6500;
        stock = 10;
    };

    class RHS_MELB_MH6M {
        code = "if (isServer) then {(_this select 2) disableTIEquipment true}";
        price = 6500;
        stock = 2;
    };
};
