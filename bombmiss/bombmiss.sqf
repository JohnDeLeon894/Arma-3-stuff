// hostage mission. declare variables

hint "bomb mission";
_bomb =
[

"Land_WoodenBox_F",
"Land_FieldToilet_F",
"Land_Portable_generator_F",
"Land_Bricks_V1_F",
"Land_ToiletBox_F",
"Land_CargoBox_V1_F",
"Land_MetalBarrel_F",
"Land_BarrelTrash_F",
"Land_WaterTank_F",
"Land_Crates_EP1",
"Land_CashDesk_F",
"Land_Icebox_F",
"Land_Vase_EP1",
"Land_Vase_loam_3_EP1",
"Land_Vase_loam_2_EP1",
"Land_Vase_loam_EP1",
"Land_Teapot_EP1",
"Land_GarbageBags_F",
"Land_Tyre_F",
"Land_Tyres_F",
"Land_CratesWooden_F",
"Land_Sack_F",
"Land_Sacks_heap_F",
"AmmoCrate_NoInteractive_",
"AmmoCrates_NoInteractive_Large",
"AmmoCrates_NoInteractive_Medium",
"AmmoCrates_NoInteractive_Small",
"Land_PaperBox_closed_F",
"Land_PaperBox_open_full_F",
"Garbage_can",
"Land_Misc_Rubble_EP1",
"Land_Ind_TankSmall",
"Land_CanisterFuel_F",
"Land_CanisterOil_F",
"Explosive",
"Land_FMradio_F",
"Land_GasCanister_F",
"Land_Suitcase_F",
"SmallTV",
"Land_Tank_rust_F",
"ARP_Objects_117radio",
"ARP_Objects_blackbox",
"ARP_Objects_cardboardcrateclosed",
"ARP_Objects_cardboardcrate",
"ARP_Objects_cardboardcratemre",
"ARP_Objects_cardboardcratewater",
"ARP_Objects_computer",
"ARP_Objects_IED",
"ARP_Objects_toughbook"

];

_dettime=0;
_detmin=0;
defused=0;
milzone=0;
mstate=1;
engroup=[];
mrkr="";
terposarr= [];

ter  = creategroup east;
ter1 = creategroup east;
ter2 = creategroup east;
ter3 = creategroup east;
ter4 = creategroup east;
ter5 = creategroup east;
ter6 = creategroup east;
ter7 = creategroup east;
ter8 = creategroup east;
ter9 = creategroup east;
ter10 = creategroup east;
ter11 = createGroup east;
// create markers
_terray = [ter, ter1, ter2, ter3, ter4, ter5, ter6, ter7, ter8, ter9, ter10];
_i= 3 + random 7;

_ncell=0;

for [{_ncell=1},{_ncell<_i}, {_ncell=_ncell + 1}] do
{
		// make marker
		mrkr= cell call BIS_fnc_selectRandom;

		cell=cell-[mrkr];
		terposarr = terposarr + [mrkr];
		pos1= mrkr;
		pos1 setMarkerShape "ICON";
		pos1 setMarkerType "hd_objective";
		pos1 setmarkercolor "ColorRed";
		pos1 setMarkerText format ["Enemy cell %1",_ncell];
		pos1 setMarkerSize [1, 1];
		_ngroup = _terray select _ncell;

		// spawn baddies
		_unitcount=2 +(random 4);
		_MisObjPos= markerPos mrkr;

		for [{_n=0}, {_n<_unitcount}, {_n=_n+1}] do
			{
				//_nUnits=  (random _scount);
				_MisObjPos= markerPos mrkr;
				_stype= Irreg_units call BIS_fnc_selectRandom;
				_stype  createUnit [ _MisObjPos, _ngroup,"this setskill (random 1); nul = [this] execVM 'patrol-vF.sqf';"];


				sleep 0.1;
				//hint format ["unit %1 spawned", _stype];
			};
		engroup= engroup + units _ngroup;
};


_i= 1;
mrkr= posbomb call BIS_fnc_selectRandom;

