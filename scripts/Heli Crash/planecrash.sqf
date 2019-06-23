/*
*	Author: CAPTNCAPS
* 	Version: 1.1
*	Special Thanks to: TeamProSkill for being my clan!
*
*	Please notify me if you make any changes so that I can make them official!
*
*/

	_plane = _this select 0; 												// 0=[this]execVM "planecrash.sqf";

	if((damage _plane) > 0.2 || !canMove _plane) then {									//0.2 is easily achieved with 1 Titan Shot. 0.5 is not
	_plane setDamage 0.85;
	_plane allowDamage false;
	_fire = "test_EmptyObjectForFireBig" createVehicle position _plane;
	_fire attachTo [_plane,[0,-3,0]];
	sleep 30;
	_plane setFuel 0;
	sleep 120;
	_plane setDamage 1;													//explodes the plane after 2 Minutes of burning
	sleep 600;
	deleteVehicle _fire;												//stops the smoke after 5 minutes
	deleteVehicle _fire2;												//stops the fire after 5 minutes
	deleteVehicle _plane;

	};