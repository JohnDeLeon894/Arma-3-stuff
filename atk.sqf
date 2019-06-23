// attack mission. Enemy will spawn at a random location and hold there until player attacks.

hint "atk mission";

_mcount= count misspos;
_scount= count Irreg_units;
_misObj= misspos  call BIS_fnc_selectRandom;
_MisObjPos =markerPos _misobj;
_Unitcount= 2 + (random 20);
_ncount=0;
_gcount=0;
_gcount2=0;
engroup=[];
_stype="";
gsize= "";
mstate=1;
milzone=0;
ter = creategroup east;
ter2 = creategroup east;


// create a marker.
_marker = createMarker["mkrObj1",_MisObjPos];
_marker setMarkerShape "ICON";
_marker setMarkerType "hd_objective";
_marker setmarkercolor "ColorRed";
_marker setMarkerText format ["Enemy Position"];
_marker setMarkerSize [1, 1];



[_Unitcount,true,true,[150,200,300],_misObj,[75,100,150],true] execVM "RandomSpawnTown.sqf";


// start spawning baddies group 1
/*for [{_i=0}, {_i<_unitcount}, {_i=_i+1}] do
{
	//_nUnits=  (random _scount);
	_stype= Irreg_units call BIS_fnc_selectRandom;
	_stype  createUnit [ _MisObjPos, ter," this setskill (random 1)"];
	_ncount = _ncount+1;
	sleep 0.1;
	//hint format ["unit %1 spawned", _stype];
};



// group 2

_Unitcount= 2 + (random 10);

ter2 = creategroup east;


for [{_i=0}, {_i<_unitcount}, {_i=_i+1}] do
{
	//_nUnits=  (random _scount);
	_stype= Irreg_units call BIS_fnc_selectRandom;
	_stype  createUnit [ _MisObjPos, ter2,"this setskill (random 1)"];
	_ncount = _ncount+1;

	sleep 0.1;
	//hint format ["unit %1 spawned", _stype];
};

ter setBehaviour "SAFE";
ter2 setBehaviour "SAFE";
//count the size of the group
_gcount= count units ter;
_gcount2= count units ter2;
_gsize= _gcount+_gcount2;
//{ [_x] execVM "patrol-vG.sqf";} foreach units ter2;

*/

waitUntil {rspwn==1};

gsize = "medium";

if (_gsize <13) then { gsize="small";};

if (_gsize> 18) then {gsize = "large";};



// create task
_staskmessage= format [ "%2 <br /> Intell has found a %1 sized group. Illiminate them befor they can escape.",  gsize, date];

tskFight1 = player createSimpleTask ["Attack enemy"];

tskFight1 setSimpleTaskDescription [_staskmessage ,"Enemy found","Position"];

tskFight1 setSimpleTaskDestination (getMarkerPos "mkrObj1");

tskFight1 setTaskState "CREATED";

player setcurrenttask tskFight1;

["TaskCreated", ["Enemy position found","attack the enemy"]] call bis_fnc_shownotification;


/*
milzone= random 20;
if (milzone >14) then
	{
	sleep 10;
	ter3 = creategroup east;
	[_misObj,2,300,[true,false],[true,false,false],false,[10,10],[2,2],"default",ter,nil,nil] execVM "LV\militarize.sqf";
	engroup= units ter;
	//hint "Battle has escalated";
	};
*/

engroup= engroup + units ter + units ter2;
in_groupnum= count engroup;
/*
el1= units ter select 0;
el2=units ter2 select 0;
sleep 1;
_ranInt= random 10;
if (_ranint>5) then {
[el1,100,true,[70,0],true] execVM 'patrol-vG.sqf';
}

 else {{[_x, "mkrObj1", 100, true] execVM"patrol-vD.sqf"} foreach units ter;};
sleep 1;

_ranInt= random 10;
if (_ranint>5) then {
[el2,100,true,[40,0],true] execVM 'patrol-vG.sqf';
} else {

{[_x, "mkrObj1", 100, true] execVM"patrol-vD.sqf"} foreach units ter2;
};
//missPos =missPos -[_misObj];

*/
[]execVM "miss_end.sqf";

{
	if(side _x == EAST && _x isKindOf "Man") then {
		_x addEventHandler ["killed", {enemymoral=  enemymoral - 5; _this call count_kills } ];
	};
} foreach allUnits;


