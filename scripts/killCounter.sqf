


count_kills =
	{

	_killed = _this select 0;
	_killer= _this select 1;
	_kgroup= group player;
	if (_killer in  units _kgroup) then { UK= UK + 1};
	if (_killer == player) then {PK= PK +1};
	hint format ["uk = %1 <br /> PK = %2", UK, PK];



	};


{
	if(side _x == EAST && _x isKindOf "Man") then {
		_x addEventHandler ["killed", { enemymoral=  enemymoral - 5; _this call count_kills} ];
	};
} foreach allUnits;