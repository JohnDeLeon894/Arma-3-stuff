d20 = (random 20) + evtries;
this = _this select 0;

if (d20 > 17) then {

		hint "evidence found, location of hostage marked on map.";

		mrkr setMarkerShape "ICON";
		mrkr setMarkerType "hd_objective";
		mrkr setmarkercolor "ColorRed";
		mrkr setMarkerText format ["hostage location"];
		mrkr setMarkerSize [1, 1];

		Host2 = player createSimpleTask ["Rescue the hostages"];
		Host2 setSimpleTaskDescription ["Thanks to the intel located from the insurgent cell, we now have the location of the hostages. Go to them and bring them home. ", "hostages found", ""];
		Host1 setTaskState "Succeeded";
		["TaskAssigned",["Rescue Hostages","Rescue Hostages"]] call bis_fnc_showNotification;
		[]execVM "hosmiss\hoschck.sqf";

}
else
{

hint "No evidence found on this one";
//hint format ["%1 + %2 <br \> No evidence found on this one", d20, evtries];
evtries=evtries + 1;
};

this removeAction search;



