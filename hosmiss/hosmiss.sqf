// hostage mission. declare variables

hint "hostage mission";

_host = [

"faux_male_reporter"

];

hosarr= [];
engroup= [];
mstate=1;
terposarr= [];
_shosnum ="";
_noun="";
hostage = createGroup civilian;
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
				_stype  createUnit [ _MisObjPos, _ngroup,"this setskill (random 1); nul = [this] execVM 'LV\patrol-vF.sqf'; "];


				sleep 0.5;
				//hint format ["unit %1 spawned", _stype];
			};
		engroup= engroup + units _ngroup;
};


_i= 2 + random 3;
mrkr= hos call BIS_fnc_selectRandom;
_hosnum=0;
while {_i > 0} do
{
_i=_i-1;
_mpos = markerPos mrkr;
_hosnum= _hosnum+1;
hosname= "pow_"+ str _hosnum;
strng = format ["%1 = this ; rescue = this addAction['secure hostage', 'hosmiss\secure_hos.sqf']; ", hosname];
"faux_male_reporter" createUnit [_mpos, hostage,strng];

};

/*debug stuff

createMarker ["hospos", position pow_1]; "hospos" setMarkerType "Dot";
createMarker ["respos", position reschop]; "respos" setMarkerType "Dot";
[] spawn { while {alive pow_1} do {
									"hospos" setMarkerPos position pow_1 ;
									"respos" setMarkerPos position reschop;
								};};
debug stuff*/
sleep 3;
{_x disableai "FSM"} foreach units hostage;
{_x disableai "MOVE"} foreach units hostage;



_Unitcount= 4 + (random 15);

for [{_i=0}, {_i<_unitcount}, {_i=_i+1}] do
{
	//_nUnits=  (random _scount);
	//_stype= Irreg_units call BIS_fnc_selectRandom;
	_mpos = markerPos mrkr;
	"MEC_IRR_Riflemano"  createUnit [ _mpos, ter,""];

	sleep 0.5;
};

el1= units ter select 0;

sleep 1;

{[_x, mrkr, 500, true] execVM"patrol-vD.sqf"} foreach units ter;
sleep 1;

hosarr = units hostage;

switch (_hosnum) do
{
    case 1:
    {
    	_shosnum = "One"; _noun = "reporter has";
    };
    case 2:
    {
    	_shosnum = "Two"; _noun = "reporters ";
    };
    case 3:
    {
    	_shosnum = "Three"; _noun = "reporters ";
    };
    case 4:
    {
    	_shosnum = "Four"; _noun = "reporters ";
    };
    case 5:
    {
    	_shosnum = "Five"; _noun = "reporters";
    };

    default
    {
     	/* STATEMENT */
    };
};

_strng = format [" %2 <br /> %1 reporters have been kidnapped. The U.S. Faux News media journalests were investigating the hostilities in the area when they were kidnapped and presumably are being held for ransom. There have not been any demands as of yet but we are not going to wait around for that. there are a few active cells in the area that may be able to provide some intel. Go pay them a visit and report when you have something.", _shosnum, date];

// Created in A2B Editor by EMSI
Host1 = player createSimpleTask ["Find where the hostages are."];
Host1 setSimpleTaskDescription [_strng, "Some reporters have been kidnapped", ""];
player setCurrentTask Host1;

["TaskAssigned",["Find Intel","Find hostage location"]] call bis_fnc_showNotification;



milzone= random 20;
if (milzone >15) then
	{
	sleep 10;
	_mpos = markerPos mrkr;
	[mrkr,2,500,[true,false],[true,false,false],false,[10,10],[2,2],"default",ter6,nil,nil] execVM "LV\militarize.sqf";
	engroup= units ter6;
	hint "Battle has escalated";
	};

{
	if(side _x == EAST && _x isKindOf "Man") then {
		_x addEventHandler ["killed", { enemymoral=  enemymoral - 5; _this call count_kills} ];
		search = _x addaction ['search for evidence','hosmiss\evidence.sqf'];
	};
} foreach allUnits;

gsize= "hostage";

//{   if(side _x == EAST && _x isKindOf "Man") then {    _x setDamage 10 };  } foreach allUnits;