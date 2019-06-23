//-------------   By  Grenadier [ITF]  ---------// ver. 1.4

/*
null=[1,true,true,[150,200,300],Tgren,[75,100,150],true] execVM "RandomSpawnTown.sqf";

 Significato  [cycle,unit_building,vehicle,ray,nameTrigger,Radius_Patrol] execVM "RandomSpawnTown.sqf";

	cycle 			= ciclo di attivazione script - cycle optimization script
	unit_building 	= attiva e disattiva (true/false) il posizionamento delle unità negli edifici - activates and deactivates (true / false) the positioning of units in buildings
	vehicle			= true spawona veicoli - true spawn vehicle
	radius			= possibilità di scegliere il raggio minimo-medio-massimo di spawn unità in base alla dimensione della città - Possibility to choose the minimal-medium-maximum radius of spawn units according to the size of the city.
	nameTrigger		= Metti lo stesso none del trigger - Put the same name as the trigger
	Radius_Patrol	= Raggio random min-med-max di pattugliamento - Min-med-max random patrol radius
	HelicopterP		= se true spawna 1'elicottero di pattuglia - If true spawn helicopter patrol

-----------------------------------------------------------------------EN

spawning random enemy units in the predetermined range
Requires CBA.
PS if you use this addaction DO NOT insert isServer

-----------------------------------------------------------------------IT

spawna unità nemiche random nel range prefissato
d'azione dell'unità che lo attiva
Richiede CBA
PS se si usa in this addaction NON inserire isServer

=====================================================================
*/
hint "start";
		if (isServer) then
		{
	_bluNums = west countSide allPlayers;

//rapporto limit con Nonmuovere e DecMezzo, per avere maggiore equilibrio, 5/1.
_Origine		=	0;
_limit			= _this select 0;
_ActiveFH 		= _this select 1;
_Use_Mezzo		= _this select 2;
_Ray_action	 	= _this select 3;
_nameTrigger	= _this select 4;
_Radius_Patrol	= _this select 5;
_HelicopterP	= _this select 6;
_TypeAirFly		= "O_Heli_Attack_02_dynamicLoadout_F";	// Class vehicle

//==================================================================

_limit 			= _limit*_bluNums;
_limit_vehicle 	= [(_limit/3)+2,0] call BIS_fnc_cutDecimals;

//==================================================================

_Tgren	= _nameTrigger;
_pos 	= getMarkerPos _Tgren;

_prova=0;
_prova1=0;
_CountHeli=0;

hint "check ";
//-------------------------Heli Patrol

	if (_HelicopterP && _CountHeli==0) then
	{

	HeliPatrol = createVehicle [_TypeAirFly, [0,0,0], [], 0, "FLY"];
	createVehicleCrew HeliPatrol;
	_CountHeli=1;
	[HeliPatrol, _Tgren, 1000, 5, "MOVE", "SAFE", "YELLOW", "NORMAL", "STAG COLUMN", "HeliPatrol spawn CBA_fnc_searchNearby", [3,6,9]] call CBA_fnc_taskPatrol;
	sleep 1;

	trgHeliF = createTrigger ["EmptyDetector", [0,0,0]];
	trgHeliF setTriggerArea [0,0,0,false];
	trgHeliF setTriggerActivation ["NONE","PRESENT",true];
	trgHeliF setTriggerStatements ["!(isNil 'HeliPatrol') && fuel vehicle HeliPatrol < 0.2","HeliPatrol setFuel 1; hint 'pieno fatto'",""];

	};


	///////////////////////////------------
hint "check 2";
While {_Origine<_limit} do
	{

		_Raggio = floor random _Radius_Patrol; //raggio pattugliamento gruppi-ray patrol groups
		_SpawnRaggio	= _Raggio;//random [50,100,120];
	_SpawnGradi 	= floor random 360;

	_DecMezzo 	=	floor random _limit_vehicle; //creazione casuale mezzi-random vehicle creation
	_DecEdifici = 	floor random 3; // casuale posizionamento unità in edifici-random units positioning in buildings
	_Stanza 	=	floor random 3; //livello posizionamento unità nell'edificio-positioning unit level in the building
	_NonMuovere =	floor random 3; //decide a random chi deve pattugliare o no-decides to random who has to patrol or not
	//_EnemyPos = ["M1"] call BIS_fnc_selectRandom; //aggiungi quanti indicatore vuoti desideri per localizzare diversi spawn-add as many blank indicator as you want to locate different spawns.

	//_pos=getmarkerpos "M1";

	_random_road = floor random _Ray_action;
	_roadList 	 = _pos nearroads _random_road;
	_roadlist 	 =_roadlist call BIS_fnc_arrayShuffle;

	_Count_WP = (count _roadList);
	//hint format["conta; %1", _Count_WP];

		//if (_Count_WP==0) then {_currentRoad =_roadlist select} else {_currentRoad =_roadlist select floor random _Count_WP;};

	//
	_currentRoad =_roadlist select floor random _Count_WP;
	//_roadConnectedTo = roadsConnectedTo _currentRoad;
	//_connectedRoad 	 = _roadConnectedTo select 0;

	_myGroup = createGroup independent;
	{
	_soldierName = _x select 0;
	_soldierRank = _x select 1;

	_position = [/*getMarkerPos _EnemyPos*/getPos _currentRoad, _SpawnRaggio, _SpawnGradi] call BIS_fnc_relPos;
	_soldato = ["I_C_Soldier_Bandit_1_F","I_C_Soldier_Bandit_2_F","I_C_Soldier_Bandit_3_F","I_C_Soldier_Bandit_4_F","I_C_Soldier_Bandit_5_F","I_C_Soldier_Bandit_6_F","I_C_Soldier_Bandit_7_F","I_C_Soldier_Bandit_8_F"] call BIS_fnc_selectRandom;
	_tempSoldier = _myGroup createUnit [ _soldato, _position, [], 0, "FORM" ];
	_tempSoldier setRank _soldierRank;
	_tempSoldier setVehicleVarName _soldierName;
	missionNamespace setVariable [ _soldierName, _tempSoldier ];
	publicVariable _soldierName;
	}forEach [
	[ "soldier1", "SERGEANT" ],
	[ "soldier2", "PRIVATE" ]

	];

		hint "check 3";					//player sidechat format["numero: %1", _DecEdifici];
	if (_DecMezzo ==0 && _Use_Mezzo) then {
		_veicolo = ["I_C_Offroad_02_unarmed_F", "I_C_Offroad_02_unarmed_brown_F","O_G_Offroad_01_armed_F"] call BIS_fnc_selectRandom;

								// crea veicolo e l'equipaggio sale
		_Raggio =_Raggio *5;	//random [400,500,600];//raggio pattugliamento mezzi-ray patrol vehicle
		_truck = _veicolo createVehicle getPos _currentRoad;
		//_truck setVehicleLock "LOCKED";
		soldier1 moveInDriver _truck;
		soldier2 moveInCargo _truck;
		soldier2 assignAsGunner _truck;

		};

		/* / crea il vest per le unità da spawnare-create the vest for the units to spawn
	{ 	// forEach

		//for "_i" from 1 to 2 do {_x addItemToUniform "30Rnd_65x39_caseless_green";};
		//_x addItemToUniform "Chemlight_red";
		//_x addVest "V_TacVest_khk";
		//for "_i" from 1 to 3 do {_x addItemToVest "30Rnd_65x39_caseless_green";};
		//for "_i" from 1 to 2 do {_x addItemToVest "16Rnd_9x21_Mag";};
		//_x unassignItem "NVGoggles";
		//_x removeItem "NVGoggles";
		//_x addPrimaryWeaponItem "acc_flashlight";
		//_x enableGunLights "forceOn";

	} foreach (units _mygroup);
		*/
		hint "check 4";
	if ((_ActiveFH) AND (_DecEdifici==0) AND !(_DecMezzo ==0)) then {
		doStop [soldier1, soldier2];

	//////////////////////////////////////////////

	_positionH = getPos soldier1;
	_house = nearestBuilding soldier1;
	_x = 0;
	hint "check 5";
	while { format ["%1", _house buildingPos _x] != "[0,0,0]" } do {_x = _x + 1};
	_x = _x - 1;

	soldier1 setPos (_house buildingPos (random _x));
	soldier2 setPos (_house buildingPos (random _x));

		//	hint format["conta; %1", _minNumberOfPositions];
		//soldier1 setposATL (nearestBuilding soldier1 buildingPos _Stanza);
		//soldier2 setposATL (nearestBuilding soldier2 buildingPos _Stanza+1);

	/////////////////////////////////////////////

		// /*
			_prova=_prova+1;
		//hint format ["conta; %1", _prova];
		_txt1=format ["RoadPos:%1",_prova];
		_debug1=createMarker [_txt1, soldier1];
		_debug1 setMarkerShape "ICON";
		_debug1 setMarkerType "hd_dot";
		_debug1  setMarkerColor "ColorRed";
		//-------------------------*/
		} else{
						if (_NonMuovere ==1) then {}
					else {
	[_mygroup, _mygroup, _Raggio, 7, "MOVE", "SAFE", "YELLOW", "LIMITED", "STAG COLUMN", "soldier1 spawn CBA_fnc_searchNearby", [3,6,9]] call CBA_fnc_taskPatrol;
						};
						};
				_Origine=_Origine+1;
				sleep 1;
				engroup= engroup + units _mygroup;

}; //parentesi collegata al ciclo


		};


rspwn=1;