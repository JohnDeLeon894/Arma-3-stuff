//This is the loop that continuously spawns soldiers until continueLoop = false

if (!continueLoop) exitWith {
	hint 'loop stopped'
};
//declare groups to count

try{
	{
		// Current result is saved in variable _x
		private _count = {alive _x} count units _x;
		private _marker = EAST_POSITIONS call BIS_fnc_selectRandom;
		private _location = markerPos _marker;
		hint format ['%1 living units in group %2', _count, _x];
		private _results =  [_x, (6 - _count), Isis_units, EAST_SPAWN] call  jMD_fnc_spawnGroups;
		private _waypoints = [_x, 200, _location, true, true] call jMD_fnc_deleteAndSetWaypoints;
	} forEach enemyGroupArray;
}
catch{
	hint str _exception;
};

{
	// Current result is saved in variable _x
	scopeName "unitSpawn";
	private _groupSize = 8; // desired size of each group
	private _count = {alive _x}count units _x;
	private _group = _x;
	private _routArray = [ROUT_ONE, ROUT_TWO, ROUT_THREE] call BIS_fnc_selectRandom;
	hint format ['%1 living units in group %2', _count, _x];
	private _results =  [_group, (_groupSize - _count), bluforUnits, WEST_SPAWN] call  jMD_fnc_spawnGroups;

	while { ( {alive _x}count units _group) < _groupSize } do {
		private _timer = 0;
		private _count = {alive _x}count units _group;
		private _results =  [_group, (_groupSize - _count), bluforUnits, WEST_SPAWN] call  jMD_fnc_spawnGroups;
		if (_timer > 255) then { breakTo "unitSpawn"};
	};
	if (count waypoints _x < 2) then {
		{
			private _loc = markerPos _x;
			private _waypoints = [_group, 50, _loc, false, false] call jMD_fnc_deleteAndSetWaypoints;
		}forEach _routArray;
		private _waypoints = [_group, 100, EAST_SPAWN, false, false] call jMD_fnc_deleteAndSetWaypoints;
	};
	if (doOnce < count friendlyGroupArray) then {
		_x setBehaviour "SAFE";
		doOnce = doOnce +1;
		friendlyGroupArray deleteAt (friendlyGroupArray find group player);
	};
} forEach friendlyGroupArray;

sleep 900;

[] spawn jMD_fnc_spawnLoop;