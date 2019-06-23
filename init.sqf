//;Dyna Mission for arma 3!!


cutText ["","BLACK FADED",60];
waitUntil {!isNull player};
player loadstatus  "playerState";
mpos = [];
evtries=0;
g1state=0;
mstate=0;
warzone=0;
nomusic=0;
missdone=0;
saved=0;
abort=0;
//fase = 0;
failed=0;
toonsize= 30;
loaded=0;
Mission_count=0;
PK=0;
UK=0;
ucas=0;
i=0;
enemymoral= 1500;
found=0;
rspwn=0;


enableSaving [false, false];
mustate="";
mPos=[];
s_opfor=[];

moralbase=enemymoral;

/////////////USER VARIABLES//////////
// define chopper call sign
callsign = "Chalk 1";
////////////DO////////NOT////////EDIT//////BELOW//////////HERE
call compile preprocessFile "support\suptFunc.sqf";
helisup = [player,"helo_taxi"] call BIS_fnc_addCommMenuItem;
null = [] spawn LF_fnc_heliInit;


cost = false;
funds = 10000;

//////////////////////////////////////////////////////////////

_misschk= 0;
[]execVM "SIdentity.sqf";

[]execvm "loads.sqf";
//0 = execVM "scripts\Heli Crash\check.sqf";
waitUntil {loaded==1};
[start]execVM "spawn.sqf";
[]execVM "scripts\killCounter.sqf";
backup = compile preprocessFile "backup.sqf";
neworder= compile preprocessFile "neworder.sqf";
atk=compile preprocessFile "atk.sqf";
bcall= compile preprocessFile "bcall.sqf";
mcall= compile preprocessFile "misscall.sqf";
//NORRN_H_keepOldCrew = true;
//NORRN_H_keepOldHeli = true;
//[chalk1,navajo1] execVM "scripts\heloGoTo\heloGoTo_init.sqf";
//player setVariable ["NORRN_taxiHeli", chalk1, true];
[]execVM "findpos.sqf";
//chalk1 setcaptive true;
[]execVM "eos\OpenMe.sqf";
waitUntil {found==1};
//[cache distance,min framerate,debug(true or false),vehicle cache distance (enablesimulation)]
[600,-1,false,1000]execvm "zbe_cache\main.sqf";

//[] execVM "real_weather.sqf";
if (isnil ("campfirst")) exitWith
	{
		cutText ["mission one","BLACK IN",10];
		campfirst = 1;

		camptoonsize = 0;
		campovercast= 0;
		camp_uk=0;
		camp_pk=0;
		camp_miss_count=0;
		fase = 1;
		//[player, player]execVM "Weaponset.sqf";
		[]execVM "scripts\briefing.sqf";
		//0= [w_crate] execVM "scripts\west_create.sqf";
		//[] execVM "scripts\cos\cosInit.sqf";


	};
/*if (campfirst < 1) exitwith
	{
		setdate campdate;

		skipTime 24;
		cutText ["mission one","BLACK IN"];
		campfirst = 1;

	 };
/* load campaign variables	*/
enemymoral = campenmoral;

toonsize = camptoonsize;

UK = camp_uk;
PK = camp_pk;
Mission_count =camp_miss_count;
ucas = 30 - toonsize;
fase= camp_fase;



0 setOvercast campovercast;

setdate campdate;

skipTime (random 72);

_date = format ["%1", date];

player sideChat "camploaded";



hint format ["platoon size = %1", toonsize];


//[] execVM "scripts\cos\cosInit.sqf";
[]execVM "scripts\briefing.sqf";

cutText [_date,"BLACK IN", 10];










