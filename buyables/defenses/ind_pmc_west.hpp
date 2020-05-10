class Defenses: defenses_base {

    class Land_HBarrier_5_F: Land_HBarrier_5_F {};
    class Land_BagFence_Long_F: Land_BagFence_Long_F {};
    class ACE_EntrenchingTool: ACE_EntrenchingTool {};
    class B_Mortar_01_F: B_Mortar_01_F {};

    class B_HMG_01_F {
        kindOf = "Vehicles";
        code = "if (isServer) then {(_this select 2) disableTIEquipment true};";
        price = 2600;
        stock = 4;
    };

    class O_Static_Designator_02_F {
        kindOf = "Vehicles";
        code = "if (isServer) then {(_this select 2) disableTIEquipment true};";
        price = 900;
        stock = 4;
    };

    class O_UavTerminal {
        kindOf = "Items";
        price = 100;
        stock = 4;
    };
};
