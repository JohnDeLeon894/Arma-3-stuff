// set up chopper evac

hostage = createGroup civilian;
pos = position player;
startpos = position reschop;
evacdest= position reschop;
wp1=[];
wp2=[];
wp3=[];
[] execVM "hosmiss\reszone.sqf";
if !(canmove reschop) exitWith {
	hosarr join group player;
	hint "the rescue chopper is down, you must take the hostages to base your self!";

};
hosarr join grpNull;
hint "hos 1";
hosarr join hostage;
hint "hos 2";
wp1=  waypoints resgrp select 2;
hint "hos 3";

wp1 setWaypointPosition [position player, 10];
c=true;
sleep 10;

hint "hos 4";
hwp = hostage addWaypoint [waypointPosition wp1, 1];

hwp setWaypointType "GETIN";

hwp setWaypointBehaviour "CARELESS";

hwp synchronizeWaypoint [wp1];
hint "hos 5";
waitUntil {reschop distance pow_1 < 5};

sleep 10;
hint "hos 6";
if !(canmove reschop) exitWith {
	hosarr join group player;
	hint "the rescue chopper is down, you must take the hostages to base your self!";

};
hosarr join resgrp;

[]execVM "hosmiss\secondary_task.sqf";

