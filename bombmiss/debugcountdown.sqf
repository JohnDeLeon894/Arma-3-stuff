// 0.00027778 a decimal second
// 0.01666667 a decimal minute
_detmin=0;
_currtime= daytime;
countdown= (60*20)+ (random (60*40));
_countdown= round countdown;

_dectime= _countdown * 0.0002777777777777778;
_dettime= _currtime + _dectime;


_dethr= floor _dettime;
_detmin= _dettime- _dethr;
_detmin = (_detmin / 1.66666666666666666666667) * 100;

_detmin = floor _detmin;
_debug= "true";
_countdown=10;
hintSilent format[" Detination time %2:%3",_countdown, _dethr,_detmin];

[_countdown, _dettime, _dethr, _detmin]execvm "bombmiss\countdown.sqf";
