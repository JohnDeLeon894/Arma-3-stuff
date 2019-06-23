while {true} do {

    _heli = player nearEntities ["Helicopter", 2000]; // nearEntities is better for performance, keep the radius to a minimum
	_plane = player nearEntities ["Plane",2000];

    if ((count _heli) > 0) then { // Anything found at all?
        {
            if (isNil {_x getVariable "eh_assigned"}) then {
				_x setVariable ["eh_assigned", true];
				_x addEventHandler ["Hit", { 0 = [(_this select 0)] execVM "scripts\Heli Crash\helicrash.sqf"; }];
			};
        } forEach _heli;
    };
	if ((count _plane) > 0) then { // Anything found at all?
        {
            if (isNil {_x getVariable "eh_assigned"}) then {
				_x setVariable ["eh_assigned", true];
				_x addEventHandler ["Hit", { 0 = [(_this select 0)] execVM "scripts\Heli Crash\planecrash.sqf"; }];
			};
        } forEach _plane;
    };
    sleep 10;

};