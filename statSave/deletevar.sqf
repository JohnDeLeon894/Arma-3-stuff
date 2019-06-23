//deletevar.sqf
// this deletes the variables that were saved once the mission is fully complete and erase the server id variable.

	fn_DeleteVar =
{
	_varName = _this Select 0;
	_varValue = nil;
	profileNameSpace setVariable [_varName + serverID,_varValue];

};


	["positionPlayer", getPosATL player] call fn_DeleteVar;
	["directionPlayer", direction player] call fn_DeleteVar;
	["gogglesPlayer", goggles player] call fn_DeleteVar;
	["vestPlayer", vest player] call fn_DeleteVar;
	["outfit", uniform player] call fn_DeleteVar;
	["hat", headGear player] call fn_DeleteVar;
	["weaponsPlayer", weapons player] call fn_DeleteVar;
	["magazinesPlayer", magazines player] call fn_DeleteVar;
	["itemsPlayer", items player] call fn_DeleteVar;
	["backpackPlayer", backpack player] call fn_DeleteVar;
	["misspos", misspos] call fn_DeleteVar;
	["enmoral", enemymoral] call fn_DeleteVar;
	["date", date] call fn_DeleteVar;
	["overcast", overcast] call fn_DeleteVar;
	profileNameSpace setVariable ["SS_ServerID",nil];