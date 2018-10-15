class Vehicles: vehicles_base {

    class B_Quadbike_01_F: B_Quadbike_01_F {};
    class Box_NATO_Equip_F: Box_NATO_Equip_F {};


    class CUP_C_SUV_TK {
        price = 1800;
        stock = 10;
    };

    class rhsusf_M1078A1R_SOV_M2_D_fmtv_socom {
        price = 3500;
        stock = 10;
    };

    class RHS_MELB_MH6M {
        code = "if (isServer) then {(_this select 2) disableTIEquipment true}";
        price = 6500;
        stock = 2;
    };
};
