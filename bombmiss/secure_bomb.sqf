// secure he hostage and have them follow you.

_resc = _this select 0;


bombmiss2 setTaskState "Succeeded";
["Succeeded",["deactivated bomb","You have deactivated the bomb in time!"]] call bis_fnc_showNotification;
missdone=1;
mstate=0;
defused=1;
_resc removeAction search;
engroup=[];
sleep 10;
[]execVM "miss_end.sqf";

[]execVM "bombmiss\secondary_task.sqf";
