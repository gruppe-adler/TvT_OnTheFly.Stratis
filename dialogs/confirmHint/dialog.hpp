#include "defines.hpp"

class otf_RscConfirmHintTitle
{
	idc = -1;
	access = 0;
	type = CT_STATIC;
	style = ST_LEFT;
	font = "PuristaLight";
	sizeEx = 0.04 * TEXT_SCALE;
	moving = 1;
	colorText[] = {1, 1, 1, 1};
	text = "";
	fixedWidth = 0;
	shadow = 1;
	colorShadow[] = {0, 0, 0, 0.5};
	linespacing = 1;
	x = 0;
	y = 0;
	w = otf_ch_W;
	h = otf_ch_H;
	colorBackground[] = {0,0,0,0.8};
};

class otf_RscConfirmHintButton: otf_RscButton
{
	idc = -1;
	style = ST_LEFT;
	shadow = 0;
	colorFocused[] = {1,1,1,0.5};
	colorBackgroundActive[] = {1,1,1,0.8}; // hover
	colorBackgroundDisabled[] = {0.3,0.3,0.3,1};
	colorBackgroundFocused[] = {0,0,0,0.5};
	colorShadow[] = {0,0,0,0};
	colorBorder[] = {0,0,0,1};
	font = "PuristaLight";
	sizeEx = 0.03;
	colorBackground[] = {0,0,0,0.6};
	w = otf_ch_W;
	h = otf_ch_H;
};

class otf_confirmHint
{
	idd = otf_ch_DIALOG;
	movingenable = 1;

	enableSimulation = 1;
	enableDisplay = 1;
	objects[] = {};
	onLoad = "player say 'defaultNotification'";

	class ControlsBackground
	{
		class HintTitle: otf_RscConfirmHintTitle
		{
			moving = 1;
			idc = otf_ch_TITLE;
			x = otf_ch_X;
			y = otf_CH_Y;
			text = "";
		};
	};

	class Controls {
		class ConfirmButton: otf_RscConfirmHintButton
		{
			idc = otf_ch_BUTTON;
			text = "OK";
			x = otf_ch_X;
			y = otf_CH_Y + 1.1*otf_ch_H;
			action = "closeDialog 0";
		};
	};
};
