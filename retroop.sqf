hint "starting spawn script";
_Ran = random 0.6;
T1 selectleader s1;
_base=position spn_W;

_face="";
_count=0;

_type= ["B_soldier_AR_F" ,"B_soldier_exp_F","B_Soldier_GL_F","B_soldier_M_F" , "B_soldier_repair_F" ,"B_Soldier_F" ,"B_soldier_LAT_F","B_Soldier_lite_F"  ];                                                        																																															
_type_2=["B_medic_F" ];
_count=count  _type;
_troop = _type select (floor random _count);
_troos3 = _type_2 select (floor random _count);

hint "spawning";
//p1 = T1 createUnit [ _troop, _base , [], 0, "NONE"]; [p1] joinsilent T1;p1 setrank "PRIVATE";_Ran = random 0.6;

if  (! alive s2) then {
_count= count   _type;
_troop = _type select (floor random _count);
_troop createunit [_base, group player, "s2=this"];
};
//~0.5 
if  (! alive s3) then {
_count= count   _type;
_troop = _type select (floor random _count);
_troop createunit [_base, group player, "s3=this"];
};

//~0.5
if  (! alive s4) then {
_count= count  _type;
_troop = _type select (floor random _count);
_troop createunit [_base, group player, "s4=this"];
};
//~0.5
if  (! alive s5) then {
_count= count  _type;
_troop = _type select (floor random _count);
_troop createunit [_base, group player, "s5=this"];
};

//~0.5
if  (! alive s6) then {
_count= count _type;
_troop = _type select (floor random _count);
_troop createunit [_base, group player, "s6=this"];
};

//~0.5
if  (! alive s7) then {
_count= count  _type_2;
_troos3 = _type_2 select (floor random _count);
_troos3 createunit [_base, group player, "s7=this"];
};

//~0.5
if  (! alive s8) then {
_count= count  _type;
_troop = _type select (floor random _count);
_troop createunit [_base, group player, "s8=this"];
};

