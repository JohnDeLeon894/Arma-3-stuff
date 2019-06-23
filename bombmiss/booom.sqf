

_pos= getpos tbomb;
_posx=_pos select 0;
_posy= _pos select 1;
_pos1= [(_posx + random 5),( _posy +  random 5) ];
_pos2= [(_posx + random 5),(_posy - random 5)];
_pos3= [(_posx - random 5),(_posy + random 5)];
_pos4= [(_posx -random 5),(_posy - random 5)];



_ammo = [
"Bo_GBU12_LGB_MI10",

"HelicopterExploBig",
"Bo_GBU12_LGB",
"Bo_Mk82",
"HelicopterExploBig",
"Bo_Mk82",
"Bo_Mk82",
"Bo_GBU12_LGB_MI10",

"HelicopterExploBig",
"Bo_GBU12_LGB"
];

_bomb = _ammo call BIS_fnc_selectRandom;
bomb = _bomb createvehicle _pos;
sleep 0.1;
_bomb = _ammo call BIS_fnc_selectRandom;
bomb = _bomb createvehicle _pos1;
_bomb = _ammo call BIS_fnc_selectRandom;
sleep 0.1;
bomb = _bomb createvehicle _pos2;
_bomb = _ammo call BIS_fnc_selectRandom;
sleep 0.1;
bomb = _bomb createvehicle _pos3;
_bomb = _ammo call BIS_fnc_selectRandom;
sleep 0.1;
bomb = _bomb createvehicle _pos4;

_pos1= [(_posx + random 5) +10,( _posy +  random 5)+10];
_pos2= [(_posx + random 5)+10,(_posy - random 5)-10];
_pos3= [(_posx - random 5)-10,(_posy + random 5)+10];
_pos4= [(_posx -random 5)-10,(_posy - random 5)-10];

_bomb = _ammo call BIS_fnc_selectRandom;
//bomb = _bomb createvehicle _pos;
sleep 0.1;
_bomb = _ammo call BIS_fnc_selectRandom;
bomb = _bomb createvehicle _pos1;
_bomb = _ammo call BIS_fnc_selectRandom;
sleep 0.1;
bomb = _bomb createvehicle _pos2;
_bomb = _ammo call BIS_fnc_selectRandom;
sleep 0.1;
bomb = _bomb createvehicle _pos3;
_bomb = _ammo call BIS_fnc_selectRandom;
sleep 0.1;
bomb = _bomb createvehicle _pos4;

_pos1= [(_posx + random 5)+15,( _posy +  random 5) +15];
_pos2= [(_posx + random 5)+15,(_posy - random 5)-15];
_pos3= [(_posx - random 5)-15,(_posy + random 5)+15];
_pos4= [(_posx -random 5)-15,(_posy - random 5)-15];

_bomb = _ammo call BIS_fnc_selectRandom;
//bomb = _bomb createvehicle _pos;
sleep 0.1;
_bomb = _ammo call BIS_fnc_selectRandom;
bomb = _bomb createvehicle _pos1;
_bomb = _ammo call BIS_fnc_selectRandom;
sleep 0.1;
bomb = _bomb createvehicle _pos2;
_bomb = _ammo call BIS_fnc_selectRandom;
sleep 0.1;
bomb = _bomb createvehicle _pos3;
_bomb = _ammo call BIS_fnc_selectRandom;
sleep 0.1;
bomb = _bomb createvehicle _pos4;

_pos1= [(_posx + random 5)+20,( _posy +  random 5)+20 ];
_pos2= [(_posx + random 5)+20,(_posy - random 5)-20];
_pos3= [(_posx - random 5)-20,(_posy + random 5)+20];
_pos4= [(_posx -random 5)-20,(_posy - random 5)-20];

_bomb = _ammo call BIS_fnc_selectRandom;
//bomb = _bomb createvehicle _pos;
sleep 0.1;
_bomb = _ammo call BIS_fnc_selectRandom;
bomb = _bomb createvehicle _pos1;
_bomb = _ammo call BIS_fnc_selectRandom;
sleep 0.1;
bomb = _bomb createvehicle _pos2;
_bomb = _ammo call BIS_fnc_selectRandom;
sleep 0.1;
bomb = _bomb createvehicle _pos3;
_bomb = _ammo call BIS_fnc_selectRandom;
sleep 0.1;
bomb = _bomb createvehicle _pos4;



//[tbomb, 5, time, false, true ] spawn BIS_Effects_Burn;
engroup=[];
missdone=1;
failed = 1;
[]execVM "miss_end.sqf";

if (isnil ("bombmiss2"))
	then{
	bombmiss setTaskState "failed";
["TaskFailed",["deactivated bomb","You failed. Maybe there was just nothing that we could do. "]] call bis_fnc_showNotification;

	}
else {
bombmiss2 setTaskState "failed";
["TaskFailed",["deactivated bomb","You failed. Maybe there was just nothing that we could do. "]] call bis_fnc_showNotification;
};


[]execVM "bombmiss\secondary_task.sqf";
