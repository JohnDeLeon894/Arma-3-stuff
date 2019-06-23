_pwep = [];
_pwepmag="";
{
	_pwep= primaryweaponmagazine _x;
	_pwepmag=_pwep select 0;
	hint _pwepmag;
	_x addmagazines [_pwepmag, 6];
	sleep 1;
} foreach units group player;
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	