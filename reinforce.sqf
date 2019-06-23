//hint "starting spawn script";
_Ran = random 0.6;
T1 selectleader s1;
_base=position doc;
_base_1=position doc_1;
_base_2= position doc_2;
_face="";

_count=0;

//_type= ["B_soldier_AR_F" ,"B_soldier_exp_F","B_Soldier_GL_F","B_soldier_M_F" , "B_soldier_repair_F" ,"B_Soldier_F" ,"B_soldier_LAT_F","B_Soldier_lite_F"  ];
//_type=["B_soldier_LAT_F","B_Soldier_F","B_soldier_AT_F","B_soldier_M_F","B_Soldier_GL_F","B_soldier_exp_F","B_engineer_F","B_soldier_AR_F"];
//_type=["AV_IndUs_Rifleman_light","AV_IndUs_AT","AV_IndUs_Rifleman","AV_IndUs_AR","AV_IndUs_Rifleman","AV_IndUs_AR","AV_IndUs_Rifleman","AV_IndUs_AR","AV_IndUs_REP", "AV_IndUs_EXP","AV_IndUs_Marksman"];
//_type=["B_mas_usn_Soldier_F","B_mas_usn_Soldierm_F","B_mas_usn_Soldier_02_f","B_mas_usn_soldier_repair_F","B_mas_usn_Soldier_GL_F","B_mas_usn_Soldier_JTAC_F","B_mas_usn_soldier_AR_F","B_mas_usn_soldier_MG_F","B_mas_usn_Soldier_F","B_mas_usn_Soldier_F","B_mas_usn_Soldier_F","B_mas_usn_soldier_M_F","B_mas_usn_soldier_Mh_F","B_mas_usn_soldier_LAT_F","B_mas_usn_medic_F","B_mas_usn_soldier_repair_F","B_mas_usn_soldier_exp_F","B_mas_usn_Soldier_F_v","B_mas_usn_Soldierm_f_v","B_mas_usn_Soldier_02_f_v","B_mas_usn_Soldier_03_f_v","B_mas_usn_Soldier_GL_f_v","B_mas_usn_Soldier_JTAC_f_v","B_mas_usn_soldier_AR_F_v","B_mas_usn_soldier_MG_f_v","B_mas_usn_Soldier_lite_f_v","B_mas_usn_Soldier_off_f_v","B_mas_usn_Soldier_SL_f_v","B_mas_usn_soldier_M_f_v","B_mas_usn_soldier_Mh_f_v","B_mas_usn_soldier_LAT_f_v","B_mas_usn_medic_f_v","B_mas_usn_soldier_repair_f_v","B_mas_usn_soldier_exp_f_v"	];
_type = [
"B_mas_mar_Soldier_F",
"B_mas_mar_Soldier_GL_F",
"B_mas_mar_Soldier_02_f",
"B_mas_mar_Soldier_03_f",
"B_mas_mar_Soldier_GL_F",
"B_mas_mar_Soldier_JTAC_F",
"B_mas_mar_Soldier_UAV_F",
"B_mas_mar_soldier_AR_F",
"B_mas_mar_soldier_MG_F",
"B_mas_mar_Soldier_GL_F",
"B_mas_mar_Soldier_GL_F",
"B_mas_mar_Soldier_GL_F",
"B_mas_mar_Soldier_GL_F",
"B_mas_mar_soldier_M_F",
"B_mas_mar_soldier_Mh_F",
"B_mas_mar_soldier_LAT_F",
"B_mas_mar_soldier_LAA_F",
"B_mas_mar_medic_F",
"B_mas_mar_soldier_repair_F",
"B_mas_mar_soldier_exp_F"
];

//_type_2=["B_medic_F" ];
//_type_2=["B_mas_usn_medic_F" ];
//_type_2=["AV_IndUs_medic"];
_type_2=["B_mas_mar_medic_F","B_mas_mar_medic_F_v"];
_count=count  _type;
_troop = _type call BIS_fnc_selectRandom;
_troop2 = _type_2 select 0;

//hint "spawning";
//p1 = T1 createUnit [ _troop, _base , [], 0, "NONE"]; [p1] joinsilent T1;p1 setrank "PRIVATE";_Ran = random 0.6
cutText ["New recruits are getting ready to join you. ","BLACK OUT"];
titletext["calling reinforcements.", "PLAIN DOWN"];
// just incase any units left player group somehow.

