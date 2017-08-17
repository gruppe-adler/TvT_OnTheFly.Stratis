#define GRID_X          (pixelW * pixelGridBase)
#define GRID_Y          (pixelH * pixelGridBase)

#define MAIN_W          (GRID_X * 20)
#define MAIN_H          (GRID_Y * 12)
#define MAIN_X          (safeZoneX + safeZoneW - MAIN_W * 1.15)
#define MAIN_Y          (safeZoneY + safeZoneH - MAIN_H * 2)

#define FRAME_TB_H      (GRID_Y * 1)
#define FRAME_LR_W      (GRID_X * 1)

#define PIP_W           (MAIN_W - 0.5 * FRAME_LR_W)
#define PIP_H           (MAIN_H - 0.5 * FRAME_TB_H)
#define PIP_X           (MAIN_X + (MAIN_W - PIP_W)/2)
#define PIP_Y           (MAIN_Y + (MAIN_H - PIP_H)/2)
