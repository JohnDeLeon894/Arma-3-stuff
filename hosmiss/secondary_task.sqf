//killcell= s1 createSimpleTask ["Secondary"];
//killcell  setSimpleTaskDescription ["Once your primary objective is done seek out the rest of the cells and get rid of them. ", "Destroy enemy cell"];
ter0 = createGroup east;
_terray = [ter0, ter1, ter2, ter3, ter4, ter5, ter6, ter7, ter8, ter9, ter10];

_ucount0 = count units ter0;
_ucount1 = count units ter1;
_ucount2 = count units ter2;
_ucount3 = count units ter3;
_ucount4 = count units ter4;
_ucount5 = count units ter5;
_ucount6 = count units ter6;
_ucount7 = count units ter7;
_ucount8 = count units ter8;
_ucount9 = count units ter9;
_ucount10 = count units ter10;

_pos1 = markerPos (terposarr select 0);
_pos2 = markerPos (terposarr select 1);
_pos3 = markerPos (terposarr select 2);
_pos4 = markerPos (terposarr select 3);
_pos5 = markerPos (terposarr select 4);
_pos6 = markerPos (terposarr select 5);
_pos7 = markerPos (terposarr select 6);
_pos8 = markerPos (terposarr select 7);
_pos9 = markerPos (terposarr select 8);
_pos10 = markerPos (terposarr select 9);

do1_0 = 1;
do1_1 = 0;
do1_2 = 0;
do1_3 = 0;
do1_4 = 0;
do1_5 = 0;
do1_6 = 0;
do1_7 = 0;
do1_8 = 0;
do1_9 = 0;
do1_10 = 0;



if (_ucount1 > 0) then {

	cellkill1 = s1 createSimpleTask ["cell 1"];
	//cell_kill1 = s1 createSimpleTask ["cell 1","Secondary"];
	cellkill1 setSimpleTaskDescription [" Destroy cell 1","cell 1",""];
};

if (_ucount2 > 0) then {

	cellkill2 = s1 createSimpleTask ["cell 2"];
	//cell_kill2 = s1 createSimpleTask ["cell 2","Secondary"];
	cellkill2 setSimpleTaskDescription [" Destroy cell 2","cell 2",""];

} ;

if (_ucount3 > 0) then {

	cellkill3 = s1 createSimpleTask ["cell 3"];
//	cell_kill3 = s1 createSimpleTask ["cell 3","Secondary"];
	cellkill3 setSimpleTaskDescription [" Destroy cell 3","cell 3",""];
} ;

if (_ucount4 > 0) then {

	cellkill4 = s1 createSimpleTask ["cell 4"];
//cell_kill4 = s1 createSimpleTask ["cell 4","Secondary"];
	cellkill4 setSimpleTaskDescription [" Destroy cell 4","cell 4",""];
} ;

if (_ucount5 > 0) then {

	cellkill5 = s1 createSimpleTask ["cell 5"];
//	cell_kill5 = s1 createSimpleTask ["cell 5","Secondary"];
	cellkill5 setSimpleTaskDescription [" Destroy cell 5","cell 5",""];
} ;

if (_ucount6 > 0) then {

	cellkill6 = s1 createSimpleTask ["cell 6"];
//	cell_kill6 = s1 createSimpleTask ["cell 6","Secondary"];
	cellkill6 setSimpleTaskDescription [" Destroy cell 6","cell 6",""];
} ;

if (_ucount7 > 0) then {

	cellkill7 = s1 createSimpleTask ["cell 7"];
//	cell_kill7 = s1 createSimpleTask ["cell 7","Secondary"];
	cellkill7 setSimpleTaskDescription [" Destroy cell 7","cell 7",""];
} ;

if (_ucount8 > 0) then {

	cellkill8 = s1 createSimpleTask ["cell 8"];
	cell_kill8 = s1 createSimpleTask ["cell 8","Secondary"];
	cellkill8 setSimpleTaskDescription [" Destroy cell 8","cell 8",""];
} ;

if (_ucount9 > 0) then {

	cellkill9 = s1 createSimpleTask ["cell 9"];
//	cell_kill9 = s1 createSimpleTask ["cell 9","Secondary"];
	cellkill9 setSimpleTaskDescription [" Destroy cell 9","cell 9",""];
} ;

if (_ucount10 > 0) then {

	cellkill10 = s1 createSimpleTask ["cell 10"];
//	cell_kill10 = s1 createSimpleTask ["cell 10","Secondary"];
	cellkill10 setSimpleTaskDescription [" Destroy cell 10","cell 10",""];
} ;


{
	if(side _x == EAST && _x isKindOf "Man") then {
		_x addEventHandler ["killed", {call  fn_task_chkr} ];
	};
} foreach allUnits;


fn_task_chkr=
{
	//func start

	_ucount0 ={alive _x} count units ter0;
	_ucount1 ={alive _x} count units ter1;
	_ucount2 = {alive _x}count units ter2;
	_ucount3 = {alive _x}count units ter3;
	_ucount4 = {alive _x}count units ter4;
	_ucount5 ={alive _x} count units ter5;
	_ucount6 ={alive _x} count units ter6;
	_ucount7 ={alive _x} count units ter7;
	_ucount8 = {alive _x}count units ter8;
	_ucount9 = {alive _x}count units ter9;
	_ucount10 = {alive _x}count units ter10;

	if (_ucount1 < 2) then
		{ if (do1_0 == 0) then {
				 cellkill1 setTaskState "Succeeded";
				 enemymoral= enemymoral - 75;
				 do1_0 = 1;
				};
		};

	if (_ucount2 < 2) then
		{if (do1_1== 0) then{
				 cellkill2 setTaskState "Succeeded";
				 enemymoral= enemymoral - 75;
				 do1_1 = 1;
				};
		};

	if (_ucount3 < 2) then
		{if (do1_2== 0) then{
				 cellkill3 setTaskState "Succeeded";
				 enemymoral= enemymoral - 75;
				 do1_2 = 1;
				};
		};

	if (_ucount4 < 2) then
		{if (do1_3== 0) then{
				 cellkill4 setTaskState "Succeeded";
				 enemymoral= enemymoral - 75;
				 do1_3 = 1;
				};
		};

	if (_ucount5 < 2) then
		{if (do1_4== 0) then{
				 cellkill5 setTaskState "Succeeded";
				 enemymoral= enemymoral - 75;
				 do1_4 = 1;
				};
		};

	if (_ucount6 < 2) then
		{if (do1_5== 0) then{
				 cellkill6 setTaskState "Succeeded";
				 enemymoral= enemymoral - 75;
				 do1_5 = 1;
				};
		};

	if (_ucount7 < 2) then
		{if (do1_6== 0) then{
				 cellkill7 setTaskState "Succeeded";
				 enemymoral= enemymoral - 75;
				 do1_6 = 1;
				};
		};

	if (_ucount8 < 2) then
		{if (do1_7== 0) then{
				 cellkill8 setTaskState "Succeeded";
				 enemymoral= enemymoral - 75;
				 do1_7 = 1;
				};
		};

	if (_ucount9 < 2) then
		{if (do1_8== 0) then{
				 cellkill9 setTaskState "Succeeded";
				 enemymoral= enemymoral - 75;
				 do1_8 = 1;
				};
		};

	if (_ucount10 < 2) then
		{if (do1_9== 0) then{
				 cellkill10 setTaskState "Succeeded";
				 enemymoral= enemymoral - 75;
				 do1_9 = 1;
				};
		};

		hint "Function Done";
  	// funct end
};

