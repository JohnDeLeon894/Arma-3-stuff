/****************************************************************
; Script file for Armed Assault
; Created by: JD6
;  BUS_MotInf_Team
; ****************************************************************
*/

_sUnits= ["B_soldier_AR_F" ,"B_soldier_exp_F","B_Soldier_GL_F","B_medic_F","B_soldier_M_F" , "B_soldier_repair_F" ,"B_Soldier_F" ,"B_soldier_LAT_F","B_Soldier_lite_F"  ];
_base=position spn_w;
_base_1=position doc_1;
_base_2= position doc_2;
_misObj= _mpos select (floor random _mcount);
_MisObjPos = position _misobj;
_Unitcount= 7;
_count=0;
_pPos = position player;
_pGroup = group player;
g1= creategroup west;
_scount= count _sUnits;
v1= "B_MRAP_01_hmg_F" createvehicle _base;
v2= "B_APC_Wheeled_01_cannon_F" createvehicle _base;
/*
for [{_i=0}, {_i<_unitcount}, {_i=_i+1}] do
	{

		_nUnits= floor (random _scount);
		_stype= _sunits select  _nUnits;
		//_stype  createUnit [_base, g1,"_unit=this"];
		_unit = g1 createunit [_stype, _base,[],0,"NONE"];
		if (_ncount==0) then {_unit moveindriver v1};
		if (_ncount==1) then {_unit moveindriver v2};
		if (_ncount==2) then {_unit moveingunner v1};
		if (_ncount==3) then {_unit moveingunner v2};
		if (_ncount==4) then {_unit moveincargo v1};
		if (_ncount==5) then {_unit moveincargo v1};
		if (_ncount==6) then {_unit moveincargo v2};
		if (_ncount==7) then {_unit moveincargo v2};
		if (_ncount==8) then {_unit moveincargo v2};
		_ncount = _ncount+1;

	};
*/
_nUnits= floor (random _scount);
_stype= _sunits select  _nUnits;
_unit = g1 createunit [_stype, _base,[],0,"NONE"];
_unit moveindriver v1;

_nUnits= floor (random _scount);
_stype= _sunits select  _nUnits;
_unit1 = g1 createunit [_stype, _base,[],0,"NONE"];
_unit1 moveindriver v2;

_nUnits= floor (random _scount);
_stype= _sunits select  _nUnits;
_unit2 = g1 createunit [_stype, _base,[],0,"NONE"];
_unit2 moveInGunner v1;

_nUnits= floor (random _scount);
_stype= _sunits select  _nUnits;
_unit7 = g1 createunit [_stype, _base,[],0,"NONE"];
_unit7 moveinGunner v2;

_nUnits= floor (random _scount);
_stype= _sunits select  _nUnits;
_unit3 = g1 createunit [_stype, _base,[],0,"NONE"];
_unit3 moveInCargo v1;

_nUnits= floor (random _scount);
_stype= _sunits select  _nUnits;
_unit4 = g1 createunit [_stype, _base,[],0,"NONE"];
_unit4 moveInCargo v2;

_nUnits= floor (random _scount);
_stype= _sunits select  _nUnits;
_unit5 = g1 createunit [_stype, _base,[],0,"NONE"];
_unit5 moveInCargo v1;

_nUnits= floor (random _scount);
_stype= _sunits select  _nUnits;
_unit6 = g1 createunit [_stype, _base,[],0,"NONE"];
_unit6 moveInCargo v2;





g1state = 1;
g1 move  _pPos;
_scom =format ["%1 request received, %2 is moving to your position. HQ out.", _pgroup, g1];
titletext  [_scom, "PLAIN DOWN"];
waitUntil {(count units g1)<2};
hint "back up unit is down!!";
g1state=0;























