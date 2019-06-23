// missin end

_a=count engroup;
_n=0;
_neg=0;
_nalive= {alive _x} count engroup;
gminus=count units group player;
wzcent= markerPos "mkrObj1";
pdis= player distance wzcent;
srpmiss = "Mission complete sir";
if (abort == 1)  exitwith
{

		deletemarker "mkrObj1";
		tskFight1 setTaskState "FAILED";
		["TaskFailed", ["Mission has been aborted","Mission has been aborted "]] call bis_fnc_shownotification;
		mstate=0;
		abort=0;
		missdone=1;
		enemymoral= enemymoral + _a;
		_neg= (gnum - gminus)*20;

		srpmiss= "I aborted the mission";

		enemymoral= (enemymoral - _n) +_neg;



};


if (_nalive <4)
then
{
	if (failed == 1)then
	{
		mstate=0;
		_neg= (gnum - gminus)*20;
		_n = 200; //moral increase for mission failure
		enemymoral= (enemymoral + _n) +_neg;


	}

	else

	{
		tskFight1 setTaskState "SUCCEEDED";
		["TaskSucceeded", ["Objective complete.","The enemy has lost"]] call bis_fnc_shownotification;
		mstate=0;
		switch (gsize) do
		{
			case "small":  {_n =100;};
			case "medium": {_n =200;};
			case "large":{_n = 300;};
			case "hostage": {_n = 400};
			case "bomb" : {_n = 400};
			default  {_n=0;};
		};
		_n= _n-_a + UK;
		_neg= (gnum - gminus)*25;
		enemymoral= (enemymoral - _n) +_neg;
		//toonsize = toonsize + gminus - 1;

		missdone=1;
		gsize="";



	};
}
else
{





	sleep 10;
	[]execVM "miss_end.sqf";



};
