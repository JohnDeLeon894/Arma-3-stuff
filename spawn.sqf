////hint "starting spawn script";
//_Ran = random 0.6;
//t1 selectleader s1;
_base=position doc;
_base_1=position doc_1;
_base_2= position doc_2;
gnum=0;
glimit = 16;
T1= createGroup west;
_count=0;
_gcount=0;
n=0;
_fteam = _this select 0;
_basearray = [_base, _base_1,_base_2];
{if (_x==player) then {n=n+1}}foreach allUnits;
glimit = glimit-n;


//_type= ["B_soldier_AR_F" ,"B_soldier_exp_F","B_Soldier_GL_F","B_soldier_M_F" , "B_soldier_repair_F" ,"B_Soldier_F" ,"B_soldier_LAT_F","B_Soldier_lite_F"  ];
//_type=["B_soldier_LAT_F","B_Soldier_F","B_soldier_AT_F","B_soldier_M_F","B_Soldier_GL_F","B_soldier_exp_F","B_engineer_F","B_soldier_AR_F"];
//_type=["AV_IndUs_Rifleman_light","AV_IndUs_AT","AV_IndUs_Rifleman","AV_IndUs_AR","AV_IndUs_Rifleman","AV_IndUs_AR","AV_IndUs_Rifleman","AV_IndUs_AR","AV_IndUs_REP", "AV_IndUs_EXP","AV_IndUs_Marksman"];
//_type=["B_mas_usn_Soldier_F","B_mas_usn_Soldierm_F","B_mas_usn_Soldier_02_f","B_mas_usn_soldier_repair_F","B_mas_usn_Soldier_GL_F","B_mas_usn_Soldier_JTAC_F","B_mas_usn_soldier_AR_F","B_mas_usn_soldier_MG_F","B_mas_usn_Soldier_F","B_mas_usn_Soldier_F","B_mas_usn_Soldier_F","B_mas_usn_soldier_M_F","B_mas_usn_soldier_Mh_F","B_mas_usn_soldier_LAT_F","B_mas_usn_medic_F","B_mas_usn_soldier_repair_F","B_mas_usn_soldier_exp_F","B_mas_usn_Soldier_F_v","B_mas_usn_Soldierm_f_v","B_mas_usn_Soldier_02_f_v","B_mas_usn_Soldier_03_f_v","B_mas_usn_Soldier_GL_f_v","B_mas_usn_Soldier_JTAC_f_v","B_mas_usn_soldier_AR_F_v","B_mas_usn_soldier_MG_f_v","B_mas_usn_Soldier_lite_f_v","B_mas_usn_Soldier_off_f_v","B_mas_usn_Soldier_SL_f_v","B_mas_usn_soldier_M_f_v","B_mas_usn_soldier_Mh_f_v","B_mas_usn_soldier_LAT_f_v","B_mas_usn_medic_f_v","B_mas_usn_soldier_repair_f_v","B_mas_usn_soldier_exp_f_v"	];
/*_type = [
"B_mas_mar_Soldier_F_v",
"B_mas_mar_Soldierm_F_v",
"B_mas_mar_Soldier_02_f_v",
"B_mas_mar_Soldier_03_f_v",
"B_mas_mar_Soldier_GL_F_v",
"B_mas_mar_Soldier_JTAC_F_v",
"B_mas_mar_Soldier_UAV_F_v",
"B_mas_mar_soldier_AR_F_v",
"B_mas_mar_soldier_MG_F_v",
"B_mas_mar_Soldier_GL_F_v",
"B_mas_mar_Soldier_GL_F_v",
"B_mas_mar_Soldier_GL_F_v",
"B_mas_mar_Soldier_GL_F_v",
"B_mas_mar_soldier_M_F_v",
"B_mas_mar_soldier_Mh_F_v",
"B_mas_mar_soldier_LAT_F_v",
"B_mas_mar_soldier_LAA_F_v",
"B_mas_mar_medic_F_v",
"B_mas_mar_soldier_repair_F_v",
"B_mas_mar_soldier_exp_F_v"

];

*/

//_type_2=["B_medic_F" ];
//_type_2=["B_mas_usn_medic_F" ];
//_type_2=["AV_IndUs_medic"];

hint "spawn started ";

_count = count _fteam;
//toonsize = toonsize - _count;
for [{_i=0},{_i<_count}, {_i=_i+1}] do
	{
	troop = _fteam select _i;
	_gcount = count units group s1;
	_str = format ["You cannot have more than %1 units in your squad.", _gcount];
	if (_gcount > glimit) exitWith
		{
			hint _str;
		};
	if (toonsize <= 0) exitwith {hint "There are no more sildiers available in your platoon for recruitment!"};
	_spos = _basearray call BIS_fnc_selectRandom;
	rseed= random 99999;
	troop createunit [_spos, group player, "this addEventHandler ['killed', {toonsize = toonsize -1; ucas = ucas +1}] "];


	};


