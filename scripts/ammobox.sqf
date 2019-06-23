// adds inventory to ammo boxes

_unit= ammobox01



	for "_i" from 1 to 100 do {_unit additem "30Rnd_556x45_Stanag";};
	for "_i" from 1 to 20 do {_unit additem "30Rnd_556x45_Stanag_Tracer_Red";};
	for "_i" from 1 to 20 do {_unit additem "20Rnd_mas_762x51_Stanag";};
	for "_i" from 1 to 20 do {_unit additem "5Rnd_mas_127x99_Stanag";};

	for	"_i" from 1 to 20 do{	_unit additem "NVGoggles_OPFOR";};

	for "_i" from 1 to 100 do {_unit additem "200Rnd_mas_556x45_Stanag";};
		for "_i" from 1 to 100 do {_unit additem "100Rnd_mas_762x51_Stanag";};