/*
*	Author: CAPTNCAPS
* 	Version: 1.1
*	Special Thanks to: TeamProSkill for being my clan!
*
*	Please notify me if you make any changes so that I can make them official!
*
*/


	_heli = _this select 0;

	if((damage _heli) > 0.2 || !canMove _heli) then {				//0.2 is easily achieved with 1 Titan Shot. 0.5 is not
	_heli setDamage 0.85;
	_heli allowDamage false;
	_heli setHitPointDamage ["HitVRotor", 1];
	_fire = "test_EmptyObjectForSmoke" createVehicle position _heli;
	_fire attachTo [_heli,[0,-5,0]];
	_heli vehicleChat "Shit we are hit! We are going down!";			//put your message here, or delete if you don't like
	sleep 20;
	_heli setFuel 0;
	_fire2 = "test_EmptyObjectForFireBig" createVehicle position _heli;
	_fire2 attachTo [_heli,[0.2,0.5,0.5]];
	_heli vehicleChat "The Engine is destroyed! We are crashing!";		//put your message here, or delete if you don't like
	sleep 65;
	_heli setDamage 1;													//explodes the helicopter after 25 seconds of burning
	sleep 600;
	deleteVehicle _fire;												//stops the smoke after 5 minutes
	deleteVehicle _fire2;												//stops the fire after 5 minutes
	deleteVehicle _heli;

	};