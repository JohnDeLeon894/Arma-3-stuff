/*********************************************************************
 *
 * FUNCTION: TL_killCounter
 *
 * @description		A simple kill counter
 * @author 			TechLethal
 * @website 		http://www.techlethal.com
 * @version 		1.0
 *
 *********************************************************************
 *
 * USAGE:
 * execVM "TL_killCounter.sqf";
 *
 * Note: Currently only works with single player missions
 *
 ********************************************************************/

// Set kill count to zero
TL_killCount = 0;	

/**
 * FUNCTION
 * Increment kill count and display kill count to player
 */
TL_fnc_updateKillCount = {

	// Increment the kill count
	TL_killCount = TL_killCount + 1;

	// Display the player's new kill count
	if(TL_killCount == 1) then {
		hint format["You have %1 kill", TL_killCount];	// Singular message
	}
	else {
		hint format["You have %1 kills", TL_killCount]; // Plural message
	};

};	

/**
 * FUNCTION
 * Called when enemy unit dies
 */
TL_fnc_enemyKilled = {

	_victim = _this select 0;
	_attacker = _this select 1;

	// Only increase the kill count if the kill was made by the player
	if(_attacker == player) then {
		call TL_fnc_updateKillCount;
	};

};

/*
 * Add an event to all OPFOR enemy units that calls our
 * enemyKilled function when the unit is killed.
 */
{
	if(side _x == EAST && _x isKindOf "Man") then {
		_x addEventHandler ["killed", { _this call TL_fnc_enemyKilled } ];
	};
} foreach allUnits;

// Add event handler to reset the player's kill count when they die
player addEventHandler ["killed", { TL_killCount = 0 }]; 