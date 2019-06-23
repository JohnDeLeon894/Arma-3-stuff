
;//Status.sqf
;//by John D.
;//this script takes the distance of the chopper from player and gives a percentage of the enemy moral. It is a simple status report for player.

private ["_chdist","_den","_num","_perc"];
_perc = 0;
_num = 0;
_chdist = 0;
_den = 0;


_chdist=round (chalk1 distance player);
_den= moralbase;
_num =  enemymoral;
_perc= round ((_num/_den)*100);

if ( ! enemymoral > 50) exitWith { hint format ["Chalk is %1 meters away. enemy moral is at %2. Troop streangth is at %3. Player kill count is %4. unit kill count is at %5. ******Debug %6********", _chdist, 0, toonsize, PK, uk, enemymoral];};


 hint format ["Chalk is %1 meters away. enemy moral is at %2. Troop streangth is at %3. Player kill count is %4. unit kill count is at %5. Debug %6", _chdist, _perc, toonsize, PK, uk,enemymoral];

