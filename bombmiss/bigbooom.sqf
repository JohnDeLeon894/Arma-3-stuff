
/*
_pos= getpos tbomb;



bomb = "bo_gbu12_lgb" createvehicle getpos tbomb;
sleep 0.1;
bomb = "bo_gbu12_lgb" createvehicle getpos tbomb;
sleep 0.1;
bomb = "bo_gbu12_lgb" createvehicle getpos tbomb;
sleep 0.1;
bomb = "bo_gbu12_lgb" createvehicle getpos tbomb;



*/

//bigboom.sqf
//===============================
//player sideChat "triggered"; // turn it on just for debug

_pos= getpos tbomb;

_area = [tbomb];

_ammo = [
"Bo_GBU12_LGB_MI10",
"Sh_120_HE",
"HelicopterExploBig",
"Bo_GBU12_LGB",
"Bo_Mk82",
"HelicopterExploBig",
"Bo_Mk82",
"Bo_Mk82",
"Bo_GBU12_LGB_MI10",
"Sh_120_HE",
"HelicopterExploBig",
"Bo_GBU12_LGB"
];

_count = 0;
for "_i" from 0 to (count _ammo) do {
for "_j" from 0 to 1 do {
switch (_j) do
{ case 0: {if (random 1 == 1) then {_xVel = -1*_xVel }};
case 1: {if (random 1 == 1) then {_yVel = -1*_yVel }};
};
};
 _chosen = (_ammo select _i);
{ _xVel = random 10;
_yVel = random 10;
_zVel = random 20;
_xCoord = random 15;
_yCoord = random 15;
_zCoord = random 5;
_bomb = _chosen createVehicle getpos _x;
_bomb setPos [(getPos _bomb select 0)+_xCoord,(getPos _bomb select 1)+_yCoord, _zCoord*_i];
_bomb setVelocity [_xVel,_yVel,_zVel-50];
} forEach _area; sleep 0.1;
addCamShake [1+random 5,1+random 3, 5+random 15];
};

//destroying target
//_houses = ["house1","house2","etc."];
//{_x setDamage 1} forEach _houses;

//===============================