while {_i > 0} do
{
_i=_i-1;
_mpos = markerPos mrkr;

_obomb = _bomb call BIS_fnc_selectRandom;
tbomb = createVehicle [_obomb, _mpos , [mrkr], 20, "NONE"];
search = tbomb addaction ["check for fuse", "bombmiss\secure_bomb.sqf"];
};

_i= random 10;
while {_i > 0} do
{
_i=_i-1;
_mpos = markerPos mrkr;

_obomb = _bomb call BIS_fnc_selectRandom;
_veh = createVehicle [_obomb, _mpos , [mrkr], 20, "NONE"];

search = _veh addaction ["check for fuse", "bombmiss\bombdummy.sqf"];
};

_unitcount=5 +(random 30);

for [{_n=0}, {_n<_unitcount}, {_n=_n+1}] do
	{
		//_nUnits=  (random _scount);
		_mpos = markerPos mrkr;
		_stype= Irreg_units call BIS_fnc_selectRandom;
		_stype  createUnit [ _mpos, ter11,"this setskill (random 1); nul = [this, mrkr, 500, true] execVM 'patrol-vD.sqf'; search = this addaction ['search for evidence','bombmiss\evidence.sqf']"];
		sleep 0.1;
		//hint format ["unit %1 spawned", _stype];
	};
engroup= engroup + units ter11;


milzone= random 20;
if (milzone >17) then
	{
	sleep 10;
	_MisObjPos = markerPos mrkr;
	ter = creategroup east;
	[_MisObjPos,2,300,[true,false],[true,false,false],false,[10,10],[2,2],"default",ter,nil,nil] execVM "LV\militarize.sqf";
	engroup= engroup + units ter;
	hint "Battle has escalated";
	};






// 0.00027778 a decimal/hour second
// 0.01666667 a decimal/hour minute
/* this gets detination time*/
_currtime= daytime;// current time
_countdown= (60*45)+ (random (60*40)); // randome time within ah hour and at least 45 minutes
_countdown= round _countdown;// making an neat number to work with.

_dectime= _countdown * 0.00027777777777777777777777777777778;// changes count down seconds to decimal minutes
_dettime= _currtime + _dectime;// adds decimal minutes to current time
_cdate= date;// gets array of current date [year, month, day, hr, min].
_chour = _cdate select 4;// select hour from current date
_zerohr= date; // gets array of current date [year, month, day, hr, min].
_zerohr set [4, ((_countdown / 60)+ _chour)]; // changes the adds the seconds converted to minutes to date array to get detination time

_dethr= floor _dettime; // seperate hr from minutes
_detmin= _dettime- _dethr;// seperate minutes from hr
_detmin = _detmin *60;// calculate decimal time to give convetional minutes
_detmin = floor _detmin;// roound number for neat number calculation



_debug="true";// unused

_brief="";

	_brief =format ["%2 <br />Local intelligence report that there are rumors about a bomb planted somewhere in this sector. Although they are rumors at this point, with how active the foreign fighters are in this area the rumors cannot be dismissed. You are tasked with seeking out evidence of this weapon and rendering it harmless. Detination time is approximately %1 minutes",round(_countdown / 60), date];

//[_countdown, _dettime, _dethr, _detmin,_currtime]execvm "bombmiss\countdown.sqf";

gsize ="bomb";

[_countdown, _dettime, _dethr, _detmin,_currtime, _zerohr] execVM "bombmiss\countdown.sqf";

// Created in A2B Editor by EMSI
Bombmiss = player createSimpleTask ["Find where the bomb is."];
Bombmiss setSimpleTaskDescription [_brief, "Bomb hidden in Altis", ""];
player setCurrentTask Bombmiss;

["TaskAssigned",["Find Intel","Find Bomb position"]] call bis_fnc_showNotification;


{
	if(side _x == EAST && _x isKindOf "Man") then {
		_x addEventHandler ["killed", { enemymoral=  enemymoral - 5; _this call count_kills} ];
		search = _x addaction ['search for evidence','bombmiss\evidence.sqf'];
	};
} foreach allUnits;

gsize= "hostage";