/*
_type_2=["B_mas_mar_medic_F_v"];
_count= count  _type;
_count = _count -1;
_troop = _type  call BIS_fnc_selectRandom;
_troop2 = _type_2  call BIS_fnc_selectRandom;

			_gcount = count units group s1;
			_str = format ["You cannot have more than %1 units in your squad.", _gcount];
			if (_gcount > _glimit) exitWith
			{
				hint _str;
			};

//hint "spawning";
//p1 = group player createUnit [ _troop, _base , [], 0, "NONE"]; [p1] joinsilent group player;p1 setrank "PRIVATE";_Ran = random 0.6;
_troop createunit [_base, group player, "p1=this"];
sleep 0.2;

			_gcount = count units group s1;
			_str = format ["You cannot have more than %1 units in your squad.", _gcount];
			if (_gcount > _glimit) exitWith
			{
				hint _str;
			};

////hint "done";
//_count= count   _type;
_troop = _type  call BIS_fnc_selectRandom;
_troop createunit [_base, group player, "p2=this"];
//hint format ["unit selected ;%1. Number counted; %2", _troop, _count];

			_gcount = count units group s1;
			_str = format ["You cannot have more than %1 units in your squad.", _gcount];
			if (_gcount > _glimit) exitWith
			{
				hint _str;
			};

sleep 0.2;
//_count= count  _type;
_troop = _type  call BIS_fnc_selectRandom;;
_troop createunit [_base_2, group player, "p3=this"];
//hint format ["unit selected ;%1. Number counted; %2", _troop, _count];

			_gcount = count units group s1;
			_str = format ["You cannot have more than %1 units in your squad.", _gcount];
			if (_gcount > _glimit) exitWith
			{
				hint _str;
			};

sleep 0.2;
//_count= count  _type;
_troop = _type  call BIS_fnc_selectRandom;;
"B_mas_mar_Soldier_TL_F" createunit [_base_2, group player, "p4=this"];
//hint format ["unit selected ;%1. Number counted; %2", _troop, _count];

			_gcount = count units group s1;
			_str = format ["You cannot have more than %1 units in your squad.", _gcount];
			if (_gcount > _glimit) exitWith
			{
				hint _str;
			};

sleep 0.2;
//_count= count _type;
_troop = _type  call BIS_fnc_selectRandom;;
_troop createunit [_base_1, group player, "p5=this"];
//hint format ["unit selected ;%1. Number counted; %2", _troop, _count];

			_gcount = count units group s1;
			_str = format ["You cannot have more than %1 units in your squad.", _gcount];
			if (_gcount > _glimit) exitWith
			{
				hint _str;
			};

sleep 0.2;
//_count= count  _type_2;
_troop2 = _type_2 select 0;
_troop2 createunit [_base_1, group player, "p6=this"];

			_gcount = count units group s1;
			_str = format ["You cannot have more than %1 units in your squad.", _gcount];
			if (_gcount > _glimit) exitWith
			{
				hint _str;
			};
//hint format ["%1", _troop2];

sleep 0.2;
//_count= count  _type;
_troop = _type  call BIS_fnc_selectRandom;;
_troop createunit [_base_1, group player, "p7=this"];
//hint format ["unit selected ;%1. Number counted; %2", _troop, _count];


_troop = _type  call BIS_fnc_selectRandom;
"B_mas_mar_Soldier_TL_F" createunit [_base, group player, "p8=this"];
//hint format ["unit selected ;%1. Number counted; %2", _troop, _count];

			_gcount = count units group s1;
			_str = format ["You cannot have more than %1 units in your squad.", _gcount];
			if (_gcount > _glimit) exitWith
			{
				hint _str;
			};

sleep 0.2;
//_count= count  _type;
_troop = _type  call BIS_fnc_selectRandom;;
_troop createunit [_base_2, group player, "p9=this"];
//hint format ["unit selected ;%1. Number counted; %2", _troop, _count];

			_gcount = count units group s1;
			_str = format ["You cannot have more than %1 units in your squad.", _gcount];
			if (_gcount > _glimit) exitWith
			{
				hint _str;
			};
sleep 0.2;
//_count= count  _type;
_troop = _type  call BIS_fnc_selectRandom;;
_troop createunit [_base_2, group player, "p10=this"];
//hint format ["unit selected ;%1. Number counted; %2", _troop, _count];

			_gcount = count units group s1;
			_str = format ["You cannot have more than %1 units in your squad.", _gcount];
			if (_gcount > _glimit) exitWith
			{
				hint _str;
			};

sleep 0.2;
//_count= count _type;
_troop = _type  call BIS_fnc_selectRandom;;
_troop createunit [_base_1, group player, "p11=this"];
//hint format ["unit selected ;%1. Number counted; %2", _troop, _count];

			_gcount = count units group s1;
			_str = format ["You cannot have more than %1 units in your squad.", _gcount];
			if (_gcount > _glimit) exitWith
			{
				hint _str;
			};

sleep 0.2;
//_count= count  _type_2;
_troop2 = _type_2 select 0;
"B_mas_mar_Soldier_TL_F" createunit [_base_1, group player, "p12=this"];

			_gcount = count units group s1;
			_str = format ["You cannot have more than %1 units in your squad.", _gcount];
			if (_gcount > _glimit) exitWith
			{
				hint _str;
			};
//hint format ["%1", _troop2];

sleep 0.2;
//_count= count  _type;
_troop = _type  call BIS_fnc_selectRandom;;
_troop createunit [_base_1, group player, "p13=this"];
//hint format ["unit selected ;%1. Number counted; %2", _troop, _count];

			_gcount = count units group s1;
			_str = format ["You cannot have more than %1 units in your squad.", _gcount];
			if (_gcount > _glimit) exitWith
			{
				hint _str;
			};

sleep 0.2;
//_count= count  _type;
_troop = _type  call BIS_fnc_selectRandom;;
_troop createunit [_base_1, group player, "p14=this"];
//hint format ["unit selected ;%1. Number counted; %2", _troop, _count];

			_gcount = count units group s1;
			_str = format ["You cannot have more than %1 units in your squad.", _gcount];
			if (_gcount > _glimit) exitWith
			{
				hint _str;
			};

sleep 0.2;
//_count= count  _type;
_troop = _type  call BIS_fnc_selectRandom;;
_troop createunit [_base_1, group player, "p15=this"];
//hint format ["unit selected ;%1. Number counted; %2", _troop, _count];

//[(units group player)] execVM "DAPMAN\Init.sqf";


*/



gnum = count units group player;