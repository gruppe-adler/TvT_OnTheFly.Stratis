#include "defines.hpp"

class otf_RscPIP {
    duration = 1e+011;
    fadein = 0;
    idd = -1;
    onLoad = "uinamespace setvariable ['otf_RscPIP',_this select 0];";
    onUnload = "uinamespace setvariable ['otf_RscPIP',nil];";

    class Controls {
        class B: otf_RscPicture {
            access = 0;
            colorBackground[] = {0,0,0,0};
            colorText[] = {1,1,1,1};
            deletable = 0;
            fade = 0;
            fixedWidth = 0;
            font = "TahomaB";
            idc = -1;
            lineSpacing = 0;
            shadow = 0;
            sizeEx = 0;
            style = 48;
            tooltipColorBox[] = {1,1,1,1};
            tooltipColorShade[] = {0,0,0,0.65};
            tooltipColorText[] = {1,1,1,1};
            type = 0;

            x = MAIN_X + FRAME_LR_W;
            y = MAIN_Y + MAIN_H - FRAME_TB_H;
            w = MAIN_W - 2*FRAME_LR_W;
            h = FRAME_TB_H;
            text = "A3\ui_f\data\GUI\Rsc\RscMiniMapSmall\GPS_B_ca.paa";
        };
        class BL: B {
            x = MAIN_X;
            y = MAIN_Y + MAIN_H - FRAME_TB_H;
            w = FRAME_LR_W;
            h = FRAME_TB_H;
            text = "A3\ui_f\data\GUI\Rsc\RscMiniMapSmall\GPS_BL_ca.paa";
        };
        class BR: B {
            x = MAIN_X + MAIN_W - FRAME_LR_W;
            y = MAIN_Y + MAIN_H - FRAME_TB_H;
            w = FRAME_LR_W;
            h = FRAME_TB_H;
            text = "A3\ui_f\data\GUI\Rsc\RscMiniMapSmall\GPS_BR_ca.paa";
        };
        class L: B {
            x = MAIN_X;
            y = MAIN_Y + FRAME_TB_H;
            w = FRAME_LR_W;
            h = MAIN_H - 2*FRAME_TB_H;
            text = "A3\ui_f\data\GUI\Rsc\RscMiniMapSmall\GPS_L_ca.paa";
        };
        class R: B {
            x = MAIN_X + MAIN_W - FRAME_LR_W;
            y = MAIN_Y + FRAME_TB_H;
            w = FRAME_LR_W;
            h = MAIN_H - 2*FRAME_TB_H;
            text = "A3\ui_f\data\GUI\Rsc\RscMiniMapSmall\GPS_R_ca.paa";
        };

        class Static_00: otf_RscPicture {
            access = 0;
            colorBackground[] = {0,0,0,0};
            colorText[] = {1,1,1,1};
            deletable = 0;
            fade = 0;
            fixedWidth = 0;
            font = "TahomaB";
            h = 0;
            w = 0;
            x = 0;
            y = 0;
            lineSpacing = 0;
            shadow = 0;
            sizeEx = 0;
            style = 48;
            tooltipColorBox[] = {1,1,1,1};
            tooltipColorShade[] = {0,0,0,0.65};
            tooltipColorText[] = {1,1,1,1};
            type = 0;

            IDC = 2400;
            text = "a3\ui_f\data\igui\rsctitles\static\feedstatic_00_ca.paa";
        };
        class Static_01: Static_00 {
            IDC = 2401;
            text = "a3\ui_f\data\igui\rsctitles\static\feedstatic_01_ca.paa";
        };
        class Static_02: Static_00 {
            IDC = 2402;
            text = "a3\ui_f\data\igui\rsctitles\static\feedstatic_02_ca.paa";
        };
        class Static_03: Static_00 {
            IDC = 2403;
            text = "a3\ui_f\data\igui\rsctitles\static\feedstatic_03_ca.paa";
        };
        class Static_04: Static_00 {
            IDC = 2404;
            text = "a3\ui_f\data\igui\rsctitles\static\feedstatic_04_ca.paa";
        };
        class Static_05: Static_00 {
            IDC = 2405;
            text = "a3\ui_f\data\igui\rsctitles\static\feedstatic_05_ca.paa";
        };
        class Static_06: Static_00 {
            IDC = 2406;
            text = "a3\ui_f\data\igui\rsctitles\static\feedstatic_06_ca.paa";
        };
        class Static_07: Static_00 {
            IDC = 2407;
            text = "a3\ui_f\data\igui\rsctitles\static\feedstatic_07_ca.paa";
        };
        class Static_08: Static_00 {
            IDC = 2408;
            text = "a3\ui_f\data\igui\rsctitles\static\feedstatic_08_ca.paa";
        };
        class Static_09: Static_00 {
            IDC = 2409;
            text = "a3\ui_f\data\igui\rsctitles\static\feedstatic_09_ca.paa";
        };
        class Static_10: Static_00 {
            IDC = 2410;
            text = "a3\ui_f\data\igui\rsctitles\static\feedstatic_10_ca.paa";
        };
        class Static_11: Static_00 {
            IDC = 2411;
            text = "a3\ui_f\data\igui\rsctitles\static\feedstatic_11_ca.paa";
        };
        class Static_12: Static_00 {
            IDC = 2412;
            text = "a3\ui_f\data\igui\rsctitles\static\feedstatic_12_ca.paa";
        };


        class T: B {
            x = MAIN_X + FRAME_LR_W;
            y = MAIN_Y;
            w = MAIN_W - 2*FRAME_LR_W;
            h = FRAME_TB_H;
            text = "A3\ui_f\data\GUI\Rsc\RscMiniMapSmall\GPS_T_ca.paa";
        };
        class TL: B {
            x = MAIN_X;
            y = MAIN_Y;
            w = FRAME_LR_W;
            h = FRAME_TB_H;
            text = "A3\ui_f\data\GUI\Rsc\RscMiniMapSmall\GPS_TL_ca.paa";
        };
        class TR: B {
            x = MAIN_X + MAIN_W - FRAME_LR_W;
            y = MAIN_Y;
            w = FRAME_LR_W;
            h = FRAME_TB_H;
            text = "A3\ui_f\data\GUI\Rsc\RscMiniMapSmall\GPS_TR_ca.paa";
        };
    };

    class ControlsBackground {
        class PIP: otf_RscPicture {
            w = PIP_W;
            h = PIP_H;
            x = PIP_X;
            y = PIP_Y;

            access = 0;
            colorBackground[] = {0,0,0,0};
            colorText[] = {1,1,1,1};
            deletable = 0;
            fade = 0;
            fixedWidth = 0;
            font = "TahomaB";
            IDC = 2300;
            lineSpacing = 0;
            shadow = 0;
            sizeEx = 0;
            style = 48;
            text = "";
            tooltipColorBox[] = {1,1,1,1};
            tooltipColorShade[] = {0,0,0,0.65};
            tooltipColorText[] = {1,1,1,1};
            type = 0;
        };
    };
};
