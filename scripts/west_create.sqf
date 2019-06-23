// Get the crate parameter given
_crate = _this select 0;

// Remove the stock items from the crate
clearMagazineCargo _crate;
clearWeaponCargo _crate;

//Add the items to the crate
_crate addMagazineCargo ["30Rnd_556x45_Stanag",150];
_crate addMagazineCargo ["SmokeShell", 50];
_crate addMagazineCargo ["HandGrenade", 60];
_crate addMagazineCargo ["16Rnd_9x21_Mag",100];
_crate addMagazineCargo ["30Rnd_556x45_Stanag_Tracer_Red", 50];
_crate addMagazineCargo ["20Rnd_mas_762x51_Stanag", 50];
_crate addMagazineCargo ["20Rnd_mas_762x51_T_Stanag", 50];
_crate addMagazineCargo ["5Rnd_mas_127x99_Stanag", 50];
_crate addMagazineCargo ["100Rnd_mas_762x51_Stanag", 50];
_crate addMagazineCargo ["200Rnd_mas_556x45_Stanag", 50];
_creat addWeaponCargo ["mas_launch_M136_F", 5];
_creat addWeaponCargo ["arifle_mas_hk416", 5];
_creat addWeaponCargo ["arifle_mas_hk416_t", 5];
_creat addWeaponCargo ["arifle_mas_hk416_h", 5];
_creat addWeaponCargo ["arifle_mas_hk416_a", 5];
_creat addWeaponCargo ["arifle_mas_hk416_e", 5];
_creat addWeaponCargo ["arifle_mas_hk416_gl",  5];
_creat addWeaponCargo ["arifle_mas_hk416_gl_t",  5];
_creat addWeaponCargo ["arifle_mas_hk416_gl_h", 5];
_creat addWeaponCargo ["arifle_mas_hk416_gl_a", 5];
_creat addWeaponCargo "arifle_mas_hk416_gl_e", 5];
//_creat addWeaponCargo [5];



Exit