gp=[p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15];
gt=units t1; gp=gp-gt;
 {_x setdamage 1} foreach  gp;

//disableuserInput true;
if  (! alive p1) then {
	deleteVehicle p1;
_count= count   _type;
_troop = _type call BIS_fnc_selectRandom;
_troop createunit [_base, group player, "p1=this"];
enemymoral=enemymoral+10;
};
sleep 1;
if  (! alive p2) then {
	deleteVehicle p2;
_count= count   _type;
_troop = _type call BIS_fnc_selectRandom;
_troop createunit [_base, group player, "p2=this"];
enemymoral=enemymoral+10;
};

sleep 1;
if  (! alive p3) then {
	deleteVehicle p3;
_count= count  _type;
_troop = _type call BIS_fnc_selectRandom;
_troop createunit [_base_2, group player, "p3=this"];
enemymoral=enemymoral+10;
};
sleep 1;
if  (! alive p4) then {
	deleteVehicle p4;
_count= count  _type;
_troop = _type call BIS_fnc_selectRandom;
_troop createunit [_base_2, group player, "p4=this"];
enemymoral=enemymoral+10;
};

sleep 1;
if  (! alive p5) then {
	deleteVehicle p5;
_count= count _type;
_troop = _type call BIS_fnc_selectRandom;
_troop createunit [_base_1, group player, "p5=this"];
enemymoral=enemymoral+10;
};

sleep 1;
if  (! alive p6) then {
	deleteVehicle p6;
_count= count  _type_2;
_troop2 = _type_2 select 0;
_troop2 createunit [_base_1, group player, "p6=this"];
enemymoral=enemymoral+10;
};
sleep 1;
if  (! alive p7) then {
	deleteVehicle p7;
_count= count  _type;
_troop = _type call BIS_fnc_selectRandom;
_troop createunit [_base_1, group player, "p7=this"];
enemymoral=enemymoral+10;
};
/*
sleep 1;
if  (! alive p8) then {
	deleteVehicle p8;
_count= count  _type;
_troop = _type call BIS_fnc_selectRandom;
_troop createunit [_base_1, group player, "p8=this"];
enemymoral=enemymoral+10;
};

sleep 1;
if  (! alive p9) then {
	deleteVehicle p9;
_count= count  _type;
_troop = _type call BIS_fnc_selectRandom;
_troop createunit [_base_1, group player, "p9=this"];
enemymoral=enemymoral+10;
};
sleep 0.2;
if  (! alive p10) then {
	deleteVehicle p10;
_count= count  _type;
_troop = _type call BIS_fnc_selectRandom;
_troop createunit [_base_1, group player, "p10=this"];
enemymoral=enemymoral+10;
};
sleep 1;
if  (! alive p11) then {
	deleteVehicle p11;
_count= count  _type;
_troop = _type call BIS_fnc_selectRandom;
_troop createunit [_base_1, group player, "p11=this"];
enemymoral=enemymoral+10;
};
sleep 1;
if  (! alive p12) then {
	deleteVehicle p12;
_count= count  _type;
_troop2 = _type_2 select 0;
_troop2 createunit [_base_1, group player, "p12=this"];
enemymoral=enemymoral+10;
};
sleep 1;
if  (! alive p13) then {
	deleteVehicle p13;
_count= count  _type;
_troop = _type call BIS_fnc_selectRandom;
_troop createunit [_base_1, group player, "p13=this"];
enemymoral=enemymoral+10;
};
sleep 1;
if  (! alive p14) then {
	deleteVehicle p14;
_count= count  _type;
_troop = _type call BIS_fnc_selectRandom;
_troop createunit [_base_1, group player, "p14=this"];
enemymoral=enemymoral+10;
};
sleep 1;
if  (! alive p15) then {
	deleteVehicle p15;
_count= count  _type;
_troop = _type call BIS_fnc_selectRandom;
_troop createunit [_base_1, group player, "p15=this"];
enemymoral=enemymoral+10;
};
sleep 1;

//[(units group player)] execVM "DAPMAN\Init.sqf";
*/

skipTime (random 18);

sleep 2;
disableuserInput false;
cutText ["","BLACK IN"];








