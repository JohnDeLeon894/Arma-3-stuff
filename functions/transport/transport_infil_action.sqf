private _transport = _this select 0;

waitUntil {{_x in _transport} count units group player == 0};

_transport move getMarkerPos 'rtz';

waitUntil {unitReady _transport};

if (unitReady _transport) then
 { 
	hint "landing";
	// hellcat_6 land "land";
	sleep 30;
	hint format['%1 ready for nextmission', _transport];
	[_transport]execVM "functions\transport\transportAddAction.sqf";
	_transport setVariable["onMission", false];
};