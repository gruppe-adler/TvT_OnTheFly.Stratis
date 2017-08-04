#include "defines.hpp"

class otf_tlh_line {
	access = 0;
	type = CT_STATIC;
    style = ST_LEFT;
	idc = -1;
	colorBackground[] = { 0,0,0, 0.8 };
	colorText[] = {1, 1, 1, 1};
	text = "";
	fixedWidth = 0;
	x = 0;
	y = 0;
    w = otf_tlh_W;
	h = otf_tlh_H;
	shadow = 1;
	colorShadow[] = {0, 0, 0, 0.5};
	font = "PuristaLight";
	sizeEx = 0.04 * TEXT_SCALE;
	linespacing = 1;
    duration = 1e+1000;
};

class otf_twoLineHint
{
	idd = otf_tlh_TITLE;
	duration = 99999;

	enableSimulation = 1;
	enableDisplay = 1;

    onLoad = "uiNamespace setVariable ['otf_twoLineHint', _this select 0];";
    onUnload = "uiNamespace setVariable ['otf_twoLineHint', displayNull];";

	class ControlsBackground
	{
		class line1: otf_tlh_line
		{
			idc = otf_tlh_LINE1;
            moving = 1;
			text = "";
			x = otf_tlh_X;
			y = otf_tlh_Y;
		};

        class line2: otf_tlh_line
        {
            idc = otf_tlh_LINE2;
            text = "";
            x = otf_tlh_X;
            y = otf_tlh_Y + otf_tlh_H * 1.1;
        };
	};
};
