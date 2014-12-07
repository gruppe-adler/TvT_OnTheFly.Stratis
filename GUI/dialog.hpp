class dialog_blufor {
idd = 5000;
movingenable = 0;

class backgrounds 
{
	class background_blufor: RscText
	{
		idc = 1000;
		x = 0.557291 * safezoneW + safezoneX;
		y = 0.313 * safezoneH + safezoneY;
		w = 0.183333 * safezoneW;
		h = 0.319 * safezoneH;
		colorBackground[] = {0,0,0,0.7};
	};

	class frame_uniform_blufor: RscFrame
	{
		idc = 1800;
		text = "1. Choose Uniform"; //--- ToDo: Localize;
		x = 0.563021 * safezoneW + safezoneX;
		y = 0.335 * safezoneH + safezoneY;
		w = 0.171875 * safezoneW;
		h = 0.099 * safezoneH;
		sizeEx = 1 * GUI_GRID_H;
	};

	class frame_vehicle_blufor: RscFrame
	{
		idc = 1801;
		text = "2. Choose Vehicle"; //--- ToDo: Localize;
		x = 0.563021 * safezoneW + safezoneX;
		y = 0.445 * safezoneH + safezoneY;
		w = 0.171875 * safezoneW;
		h = 0.099 * safezoneH;
		sizeEx = 1 * GUI_GRID_H;
	};
	
};

class controls
{
	class btn_uniform_flecktarn: RscButton
	{
		idc = 1600;
		text = "Flecktarn"; //--- ToDo: Localize;
		x = 0.571042 * safezoneW + safezoneX;
		y = 0.368 * safezoneH + safezoneY;
		w = 0.0744792 * safezoneW;
		h = 0.055 * safezoneH;
		colorBackground[] = {0.5,0.5,0.5,1};
		action = "";
	};

	class btn_uniform_tropentarn: RscButton
	{
		idc = 1601;
		text = "Tropentarn"; //--- ToDo: Localize;
		x = 0.652396 * safezoneW + safezoneX;
		y = 0.368 * safezoneH + safezoneY;
		w = 0.0744792 * safezoneW;
		h = 0.055 * safezoneH;
		colorBackground[] = {0.5,0.5,0.5,1};
		colorActive[] = {0.8,0.8,0.8,1};
		action = "";
	};

	class btn_vehicle_hemtt: RscButton
	{
		idc = 1602;
		text = "HEMTT"; //--- ToDo: Localize;
		x = 0.571041 * safezoneW + safezoneX;
		y = 0.478 * safezoneH + safezoneY;
		w = 0.0744792 * safezoneW;
		h = 0.055 * safezoneH;
		colorBackground[] = {0.5,0.5,0.5,1};
		action = "";
	};

	class btn_vehicle_littlebird: RscButton
	{
		idc = 1603;
		text = "Littlebird"; //--- ToDo: Localize;
		x = 0.652396 * safezoneW + safezoneX;
		y = 0.478 * safezoneH + safezoneY;
		w = 0.0744792 * safezoneW;
		h = 0.055 * safezoneH;
		colorBackground[] = {0.5,0.5,0.5,1};
		action = "";
	};

	class btn_spawn_blufor: RscButton
	{
		idc = 1604;
		text = "Choose Spawn Position"; //--- ToDo: Localize;
		x = 0.563021 * safezoneW + safezoneX;
		y = 0.555 * safezoneH + safezoneY;
		w = 0.171875 * safezoneW;
		h = 0.066 * safezoneH;
		action = "closedialog 0; [false] execVM 'mission_setup\teleport.sqf'";
	};
	
	};

};






