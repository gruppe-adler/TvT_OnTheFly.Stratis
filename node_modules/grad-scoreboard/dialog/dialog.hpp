class grad_scoreboard
{
    idd = grad_scoreboard_DIALOG;
    closeOnMissionEnd = 1;
    movingEnable = false;
    enableSimulation = true;
    enableDisplay = true;
    duration = 30;
    onLoad = "uiNamespace setVariable [""grad_scoreboard_DISPLAY"", _this select 0]";

    class ControlsBackground {
        class TitleBar: grad_scoreboard_RscText {
            idc = grad_scoreboard_TITLEBAR;
            moving = true;
            colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0])",1};

            x = grad_scoreboard_mainX;
            y = grad_scoreboard_titleY;
            w = grad_scoreboard_mainW;
            h = grad_scoreboard_titleH;

            sizeEx = 0.04 * TEXT_SCALE;
            text = "";
        };

        class MainBackground: grad_scoreboard_RscBackground {
            idc = grad_scoreboard_MAINBACKGROUND;
            colorBackground[] = {0, 0, 0, 0.6};

            x = grad_scoreboard_mainX;
            y = grad_scoreboard_mainY;
            w = grad_scoreboard_mainW;
            h = grad_scoreboard_mainH;
        };

        class ScoreBoardTitleBackground: grad_scoreboard_RscBackground {
            idc = grad_scoreboard_SBTITLEBACKGROUND;
            colorBackground[] = {0, 0, 0, 0.25};

            x = grad_scoreboard_mainX;
            y = grad_scoreboard_mainY;
            w = grad_scoreboard_mainW;
            h = grad_scoreboard_rowH;
        };

        class MyStatsTitle: grad_scoreboard_RscText {
            idc = grad_scoreboard_MYSTATSTITLE;
            colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0])",1};

            x = grad_scoreboard_mainX;
            y = grad_scoreboard_mystatsTitleY;
            w = grad_scoreboard_mainW;
            h = grad_scoreboard_titleH;

            sizeEx = 0.04 * TEXT_SCALE;
            text = "";
            onLoad = "(_this select 0) ctrlShow false";
        };

        class MyStatsBG: grad_scoreboard_RscBackground {
            idc = grad_scoreboard_MYSTATSBACKGROUND;
            colorBackground[] = {0, 0, 0, 0.6};

            x = grad_scoreboard_mainX;
            y = grad_scoreboard_mystatsY;
            w = grad_scoreboard_mainW;
            h = grad_scoreboard_mystatsH;

            onLoad = "(_this select 0) ctrlShow false";
        };

        class MyStatsTitleBackground: grad_scoreboard_RscBackground {
            idc = grad_scoreboard_MSTITLEBACKGROUND;
            colorBackground[] = {0, 0, 0, 0.25};

            x = grad_scoreboard_mainX;
            y = grad_scoreboard_mystatsY;
            w = grad_scoreboard_mainW;
            h = grad_scoreboard_rowH;

            onLoad = "(_this select 0) ctrlShow false";
        };
    };

    class Controls {
        class ScoreBoardTitle: grad_scoreboard_RscListNBox {
            idc = grad_scoreboard_MAINLISTNBOXTITLE;

            x = grad_scoreboard_mainX;
            y = grad_scoreboard_mainY;
            w = grad_scoreboard_mainW;
            h = grad_scoreboard_rowH;

            font = "PuristaMedium";
            sizeEx = 0.04 * TEXT_SCALE;
            canDrag=false;
            lineSpacing = 1.3;
            colorSelectBackground[] = {0,0,0,0}; // Selected item fill color
            colorSelectBackground2[] = {0,0,0,0}; // Selected item fill color (oscillates between this and colorSelectBackground)
        };

        class ScoreBoard: grad_scoreboard_RscListNBox {
            idc = grad_scoreboard_MAINLISTNBOX;

            x = grad_scoreboard_mainX;
            y = grad_scoreboard_mainY + grad_scoreboard_rowH;
            w = grad_scoreboard_mainW;
            h = (grad_scoreboard_mainH - grad_scoreboard_rowH) * 0.95;

            canDrag=true;
            lineSpacing = 1.3;
        };

        class MyStatsTitle: grad_scoreboard_RscListNBox {
            idc = grad_scoreboard_MYSTATSLISTNBOXTITLE;

            x = grad_scoreboard_mainX;
            y = grad_scoreboard_mystatsY;
            w = grad_scoreboard_mainW;
            h = grad_scoreboard_rowH;

            font = "PuristaMedium";
            sizeEx = 0.04 * TEXT_SCALE;
            canDrag=true;
            lineSpacing = 1.3;
            colorSelectBackground[] = {0,0,0,0}; // Selected item fill color
            colorSelectBackground2[] = {0,0,0,0}; // Selected item fill color (oscillates between this and colorSelectBackground)
            onLoad = "(_this select 0) ctrlShow false";
        };

        class MyStats: grad_scoreboard_RscListNBox {
            idc = grad_scoreboard_MYSTATSLISTNBOX;

            x = grad_scoreboard_mainX;
            y = grad_scoreboard_mystatsY + grad_scoreboard_rowH;
            w = grad_scoreboard_mainW;
            h = (grad_scoreboard_mystatsH - grad_scoreboard_rowH) * 0.95;

            canDrag=false;
            lineSpacing = 1.3;
            colorSelectBackground[] = {0,0,0,0}; // Selected item fill color
            colorSelectBackground2[] = {0,0,0,0}; // Selected item fill color (oscillates between this and colorSelectBackground)
            onLoad = "(_this select 0) ctrlShow false";
        };
    };
};
