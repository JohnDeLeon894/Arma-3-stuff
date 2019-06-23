_countdown = _this select 0;
_dettime= _this select 1;
_dethr = _this select 2;
_detmin = _this select 3;
_currtime= _this select 4;
_zerohr= _this select 5;

if (defused==1)exitWith{Hint "bomb has been defused"; /*placeholder for mission end execute*/};
sleep 1;
/*
_countdown = _countdown - 1;

if (_countdown < 6000) then
{

hintSilent format["count down time %1. ",_countdown, _dethr,_detmin];

};

if (_countdown < 1)then

{
[]execVM "bombmiss\booom.sqf";
}
else
{
//[_countdown, _dettime, _dethr, _detmin]execvm "bombmiss\countdown.sqf";
*/

_xdate= dateToNumber _zerohr;
_zerohr = NumberToDate [2035, _xdate];
_xdate= dateToNumber _zerohr;
_Cdate = dateToNumber date;

// debug stuff hint format ["%1 <br /> %2 <br /> %3 <br /> %4" , date, daytime, _currtime, _zerohr];

if (_Cdate> _xdate) then
	{
	[]execVM "bombmiss\booom.sqf";
	}
else
	{

		[_countdown, _dettime, _dethr, _detmin,_currtime, _zerohr] execVM "bombmiss\countdown.sqf";
	};