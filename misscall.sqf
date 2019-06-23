
//mission only one type right now.
_ocast=0;
_ofog=0;
_obase=0;
_send="";
_Tmiss=0;
if (mstate==0) then{
	if (missdone>0) then
	{
		if (enemymoral<50)then
		{
			campfirst =0;
			fase = fase +1;

			[]execVM "statsave\statdelete.sqf";
			waitUntil {saved ==1};
			player saveStatus "playerState";

			sleep 3;
			["end7",true,true] call BIS_fnc_endMission;

		}
		else
		{

			execVM "statSave\statsave.sqf";
			waitUntil {saved ==1};

			player saveStatus "playerState";

			sleep 3 ;
			["end7",true,true] call BIS_fnc_endMission;
		};
	}
	else
	{
	cutText ["standby for orders","BLACK FADED",3];
	//hint "standby for orders";
	timeaccel= true;
		//_ocast= random 1;

	//600 setovercast _ocast;


	sleep (2 + (random 10));
	//_Tmiss= [1,1,1,1,1,1,2,2,3,3] call BIS_fnc_selectRandom;
	_Tmiss = 1;
	switch (_Tmiss) do
	{
	    case 1:
	    {
	    	_n= 24+(random 96);

			majorfight= random 100;
			sleep 1;
			saveGame;
			_n= _n / 2;
			skipTime _n;
			skipTime _n;
			[]execvm "atk.sqf";

			sleep 30;
			[]execvm "bgmusic.sqf";
	    };

	    case 2:
	    {

	    	_n= 24+(random 96);

			majorfight= random 100;
			sleep 1;
			saveGame;
			_n= _n / 2;
			skipTime _n;

			skipTime _n;
			[]execvm "hosmiss\hosmiss.sqf";
			sleep 30;
			[]execvm "bgmusic.sqf";
	    };
	     case 3:
	    {
	    	_n= 24+(random 96);

			majorfight= random 100;
			sleep 1;
			saveGame;
			_n= _n / 2;
			skipTime _n;
			skipTime _n;
			[]execvm "bombmiss\bombmiss.sqf";
			sleep 30;
			[]execvm "bgmusic.sqf";
	    };




	    default
	    {
	     	hint format [" default %1",_Tmiss];/* STATEMENT */
	    };


	};
		//[]execVM "scripts\weathchng.sqf";
		Mission_count= Mission_count + 1;
		["random", "random", [0.2, 0], [0,0],[0,1,0,0.4,0,1]] execVM "scripts\tort_dynamicweather.sqf";
	};
}
else {
	["TaskUpdated", ["You are still on a mission! ","You are still on a mission! "]] call bis_fnc_shownotification;
	[] execvm "miss_end.sqf";

};






