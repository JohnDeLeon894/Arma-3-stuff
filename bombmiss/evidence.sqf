d20 = (random 20) + evtries;
_unit = _this select 0;
_caller = _this select 1;
_aid = _this select 2;
_sname= name player;
_sname2 = name _caller;

if (d20 > 19) then {

		hint "evidence found, location of bomb marked on map.";

		mrkr setMarkerShape "ICON";
		mrkr setMarkerType "hd_objective";
		mrkr setmarkercolor "ColorRed";
		mrkr setMarkerText format ["Bomb Position"];
		mrkr setMarkerSize [1, 1];

		bombmiss2 = player createSimpleTask ["deactivate bomb"];
		bombmiss2 setSimpleTaskDescription ["Thanks to the intel located from the insurgent cell, we now have the location of the bomb. Go to it and render it harmless. ", "deactivate bomb", ""];
		Bombmiss setTaskState "Succeeded";

		["TaskAssigned",["deactivate bomb","deactivate bomb"]] call bis_fnc_showNotification;

		{
			if(side _x == EAST && _x isKindOf "Man") then
			{
				removeAllActions _x ;
				_x removeAction search;
			};
		} foreach allUnits;

}
else
{

;hint "No evidence found on this one";
//hint format ["%1 + %2 <br \> No evidence found on this one", d20, evtries];
evtries = evtries +1;

};

_unit removeAction _aid;

//hint format ["does %1 = %2 ?", _sname, _sname2];

