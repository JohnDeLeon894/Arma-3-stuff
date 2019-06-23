_n= {alive _x} count hosarr;

if (_n <1) then
{
	// Created in A2B Editor by EMSI
	missdone=1;
	mstate=0;
	Host2 setTaskState "Failed";
	["TaskFailed",["Rescue Hostages","Hostages are all dead"]] call bis_fnc_showNotification;
	failed = 1;
	[]execVM "miss_end.sqf";
	[]execVM "bombmiss\secondary_task.sqf";
}

else
{
	sleep 10;
	[]execvm "hosmiss\hoschck.sqf";

}