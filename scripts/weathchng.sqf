_ocast=0;
_ofog=0;
_obase=0;
_decay=0;
_ranrain= 0;

_ranrain = random 10;

if (_ranrain>6 )  exitWith
	{

	1200 setovercast 1.5;
	1000 setrain 1;

	};

_ocast= random 1;

1800 setovercast _ocast;
_ofog = (random _ocast)/2;
_obase= random 100;
_decay = (1- _ofog)/10;
if (_ofog < 0.1)then{_ofog=0};
if (_ofog > 0.6)then  {_ofog = 0.6};

if ((daytime > 12) and (daytime < 20))
	then {0 setfog [(random _ocast)/3,random 0.05,random 100];}
else
	{
		1800 setfog [_ofog, _decay,_obase];
		if (_ocast > 0.7)then {1800 setrain random _ocast};
	};


sleep 30;

hint format [" current overcast %1; overcast forcast %2; current fog %3; fog forcast %4", overcast, _ocast, fog, _ofog];


sleep 2000;
[]execVM "scripts\weathchng.sqf";






