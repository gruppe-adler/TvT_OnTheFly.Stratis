//IDCs =========================================================================
#define grad_scoreboard_DIALOG              31000
#define grad_scoreboard_TITLEBAR            31001
#define grad_scoreboard_MAINBACKGROUND      31002
#define grad_scoreboard_SBTITLEBACKGROUND   31003
#define grad_scoreboard_MYSTATSTITLE        31004
#define grad_scoreboard_MYSTATSBACKGROUND   31005
#define grad_scoreboard_MSTITLEBACKGROUND   31006

#define grad_scoreboard_MAINLISTNBOXTITLE       31100
#define grad_scoreboard_MAINLISTNBOX            31101
#define grad_scoreboard_MYSTATSLISTNBOXTITLE    31102
#define grad_scoreboard_MYSTATSLISTNBOX         31103

//COORDS AND DIMS ==============================================================
#define grad_scoreboard_titleSpacingY (0.0025 * Y_SCALE)
#define grad_scoreboard_windowSpacingY (0.015 * Y_SCALE)

#define grad_scoreboard_rowH (0.025 * Y_SCALE)
#define grad_scoreboard_titleH (0.025 * Y_SCALE)
#define grad_scoreboard_mainH (0.37 * Y_SCALE)
#define grad_scoreboard_mystatsH (0.075 * Y_SCALE)

#define grad_scoreboard_mainW (0.85 * X_SCALE)
#define grad_scoreboard_mainX CENTER(1, grad_scoreboard_mainW)

#define grad_scoreboard_titleY CENTER(Y_SCALE, 2*grad_scoreboard_titleH + 2*grad_scoreboard_titleSpacingY + grad_scoreboard_mainH + grad_scoreboard_windowSpacingY + grad_scoreboard_mystatsH)
#define grad_scoreboard_mainY (grad_scoreboard_titleY + grad_scoreboard_titleH + grad_scoreboard_titleSpacingY)
#define grad_scoreboard_mystatsTitleY (grad_scoreboard_mainY + grad_scoreboard_mainH + grad_scoreboard_windowSpacingY)
#define grad_scoreboard_mystatsY (grad_scoreboard_mystatsTitleY + grad_scoreboard_titleH + grad_scoreboard_titleSpacingY)
