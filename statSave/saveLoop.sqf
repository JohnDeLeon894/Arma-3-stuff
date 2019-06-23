//ADD STATS YOU WANT TO CONTINUOUSLY SAVE, HERE
//edit, changed to a onetime save that can be called when needed rather than being updated all the time.
//waitUntil {!isNil "statsLoaded"};
//while {true} do
//{
//	sleep 1;

	//["positionPlayer", getPosATL player] call fn_SaveStat;
	//["directionPlayer", direction player] call fn_SaveStat;
//	["gogglesPlayer", goggles player] call fn_SaveStat;
//	["vestPlayer", vest player] call fn_SaveStat;
//	["outfit", uniform player] call fn_SaveStat;
//	["hat", headGear player] call fn_SaveStat;
//	["weaponsPlayer", weapons player] call fn_SaveStat;
//	["magazinesPlayer", magazines player] call fn_SaveStat;
//	["itemsPlayer", items player] call fn_SaveStat;
//	["backpackPlayer", backpack player] call fn_SaveStat;
	//["misspos", misspos] call fn_SaveStat;
	["enmoral", enemymoral] call fn_SaveStat;
	["date", date] call fn_SaveStat;
	["overcast", overcast] call fn_SaveStat;
	saved = 1;
//};
