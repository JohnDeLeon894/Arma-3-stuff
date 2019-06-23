////////////////////////////////////////////////////////////////////////////////
//  B2 Heli Door Script v1.06                                                 //
//  Execute from any compatible Helicopter init field:                        //
//  0 = [this] execVM "scripts\b2_heliDoors.sqf";                             //
//                                                                            //
//  Credits:                                                                  //
//    Delta 1 Actual for his Heli Door Open Script                            //
//    DJPorterNZ for CH-49 and Mi-48 fix                                      //
//             UH60M_EP1                                                               //
//  Compatible Aircraft:                                                      //
//    UH-80 Ghost Hawk                                                        //
//    CH-49 Mohawk                                                            //
//    Mi-48 Kajman                                                            //
////////////////////////////////////////////////////////////////////////////////

if (!isServer) exitWith {};

private ["_veh","_alt","_speed"];

_veh = _this select 0;

switch (typeof _veh) do {
	// UH-80 Ghost Hawk
	case "B_Heli_Transport_01_F": {
    while {alive _veh} do {
      sleep 0.5;
      _alt = getPos _veh select 2;
      _speed = (sqrt ((velocity _veh select 0)^2 + (velocity _veh select 1)^2 + (velocity _veh select 2)^2));
      if ((_alt < 8) && (_speed < 12)) then {
        _veh animateDoor ['door_R',1];
        _veh animateDoor ['door_L',1];
      } else {
        _veh animateDoor ['door_R',0];
        _veh animateDoor ['door_L',0];
      };
    };
  };
	// UH-80 Ghost Hawk (Camo)
	case "B_Heli_Transport_01_camo_F": {
    while {alive _veh} do {
      sleep 0.5;
      _alt = getPos _veh select 2;
      _speed = (sqrt ((velocity _veh select 0)^2 + (velocity _veh select 1)^2 + (velocity _veh select 2)^2));
      if ((_alt < 8) && (_speed < 12)) then {
        _veh animateDoor ['door_R',1];
        _veh animateDoor ['door_L',1];
      } else {
        _veh animateDoor ['door_R',0];
        _veh animateDoor ['door_L',0];
      };
    };
  };

  // UH60M_EP1 black hawk
  case "UH60M_EP1": {
    while {alive _veh} do {
      sleep 0.5;
      _alt = getPos _veh select 2;
      _speed = (sqrt ((velocity _veh select 0)^2 + (velocity _veh select 1)^2 + (velocity _veh select 2)^2));
      if ((_alt < 8) && (_speed < 12)) then {
        _veh animateDoor ['door_R',1];
        _veh animateDoor ['door_L',1];
      } else {
        _veh animateDoor ['door_R',0];
        _veh animateDoor ['door_L',0];
      };
    };
  };



    // UH-80 Ghost Hawk (Camo)
  case "B_mas_mar_Heli_Transport_01_F": {
    while {alive _veh} do {
      sleep 0.5;
      _alt = getPos _veh select 2;
      _speed = (sqrt ((velocity _veh select 0)^2 + (velocity _veh select 1)^2 + (velocity _veh select 2)^2));
      if ((_alt < 8) && (_speed < 12)) then {
        _veh animateDoor ['door_R',1];
        _veh animateDoor ['door_L',1];
      } else {
        _veh animateDoor ['door_R',0];
        _veh animateDoor ['door_L',0];
      };
    };
  };
  // CH-49 Mohawk  CH49_Mohawk_FG
  case "I_Heli_Transport_02_F": {
    while {alive _veh} do {
      sleep 0.5;
      _alt = getPos _veh select 2;
      _speed = (sqrt ((velocity _veh select 0)^2 + (velocity _veh select 1)^2 + (velocity _veh select 2)^2));
      if ((_alt < 8) && (_speed < 12)) then {
        _veh animateDoor ['door_back_R',1];
        _veh animateDoor ['door_back_L',1];
        _veh animate ['CargoRamp_Open',1];
      } else {
        _veh animateDoor ['door_back_R',0];
        _veh animateDoor ['door_back_L',0];
        _veh animate ['CargoRamp_Open',0];
      };
    };
  };

  // CH-49 Mohawk  CH49_Mohawk_FG
  case "CH49_Mohawk_FG": {
    while {alive _veh} do {
      sleep 0.5;
      _alt = getPos _veh select 2;
      _speed = (sqrt ((velocity _veh select 0)^2 + (velocity _veh select 1)^2 + (velocity _veh select 2)^2));
      if ((_alt < 8) && (_speed < 12)) then {
        _veh animateDoor ['door_back_R',1];
        _veh animateDoor ['door_back_L',1];
        _veh animate ['CargoRamp_Open',1];
      } else {
        _veh animateDoor ['door_back_R',0];
        _veh animateDoor ['door_back_L',0];
        _veh animate ['CargoRamp_Open',0];
      };
    };
  };

  // Mi-48 Kajman
  case "O_Heli_Attack_02_F": {
    while {alive _veh} do {
      sleep 0.5;
      _alt = getPos _veh select 2;
      _speed = (sqrt ((velocity _veh select 0)^2 + (velocity _veh select 1)^2 + (velocity _veh select 2)^2));
      if ((_alt < 8) && (_speed < 12)) then {
        _veh animateDoor ['door_R',1];
        _veh animateDoor ['door_L',1];
      } else {
        _veh animateDoor ['door_R',0];
        _veh animateDoor ['door_L',0];
      };
    };
  };
  // Mi-48 Kajman (Black)
  case "O_Heli_Attack_02_black_F": {
    while {alive _veh} do {
      sleep 0.5;
      _alt = getPos _veh select 2;
      _speed = (sqrt ((velocity _veh select 0)^2 + (velocity _veh select 1)^2 + (velocity _veh select 2)^2));
      if ((_alt < 8) && (_speed < 12)) then {
        _veh animateDoor ['door_R',1];
        _veh animateDoor ['door_L',1];
      } else {
        _veh animateDoor ['door_R',0];
        _veh animateDoor ['door_L',0];
      };
    };
  };
};