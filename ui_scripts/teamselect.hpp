class team_select_tlk {idd=-1;
	movingEnable = false;
	enableSimulation = true;


controls[]=
{
	IGUIBack_2200,
	IGUIBack_2201,
	RscButtonMenu_2400,
	RscButtonMenu_2401,
	RscButtonMenu_2402,
	RscButtonMenu_2403,
	RscButtonMenu_2404,
	RscButtonMenu_2405,
	RscButtonMenu_2406,
	RscButtonMenu_2407,
	RscButtonMenu_2408
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by John, v1.063, #Syroce)
////////////////////////////////////////////////////////

class IGUIBack_2200: IGUIBack
{
	idc = 2200;
	x = 0.5 * GUI_GRID_W + GUI_GRID_X;
	y = 4.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 38 * GUI_GRID_W;
	h = 19.5 * GUI_GRID_H;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0.1,0,1};
	sizeEx = 1 * GUI_GRID_H;
};
class IGUIBack_2201: IGUIBack
{
	idc = 2201;
	text = "What kind of team do you want?"; //--- ToDo: Localize;
	x = 11 * GUI_GRID_W + GUI_GRID_X;
	y = 4.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 23 * GUI_GRID_W;
	h = 4.5 * GUI_GRID_H;
	colorText[] = {1,1,1,1};
	colorBackground[] = {-1,-1,-1,0};
	sizeEx = 1 * GUI_GRID_H;
};
class RscButtonMenu_2400: RscButtonMenu
{
	idc = 2400;
	text = "   Machine Gun Team"; //--- ToDo: Localize;
	x = 1 * GUI_GRID_W + GUI_GRID_X;
	y = 9.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 12 * GUI_GRID_W;
	h = 2.5 * GUI_GRID_H;
	colorText[] = {1,1,1,1};
	colorActive[] = {0,0.6,0,0.5};
	sizeEx = 1 * GUI_GRID_H;
	action = "closeDialog 0; [emg]execVM 'spawn.sqf'";
};
class RscButtonMenu_2401: RscButtonMenu
{
	idc = 2401;
	text = "    Medical team"; //--- ToDo: Localize;
	x = 1 * GUI_GRID_W + GUI_GRID_X;
	y = 13 * GUI_GRID_H + GUI_GRID_Y;
	w = 11.5 * GUI_GRID_W;
	h = 2.5 * GUI_GRID_H;
	colorText[] = {1,1,1,1};
	colorActive[] = {0,0.6,0,0.5};
	sizeEx = 1 * GUI_GRID_H;
	action = "closeDialog 0; [med]execVM 'spawn.sqf'";
};
class RscButtonMenu_2402: RscButtonMenu
{
	idc = 2402;
	text = "  Marksman Team"; //--- ToDo: Localize;
	x = 1 * GUI_GRID_W + GUI_GRID_X;
	y = 17 * GUI_GRID_H + GUI_GRID_Y;
	w = 11.5 * GUI_GRID_W;
	h = 2.5 * GUI_GRID_H;
	colorText[] = {1,1,1,1};
	colorActive[] = {0,0.6,0,0.5};
	sizeEx = 1 * GUI_GRID_H;
	action = "closeDialog 0; [marks]execVM 'spawn.sqf'";
};
class RscButtonMenu_2403: RscButtonMenu
{
	idc = 2403;
	text = "   Anti Tank Team"; //--- ToDo: Localize;
	x = 14 * GUI_GRID_W + GUI_GRID_X;
	y = 9.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 11 * GUI_GRID_W;
	h = 2.5 * GUI_GRID_H;
	colorText[] = {1,1,1,1};
	colorActive[] = {0,0.6,0,0.5};
	sizeEx = 1 * GUI_GRID_H;
	action = "closeDialog 0; [hat]execVM 'spawn.sqf'";
};
class RscButtonMenu_2404: RscButtonMenu
{
	idc = 2404;
	text = "  Engineering Team"; //--- ToDo: Localize;
	x = 14.5 * GUI_GRID_W + GUI_GRID_X;
	y = 13 * GUI_GRID_H + GUI_GRID_Y;
	w = 10.5 * GUI_GRID_W;
	h = 2.5 * GUI_GRID_H;
	colorText[] = {1,1,1,1};
	colorActive[] = {0,0.6,0,0.5};
	sizeEx = 1 * GUI_GRID_H;
	action = "closeDialog 0; [engin]execVM 'spawn.sqf'";
};
class RscButtonMenu_2405: RscButtonMenu
{
	idc = 2405;
	text = "     Siper Team"; //--- ToDo: Localize;
	x = 14.5 * GUI_GRID_W + GUI_GRID_X;
	y = 17 * GUI_GRID_H + GUI_GRID_Y;
	w = 10.5 * GUI_GRID_W;
	h = 2.5 * GUI_GRID_H;
	colorText[] = {1,1,1,1};
	colorActive[] = {0,0.6,0,0.5};
	sizeEx = 1 * GUI_GRID_H;
	action = "closeDialog 0; [snipe]execVM 'spawn.sqf'";
};
class RscButtonMenu_2406: RscButtonMenu
{
	idc = 2406;
	text = "   Anti Air Team"; //--- ToDo: Localize;
	x = 26 * GUI_GRID_W + GUI_GRID_X;
	y = 9.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 11.5 * GUI_GRID_W;
	h = 2.5 * GUI_GRID_H;
	colorText[] = {1,1,1,1};
	colorActive[] = {0,0.6,0,0.5};
	sizeEx = 1 * GUI_GRID_H;
	action = "closeDialog 0; [haa]execVM 'spawn.sqf'";
};
class RscButtonMenu_2407: RscButtonMenu
{
	idc = 2407;
	text = "     UAV Team"; //--- ToDo: Localize;
	x = 26 * GUI_GRID_W + GUI_GRID_X;
	y = 13 * GUI_GRID_H + GUI_GRID_Y;
	w = 11.5 * GUI_GRID_W;
	h = 2.5 * GUI_GRID_H;
	colorText[] = {1,1,1,1};
	colorActive[] = {0,0.6,0,0.5};
	sizeEx = 1 * GUI_GRID_H;
	action = "closeDialog 0; [uav]execVM 'spawn.sqf'";
};
class RscButtonMenu_2408: RscButtonMenu
{
	idc = 2408;
	text = " Grenadeer Team"; //--- ToDo: Localize;
	x = 26 * GUI_GRID_W + GUI_GRID_X;
	y = 17 * GUI_GRID_H + GUI_GRID_Y;
	w = 11 * GUI_GRID_W;
	h = 2.5 * GUI_GRID_H;
	colorText[] = {1,1,1,1};
	colorActive[] = {0,0.6,0,0.5};
	sizeEx = 1 * GUI_GRID_H;
	action = "closeDialog 0; [gnrd]execVM 'spawn.sqf'";
};
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////
