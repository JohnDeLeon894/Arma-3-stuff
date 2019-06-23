class cap_tlk {idd=-1;
	movingEnable = false;
	enableSimulation = true;


controls[]=
{
	IGUIBack_2200,
	IGUIBack_2201,
	RscButton_1601,
	RscButton_1600
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by John, v1.063, #Mifine)
////////////////////////////////////////////////////////

class IGUIBack_2200: IGUIBack
{
	idc = 2200;
	x = 2 * GUI_GRID_W + GUI_GRID_X;
	y = 13 * GUI_GRID_H + GUI_GRID_Y;
	w = 14 * GUI_GRID_W;
	h = 9 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0.5};
	colorActive[] = {0,0,0,0.5};
};
class IGUIBack_2201: IGUIBack
{
	idc = 2201;
	text = "What do you need soldier?"; //--- ToDo: Localize;
	x = 0.075;
	y = 0.5;
	w = 0.575;
	h = 0.14;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0};
	colorActive[] = {0,0,0,0};
	sizeEx = 1 * GUI_GRID_H;
};
class RscButton_1601: RscButton
{
	idc = 1601;
	text = "Reporting for mission"; //--- ToDo: Localize;
	x = 0.0625;
	y = 0.62;
	w = 0.325;
	h = 0.1;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0.4,0,0.5};
	colorActive[] = {0,0.4,0,0.5};
	sizeEx = 1 * GUI_GRID_H;
	action = "closeDialog 0; []execvm 'misscall.sqf'";
};
class RscButton_1600: RscButton
{
	idc = 1600;
	text = "I need to recruit troops"; //--- ToDo: Localize;
	x = 0.0625;
	y = 0.74;
	w = 0.325;
	h = 0.1;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0.4,0,0.5};
	colorActive[] = {0,0.4,0,0.5};
	sizeEx = 1 * GUI_GRID_H;
	action = "closeDialog 0;createDialog 'team_select_tlk'";
};
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////



class team_select_tlk {idd=-1;
	movingEnable = false;
	enableSimulation = true;


controls[]=
{
	IGUIBack_2200,
	IGUIBack_2201,
	RscButton_2400,
	RscButton_2401,
	RscButton_2402,
	RscButton_2403,
	RscButton_2404,
	RscButton_2405,
	RscButton_2406,
	RscButton_2407,
	RscButton_2408
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
	colorBackground[] = {0,0,0,0.5};
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
class RscButton_2400: RscButton
{
	idc = 2400;
	text = "   Machine Gun Team"; //--- ToDo: Localize;
	x = 1 * GUI_GRID_W + GUI_GRID_X;
	y = 9.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 12 * GUI_GRID_W;
	h = 2.5 * GUI_GRID_H;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0.4,0,0.5};
	colorActive[] = {0,0.6,0,0.5};
	sizeEx = 1 * GUI_GRID_H;
	action = " [emg]execVM 'spawn.sqf'";
};
class RscButton_2401: RscButton
{
	idc = 2401;
	text = "    Medical team"; //--- ToDo: Localize;
	x = 1 * GUI_GRID_W + GUI_GRID_X;
	y = 13 * GUI_GRID_H + GUI_GRID_Y;
	w = 11.5 * GUI_GRID_W;
	h = 2.5 * GUI_GRID_H;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0.4,0,0.5};
	colorActive[] = {0,0.6,0,0.5};
	sizeEx = 1 * GUI_GRID_H;
	action = " [med]execVM 'spawn.sqf'";
};
class RscButton_2402: RscButton
{
	idc = 2402;
	text = "  Marksman Team"; //--- ToDo: Localize;
	x = 1 * GUI_GRID_W + GUI_GRID_X;
	y = 17 * GUI_GRID_H + GUI_GRID_Y;
	w = 11.5 * GUI_GRID_W;
	h = 2.5 * GUI_GRID_H;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0.4,0,0.5};
	colorActive[] = {0,0.6,0,0.5};
	sizeEx = 1 * GUI_GRID_H;
	action = " [marks]execVM 'spawn.sqf'";
};
class RscButton_2403: RscButton
{
	idc = 2403;
	text = "   Anti Tank Team"; //--- ToDo: Localize;
	x = 14 * GUI_GRID_W + GUI_GRID_X;
	y = 9.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 11 * GUI_GRID_W;
	h = 2.5 * GUI_GRID_H;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0.4,0,0.5};
	colorActive[] = {0,0.6,0,0.5};
	sizeEx = 1 * GUI_GRID_H;
	action = " [hat]execVM 'spawn.sqf'";
};
class RscButton_2404: RscButton
{
	idc = 2404;
	text = "  Engineering Team"; //--- ToDo: Localize;
	x = 14.5 * GUI_GRID_W + GUI_GRID_X;
	y = 13 * GUI_GRID_H + GUI_GRID_Y;
	w = 10.5 * GUI_GRID_W;
	h = 2.5 * GUI_GRID_H;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0.4,0,0.5};
	colorActive[] = {0,0.6,0,0.5};
	sizeEx = 1 * GUI_GRID_H;
	action = "[engin]execVM 'spawn.sqf'";
};
class RscButton_2405: RscButton
{
	idc = 2405;
	text = "     Siper Team"; //--- ToDo: Localize;
	x = 14.5 * GUI_GRID_W + GUI_GRID_X;
	y = 17 * GUI_GRID_H + GUI_GRID_Y;
	w = 10.5 * GUI_GRID_W;
	h = 2.5 * GUI_GRID_H;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0.4,0,0.5};
	colorActive[] = {0,0.6,0,0.5};
	sizeEx = 1 * GUI_GRID_H;
	action = " [snipe]execVM 'spawn.sqf'";
};
class RscButton_2406: RscButton
{
	idc = 2406;
	text = "   Anti Air Team"; //--- ToDo: Localize;
	x = 26 * GUI_GRID_W + GUI_GRID_X;
	y = 9.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 11.5 * GUI_GRID_W;
	h = 2.5 * GUI_GRID_H;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0.4,0,0.5};
	colorActive[] = {0,0.6,0,0.5};
	sizeEx = 1 * GUI_GRID_H;
	action = "[haa]execVM 'spawn.sqf'";
};
class RscButton_2407: RscButton
{
	idc = 2407;
	text = "     UAV Team"; //--- ToDo: Localize;
	x = 26 * GUI_GRID_W + GUI_GRID_X;
	y = 13 * GUI_GRID_H + GUI_GRID_Y;
	w = 11.5 * GUI_GRID_W;
	h = 2.5 * GUI_GRID_H;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0.4,0,0.5};
	colorActive[] = {0,0.6,0,0.5};
	sizeEx = 1 * GUI_GRID_H;
	action = "[uav]execVM 'spawn.sqf'";
};
class RscButton_2408: RscButton
{
	idc = 2408;
	text = " Grenadeer Team"; //--- ToDo: Localize;
	x = 26 * GUI_GRID_W + GUI_GRID_X;
	y = 17 * GUI_GRID_H + GUI_GRID_Y;
	w = 11 * GUI_GRID_W;
	h = 2.5 * GUI_GRID_H;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0.4,0,0.5};
	colorActive[] = {0,0.6,0,0.5};
	sizeEx = 1 * GUI_GRID_H;
	action = " [gnrd]execVM 'spawn.sqf'";
};
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////
