exitWith {};

maface="";
mavox="";
_soltype= _this select 0;
_soldier= _this select 1;

_patch= us_patches select random patchcount;

PLYRwepset={
	// "Exported from Arsenal by John";
	_unit= _this select 0;
	//hint "func 1 called";
	// "Exported from Arsenal by John";

	// "Remove existing items";
	removeAllWeapons _unit;
	removeAllItems _unit;
	removeAllAssignedItems _unit;
	removeUniform _unit;
	removeVest _unit;
	removeBackpack _unit;
	removeHeadgear _unit;
	//removeGoggles _unit;

	// "Add containers";
	_unit forceAddUniform "U_mas_mar_B_IndUniform2_v";
	_unit addItemToUniform "FirstAidKit";
	_unit addItemToUniform "Chemlight_green";
	for "_i" from 1 to 5 do {_unit addItemToUniform "30Rnd_556x45_Stanag";};
	_unit addVest "V_mas_usn_PlateCarrier2_rgr_g";
	_unit addItemToVest "FirstAidKit";
	_unit addItemToVest "acc_flashlight";
	for "_i" from 1 to 2 do {_unit addItemToVest "B_IR_Grenade";};
	for "_i" from 1 to 2 do {_unit addItemToVest "30Rnd_556x45_Stanag";};
	for "_i" from 1 to 3 do {_unit addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";};
	for "_i" from 1 to 3 do {_unit addItemToVest "16Rnd_9x21_Mag";};
	_unit addBackpack "B_mas_Kitbag_mul";
	for "_i" from 1 to 3 do {_unit addItemToBackpack "FirstAidKit";};
	for "_i" from 1 to 6 do {_unit addItemToBackpack "rhs_mag_m67";};
	_unit addHeadgear "H_mas_mar_helmetv_us";

	// "Add weapons";
	_unit addWeapon "arifle_mas_m4c_H";
	//_unit addPrimaryWeaponItem "rhsusf_acc_ACOG";
	_unit addWeapon "hgun_P07_F";
	_unit addWeapon "Laserdesignator";

	// "Add items";
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
	_unit linkItem "ItemRadio";
	_unit linkItem "ItemGPS";
	//_unit linkItem "rhsusf_ANPVS_15";


	[_unit,_patch] call bis_fnc_setUnitInsignia;


	};

TL_wepset={

	// "Exported from Arsenal by John";
	_unit= _this select 0;
	// "Remove existing items";
	removeAllWeapons _unit;
	removeAllItems _unit;
	removeAllAssignedItems _unit;
	removeUniform _unit;
	removeVest _unit;
	removeBackpack _unit;
	removeHeadgear _unit;
	//removeGoggles _unit;

	// "Add containers";
	_unit forceAddUniform "U_mas_mar_B_IndUniform2_v";
	_unit addItemToUniform "FirstAidKit";
	_unit addItemToUniform "Chemlight_green";
	for "_i" from 1 to 5 do {_unit addItemToUniform "30Rnd_556x45_Stanag";};
		_unit addVest "V_mas_mar_PlateCarrierGL_rgr_d";
	_unit addItemToVest "FirstAidKit";
	_unit addItemToVest "acc_flashlight";
	for "_i" from 1 to 6 do {_unit addItemToVest "HandGrenade";};
	for "_i" from 1 to 2 do {_unit addItemToVest "B_IR_Grenade";};
	for "_i" from 1 to 2 do {_unit addItemToVest "30Rnd_556x45_Stanag";};
	for "_i" from 1 to 3 do {_unit addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";};
	for "_i" from 1 to 3 do {_unit addItemToVest "16Rnd_9x21_Mag";};
	_unit addBackpack "B_mas_Kitbag_mul";
	for "_i" from 1 to 3 do {_unit addItemToBackpack "FirstAidKit";};
	_unit addHeadgear "H_mas_mar_helmetv_us";

	// "Add weapons";
	_unit addWeapon "arifle_mas_m16_g";
	//_unit addPrimaryWeaponItem "rhsusf_acc_ACOG";
	_unit addWeapon "hgun_P07_F";
	_unit addWeapon "Laserdesignator";

	// "Add items";
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
	_unit linkItem "ItemRadio";
	_unit linkItem "ItemGPS";

	// "Set identity";

	maface= solface select random facecount;
	mavox= solvoice select random voxcount;

	_unit setFace maface;
	_unit setSpeaker mavox;
	[_unit,_patch] call bis_fnc_setUnitInsignia;
	};

GL_wepset={

	// "Exported from Arsenal by John";
	_unit= _this select 0;

	// "Remove existing items";
	removeAllWeapons _unit;
	removeAllItems _unit;
	removeAllAssignedItems _unit;
	//removeUniform _unit;
	//removeVest _unit;
	//removeBackpack _unit;
	//removeHeadgear _unit;
	//removeGoggles _unit;

	// "Add containers";
	//_unit forceAddUniform "U_mas_mar_B_IndUniform2_v";
	_unit addItemToUniform "FirstAidKit";
	_unit addItemToUniform "Chemlight_green";
	_unit addItemToUniform "30Rnd_556x45_Stanag";
	//_unit addVest "V_mas_mar_PlateCarrierGL_rgr_d";
	_unit addItemToVest "FirstAidKit";
	_unit addItemToVest "acc_flashlight";
	for "_i" from 1 to 6 do {_unit addItemToVest "HandGrenade";};
	for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
	for "_i" from 1 to 5 do {_unit addItemToVest "30Rnd_556x45_Stanag";};
	for "_i" from 1 to 2 do {_unit addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";};
	//for "_i" from 1 to 5 do {this addItemToVest "rhs_mag_M441_HE";};
	//for "_i" from 1 to 5 do {this addItemToVest "rhs_mag_M433_HEDP";};
	//_unit addBackpack "B_mas_Kitbag_mul";
	for "_i" from 1 to 3 do {_unit addItemToBackpack "FirstAidKit";};
	for "_i" from 1 to 16 do {_unit addItemToBackpack "1Rnd_HE_Grenade_shell";};
	//_unit addHeadgear "H_mas_mar_helmetv_us";

	// "Add weapons";
	_unit addWeapon "arifle_mas_m16_gl_e";
	_unit addPrimaryWeaponItem "acc_pointer_IR";
	//_unit addPrimaryWeaponItem "rhsusf_acc_compm4";
	_unit addWeapon "Laserdesignator";

	// "Add items";
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
	_unit linkItem "ItemRadio";
	_unit linkItem "ItemGPS";

	// "Set identity";

	maface= solface select random facecount;
	mavox= solvoice select random voxcount;

	_unit setFace maface;
	_unit setSpeaker mavox;
	[_unit,_patch] call bis_fnc_setUnitInsignia;
	};

Med_wepset={

	// "Exported from Arsenal by John";
	_unit= _this select 0;

	// "Remove existing items";
	removeAllWeapons _unit;
	removeAllItems _unit;
	removeAllAssignedItems _unit;
	//removeUniform _unit;
	//removeVest _unit;
	//removeBackpack _unit;
	//removeHeadgear _unit;
	//removeGoggles _unit;

	// "Add containers";
	//_unit forceAddUniform "U_mas_mar_B_IndUniform2_v";
	_unit addItemToUniform "FirstAidKit";
	_unit addItemToUniform "Chemlight_green";
	for "_i" from 1 to 3 do {_unit addItemToUniform "30Rnd_556x45_Stanag";};
	_unit addVest "V_mas_mar_PlateCarrier1_rgr_d";
	_unit addItemToVest "FirstAidKit";
	_unit addItemToVest "acc_flashlight";
	for "_i" from 1 to 6 do {_unit addItemToVest "HandGrenade";};
	for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
	//for "_i" from 1 to 9 do {_unit addItemToVest "1Rnd_HE_Grenade_shell";};
	for "_i" from 1 to 5 do {_unit addItemToVest "30Rnd_556x45_Stanag";};
	for "_i" from 1 to 3 do {_unit addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";};
	//_unit addBackpack "B_mas_Kitbag_mul";
	for "_i" from 1 to 10 do {_unit addItemToBackpack "FirstAidKit";};
	_unit addItemToBackpack "Medikit";
	//for "_i" from 1 to 16 do {_unit addItemToBackpack "1Rnd_HE_Grenade_shell";};
	for "_i" from 1 to 2 do {_unit addItemToBackpack "30Rnd_556x45_Stanag";};
	//_unit addHeadgear "H_mas_mar_helmetv_us";

	// "Add weapons";
	_unit addWeapon "arifle_mas_m4c_e";
	//_unit addPrimaryWeaponItem "acc_pointer_IR";
	//_unit addPrimaryWeaponItem "rhsusf_ANPVS_15";
	_unit addWeapon "Rangefinder_RU";

	// "Add items";
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
	_unit linkItem "ItemRadio";
	_unit linkItem "ItemGPS";
	_unit linkItem "NVGoggles_OPFOR";
	//_unit linkItem "rhsusf_ANPVS_15";

	// "Set identity";

	maface= solface select random facecount;
	mavox= solvoice select random voxcount;

	_unit setFace maface;
	_unit setSpeaker mavox;
	[_unit,_patch] call bis_fnc_setUnitInsignia;
	};

UAV_wepset={

	// "Exported from Arsenal by John";
	_unit= _this select 0;

	// "Remove existing items";
	removeAllWeapons _unit;
	//removeAllItems _unit;
	//removeAllAssignedItems _unit;
	//removeUniform _unit;
	//removeVest _unit;
	//removeBackpack _unit;
	//removeHeadgear _unit;
	//removeGoggles _unit;

	// "Add containers";
	//_unit forceAddUniform "U_mas_mar_B_IndUniform2_v";
	_unit addItemToUniform "FirstAidKit";
	_unit addItemToUniform "Chemlight_green";
	for "_i" from 1 to 2 do {_unit addItemToUniform "30Rnd_556x45_Stanag";};
	//_unit addVest "V_mas_mar_PlateCarrier1_rgr_d";
	_unit addItemToVest "FirstAidKit";
	_unit addItemToVest "acc_flashlight";
	for "_i" from 1 to 6 do {_unit addItemToVest "HandGrenade";};
	for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
	for "_i" from 1 to 5 do {_unit addItemToVest "30Rnd_556x45_Stanag";};
	for "_i" from 1 to 3 do {_unit addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";};
	//_unit addHeadgear "H_mas_mar_helmetv_us";

	// "Add weapons";
	_unit addWeapon "arifle_mas_m4c_e";
	//_unit addPrimaryWeaponItem "acc_pointer_IR";
	//_unit addPrimaryWeaponItem "RH_eotech553";
	_unit addWeapon "Rangefinder_RU";
	//_unit linkItem "rhsusf_ANPVS_15";

	// "Add items";
	//_unit linkItem "ItemMap";
	//_unit linkItem "ItemCompass";
	//_unit linkItem "ItemWatch";
	//_unit linkItem "ItemRadio";
	//_unit linkItem "ItemGPS";
	//_unit linkItem "NVGoggles_OPFOR";

	// "Set identity";

	maface= solface select random facecount;
	mavox= solvoice select random voxcount;

	_unit setFace maface;
	_unit setSpeaker mavox;
	[_unit,_patch] call bis_fnc_setUnitInsignia;
	};

LAT_wepset={

	// "Exported from Arsenal by John";
	_unit= _this select 0;

	// "Remove existing items";
	removeAllWeapons _unit;
	removeAllItems _unit;
	removeAllAssignedItems _unit;
	//removeUniform _unit;
	//removeVest _unit;
	//removeBackpack _unit;
	//removeHeadgear _unit;
	//removeGoggles _unit;

	// "Add containers";
	//_unit forceAddUniform "U_mas_mar_B_IndUniform2_v";
	_unit addItemToUniform "FirstAidKit";
	_unit addItemToUniform "Chemlight_green";
	_unit addItemToUniform "30Rnd_556x45_Stanag";
	for "_i" from 1 to 3 do {_unit addItemToUniform "15Rnd_mas_9x21_Mag";};
	//_unit addVest "V_mas_mar_PlateCarrier1_rgr_d";
	_unit addItemToVest "FirstAidKit";
	_unit addItemToVest "acc_flashlight";
	for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
	for "_i" from 1 to 3 do {_unit addItemToVest "HandGrenade";};
	for "_i" from 1 to 5 do {_unit addItemToVest "30Rnd_556x45_Stanag";};
	for "_i" from 1 to 3 do {_unit addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";};
	//_unit addBackpack "B_mas_Kitbag_rng";
	for "_i" from 1 to 4 do {_unit addItemToBackpack "mas_M136";};
	//_unit addHeadgear "H_mas_mar_helmetv_us";

	// "Add weapons";
	_unit addWeapon "arifle_mas_m16";
	//_unit addPrimaryWeaponItem "acc_pointer_IR";
	//_unit addPrimaryWeaponItem "RH_eotech553";
	_unit addWeapon "mas_launch_M136_F";
	_unit addWeapon "hgun_mas_m9_F";
	//_unit addWeapon "Rangefinder_RU";

	// "Add items";
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
	_unit linkItem "ItemRadio";
	_unit linkItem "ItemGPS";
	_unit linkItem "NVGoggles_OPFOR";

	// "Set identity";

	maface= solface select random facecount;
	mavox= solvoice select random voxcount;

	_unit setFace maface;
	_unit setSpeaker mavox;
	[_unit,_patch] call bis_fnc_setUnitInsignia;
	};

HAT_wepset= {

	// "Exported from Arsenal by John";
	_unit= _this select 0;

	// "Remove existing items";
	removeAllWeapons _unit;
	removeAllItems _unit;
	//removeAllAssignedItems _unit;


	// "Add containers";
	//_unit forceAddUniform "U_mas_mar_B_IndUniform2_v";
	_unit addItemToUniform "FirstAidKit";
	_unit addItemToUniform "Chemlight_green";
	_unit addItemToUniform "30Rnd_556x45_Stanag";
	for "_i" from 1 to 3 do {_unit addItemToUniform "15Rnd_mas_9x21_Mag";};
	//_unit addVest "V_mas_mar_PlateCarrier1_rgr_d";
	_unit addItemToVest "FirstAidKit";
	_unit addItemToVest "acc_flashlight";
	for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
	for "_i" from 1 to 3 do {_unit addItemToVest "HandGrenade";};
	for "_i" from 1 to 5 do {_unit addItemToVest "30Rnd_556x45_Stanag";};
	for "_i" from 1 to 3 do {_unit addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";};
	//_unit addBackpack "B_mas_AssaultPack_rng_ATM";
	for "_i" from 1 to 4 do {_unit addItemToBackpack "Titan_AT";};
	_unit addItemToBackpack "Titan_AP";
	//	_unit addHeadgear "H_mas_mar_helmetv_us";

	// "Add weapons";
	_unit addWeapon "arifle_mas_m16";
	//_unit addPrimaryWeaponItem "acc_pointer_IR";
	//_unit addPrimaryWeaponItem "RH_eotech553";
	_unit addWeapon "launch_I_Titan_short_F";
	_unit addWeapon "hgun_mas_m9_F";
	_unit addWeapon "Rangefinder_RU";

	// "Add items";
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
	_unit linkItem "ItemRadio";
	_unit linkItem "ItemGPS";
	//_unit linkItem "NVGoggles_OPFOR";

	// "Set identity";

	maface= solface select random facecount;
	mavox= solvoice select random voxcount;

	_unit setFace maface;
	_unit setSpeaker mavox;
	[_unit,_patch] call bis_fnc_setUnitInsignia;
	};

HAA_wepset= {

	// "Exported from Arsenal by John";
	_unit= _this select 0;

	// "Remove existing items";
	removeAllWeapons _unit;
	removeAllItems _unit;
	removeAllAssignedItems _unit;
	removeUniform _unit;
	removeVest _unit;
	removeBackpack _unit;
	removeHeadgear _unit;
	removeGoggles _unit;

	// "Add containers";
	_unit forceAddUniform "U_mas_mar_B_IndUniform2_v";
	_unit addItemToUniform "FirstAidKit";
	_unit addItemToUniform "Chemlight_green";
	_unit addItemToUniform "30Rnd_556x45_Stanag";
	for "_i" from 1 to 3 do {_unit addItemToUniform "15Rnd_mas_9x21_Mag";};
	_unit addVest "V_mas_mar_PlateCarrier1_rgr_d";
	_unit addItemToVest "FirstAidKit";
	_unit addItemToVest "acc_flashlight";
	for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
	for "_i" from 1 to 3 do {_unit addItemToVest "HandGrenade";};
	for "_i" from 1 to 5 do {_unit addItemToVest "30Rnd_556x45_Stanag";};
	for "_i" from 1 to 3 do {_unit addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";};
	_unit addBackpack "B_Kitbag_cbr";
	for "_i" from 1 to 2 do {_unit addItemToBackpack "Titan_AA";};
	_unit addHeadgear "H_mas_mar_helmetv_us";

	// "Add weapons";
	_unit addWeapon "arifle_mas_m16";
	//_unit addPrimaryWeaponItem "acc_pointer_IR";
	//_unit addPrimaryWeaponItem "RH_eotech553";
	_unit addWeapon "launch_I_Titan_F";
	_unit addWeapon "hgun_mas_m9_F";
	_unit addWeapon "Rangefinder_RU";

	// "Add items";
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
	_unit linkItem "ItemRadio";
	_unit linkItem "ItemGPS";
	_unit linkItem "NVGoggles_OPFOR";

	// "Set identity";

	maface= solface select random facecount;
	mavox= solvoice select random voxcount;

	_unit setFace maface;
	_unit setSpeaker mavox;
	[_unit,_patch] call bis_fnc_setUnitInsignia;


	};

REP_wepset= {

	// "Exported from Arsenal by John";
	_unit= _this select 0;

	// "Remove existing items";
	removeAllWeapons _unit;
	removeAllItems _unit;
	//removeAllAssignedItems _unit;
	//removeUniform _unit;
	//removeVest _unit;
	//removeBackpack _unit;
	//removeHeadgear _unit;
	//removeGoggles _unit;

	// "Add containers";
	//_unit forceAddUniform "U_mas_mar_B_IndUniform2_v";
	_unit addItemToUniform "FirstAidKit";
	_unit addItemToUniform "Chemlight_green";
	for "_i" from 1 to 3 do {_unit addItemToUniform "15Rnd_mas_9x21_Mag";};
	for "_i" from 1 to 3 do {_unit addItemToUniform "30Rnd_556x45_Stanag";};
	//_unit addVest "V_mas_mar_PlateCarrier1_rgr_d";
	_unit addItemToVest "FirstAidKit";
	_unit addItemToVest "acc_flashlight";
	_unit addItemToVest "optic_Aco";
	for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
	for "_i" from 1 to 6 do {_unit addItemToVest "HandGrenade";};
	for "_i" from 1 to 5 do {_unit addItemToVest "30Rnd_556x45_Stanag";};
	for "_i" from 1 to 2 do {_unit addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";};
	for "_i" from 1 to 2 do {_unit addItemToVest "Chemlight_green";};
	for "_i" from 1 to 2 do {_unit addItemToVest "Chemlight_red";};
	for "_i" from 1 to 2 do {_unit addItemToVest "Chemlight_yellow";};
	for "_i" from 1 to 2 do {_unit addItemToVest "Chemlight_blue";};
	_unit addItemToVest "B_IR_Grenade";
	//_unit addBackpack "B_mas_Kitbag_rng";
	_unit addItemToBackpack "ToolKit";
	//_unit addHeadgear "H_mas_mar_helmetv_us";

	// "Add weapons";
	_unit addWeapon "arifle_mas_m16";
	_unit addWeapon "hgun_mas_m9_F";
	_unit addWeapon "Rangefinder_RU";

	// "Add items";
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
	_unit linkItem "ItemRadio";
	_unit linkItem "ItemGPS";
	//_unit linkItem "NVGoggles_OPFOR";

	// "Set identity";

	maface= solface select random facecount;
	mavox= solvoice select random voxcount;

	_unit setFace maface;
	_unit setSpeaker mavox;
	[_unit,_patch] call bis_fnc_setUnitInsignia;



	};

EXP_wepset= {

	// "Exported from Arsenal by John";
	_unit = _this select 0;

	// "Remove existing items";
	removeAllWeapons _unit;
	removeAllItems _unit;


	// "Add containers";
	//_unit forceAddUniform "U_mas_mar_B_IndUniform2_v";
	_unit addItemToUniform "FirstAidKit";
	_unit addItemToUniform "Chemlight_green";
	for "_i" from 1 to 3 do {_unit addItemToUniform "15Rnd_mas_9x21_Mag";};
	for "_i" from 1 to 3 do {_unit addItemToUniform "30Rnd_556x45_Stanag";};
	//_unit addVest "V_mas_mar_PlateCarrier1_rgr_d";
	_unit addItemToVest "FirstAidKit";
	_unit addItemToVest "acc_flashlight";
	_unit addItemToVest "optic_Aco";
	for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
	for "_i" from 1 to 6 do {_unit addItemToVest "HandGrenade";};
	for "_i" from 1 to 5 do {_unit addItemToVest "30Rnd_556x45_Stanag";};
	for "_i" from 1 to 2 do {_unit addItemToVest "30Rnd_556x45_Stanag_Tracer_Red";};
	for "_i" from 1 to 2 do {_unit addItemToVest "Chemlight_green";};
	for "_i" from 1 to 2 do {_unit addItemToVest "Chemlight_red";};
	for "_i" from 1 to 2 do {_unit addItemToVest "Chemlight_yellow";};
	for "_i" from 1 to 2 do {_unit addItemToVest "Chemlight_blue";};
	_unit addItemToVest "B_IR_Grenade";
	//_unit addBackpack "B_mas_Kitbag_rng";
	_unit addItemToBackpack "MineDetector";
	for "_i" from 1 to 2 do {_unit addItemToBackpack "DemoCharge_Remote_Mag";};
	for "_i" from 1 to 2 do {_unit addItemToBackpack "SLAMDirectionalMine_Wire_Mag";};
	for "_i" from 1 to 2 do {_unit addItemToBackpack "ClaymoreDirectionalMine_Remote_Mag";};
	for "_i" from 1 to 2 do {_unit addItemToBackpack "APERSTripMine_Wire_Mag";};
	for "_i" from 1 to 2 do {_unit addItemToBackpack "APERSBoundingMine_Range_Mag";};
	//_unit addHeadgear "H_mas_mar_helmetv_us";

	// "Add weapons";
	_unit addWeapon "arifle_mas_m16_e";
	_unit addWeapon "hgun_mas_m9_F";
	_unit addWeapon "Rangefinder_RU";

	// "Add items";
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
	_unit linkItem "ItemRadio";
	_unit linkItem "ItemGPS";
	_unit linkItem "NVGoggles_OPFOR";


	// "Set identity";

	maface= solface select random facecount;
	mavox= solvoice select random voxcount;

	_unit setFace maface;
	_unit setSpeaker mavox;
	[_unit,_patch] call bis_fnc_setUnitInsignia;


	};

DMR_wepset= {

	// "Exported from Arsenal by John";
	_unit = _this select 0;

	// "Remove existing items";
	removeAllWeapons _unit;
	removeAllItems _unit;
	//removeAllAssignedItems _unit;
	//removeUniform _unit;
	//removeVest _unit;
	//removeBackpack _unit;
	//removeHeadgear _unit;
	//removeGoggles _unit;

	// "Add containers";
	//_unit forceAddUniform "U_mas_mar_B_IndUniform2_v";
	_unit addItemToUniform "FirstAidKit";
	_unit addItemToUniform "Chemlight_green";
	for "_i" from 1 to 3 do {_unit addItemToUniform "15Rnd_mas_9x21_Mag";};
	for "_i" from 1 to 3 do {_unit addItemToUniform "20Rnd_mas_762x51_Stanag";};
	//	_unit addVest "V_mas_mar_PlateCarrier1_rgr_d";
	_unit addItemToVest "FirstAidKit";
	_unit addItemToVest "acc_flashlight";
	//_unit addItemToVest "optic_Aco";
	for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
	for "_i" from 1 to 6 do {_unit addItemToVest "HandGrenade";};
	for "_i" from 1 to 2 do {_unit addItemToVest "Chemlight_blue";};
	_unit addItemToVest "B_IR_Grenade";
	for "_i" from 1 to 5 do {_unit addItemToVest "20Rnd_mas_762x51_Stanag";};
	for "_i" from 1 to 2 do {_unit addItemToVest "20Rnd_mas_762x51_T_Stanag";};
	//_unit addBackpack "B_mas_Kitbag_mul";
	//_unit addHeadgear "H_mas_mar_helmetv_us";

	// "Add weapons";
	_unit addWeapon "srifle_mas_ebr";
	_unit addPrimaryWeaponItem "optic_SOS";
	_unit addWeapon "hgun_mas_m9_F";
	_unit addWeapon "Rangefinder_RU";

	// "Add items";
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
	_unit linkItem "ItemRadio";
	_unit linkItem "ItemGPS";
	//_unit linkItem "NVGoggles_OPFOR";

	// "Set identity";

	maface= solface select random facecount;
	mavox= solvoice select random voxcount;

	_unit setFace maface;
	_unit setSpeaker mavox;
	[_unit,_patch] call bis_fnc_setUnitInsignia;


	};

snp_wepset= {

	// "Exported from Arsenal by John";
	_unit = _this select 0;
	// "Remove existing items";
	//removeAllWeapons _unit;
	//removeAllItems _unit;


	// "Add containers";
	//_unit forceAddUniform "U_mas_mar_B_IndUniform2_v";
	_unit addItemToUniform "FirstAidKit";
	_unit addItemToUniform "Chemlight_green";
	for "_i" from 1 to 3 do {_unit addItemToUniform "15Rnd_mas_9x21_Mag";};
	for "_i" from 1 to 3 do {_unit addItemToUniform "5Rnd_mas_127x99_Stanag";};
	//_unit addVest "V_mas_mar_PlateCarrier1_rgr_d";
	_unit addItemToVest "FirstAidKit";
	_unit addItemToVest "acc_flashlight";
	_unit addItemToVest "optic_Aco";
	for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
	for "_i" from 1 to 6 do {_unit addItemToVest "HandGrenade";};
	_unit addItemToVest "B_IR_Grenade";
	for "_i" from 1 to 3 do {_unit addItemToVest "5Rnd_mas_127x99_T_Stanag";};
	//_unit addBackpack "B_mas_Kitbag_mul";
	for "_i" from 1 to 10 do {_unit addItemToBackpack "5Rnd_mas_127x99_Stanag";};
	// _unit addHeadgear "H_mas_mar_helmetv_us";

	// "Add weapons";
	_unit addWeapon "srifle_mas_m107";
	_unit addWeapon "hgun_mas_m9_F";
	_unit addWeapon "Rangefinder_RU";

	// "Add items";
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
	_unit linkItem "ItemRadio";
	_unit linkItem "ItemGPS";
	//_unit linkItem "NVGoggles_OPFOR";

	// "Set identity";

	maface= solface select random facecount;
	mavox= solvoice select random voxcount;

	_unit setFace maface;
	_unit setSpeaker mavox;
	[_unit,_patch] call bis_fnc_setUnitInsignia;


	};

AR_wepset= {
	// "Exported from Arsenal by John";
	_unit= _this select 0;
	//// "Remove existing items";
	removeAllWeapons _unit;
	//removeAllItems _unit;
	//removeAllAssignedItems _unit;
	//removeUniform _unit;
	//removeVest _unit;
	//removeBackpack _unit;
	//removeHeadgear _unit;
	//removeGoggles _unit;


	for "_i" from 1 to 3 do {_unit addItemToUniform "15Rnd_mas_9x21_Mag";};

	_unit addItemToVest "FirstAidKit";
	_unit addItemToVest "acc_flashlight";
	_unit addItemToVest "optic_Aco";
	for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
	for "_i" from 1 to 6 do {_unit addItemToVest "HandGrenade";};
	_unit addItemToVest "B_IR_Grenade";
	for "_i" from 1 to 2 do {_unit addItemToVest "200Rnd_mas_556x45_Stanag";};
	_unit addBackpack "B_mas_Kitbag_mul";
	for "_i" from 1 to 2 do {_unit addItemToBackpack "200Rnd_mas_556x45_Stanag";};


	// "Add weapons";
	_unit addWeapon "LMG_mas_Mk200_F_h";
	//_unit addPrimaryWeaponItem "rhsusf_acc_ACOG";
	_unit addWeapon "hgun_mas_m9_F";
	_unit addWeapon "Rangefinder_RU";


	_unit linkItem "NVGoggles_OPFOR";


	/// "Set identity";

	maface= solface select random facecount;
	mavox= solvoice select random voxcount;

	_unit setFace maface;
	_unit setSpeaker mavox;
	[_unit,_patch] call bis_fnc_setUnitInsignia;


	};


MG_wepset= {

	//// "Exported from Arsenal by John";
	_unit = _this select 0;
	// "Remove existing items";
	removeAllWeapons _unit;
	removeAllItems _unit;


	// "Add containers";
	_unit forceAddUniform "U_mas_mar_B_IndUniform2_v";
	_unit addItemToUniform "FirstAidKit";
	_unit addItemToUniform "Chemlight_green";
	for "_i" from 1 to 3 do {_unit addItemToUniform "15Rnd_mas_9x21_Mag";};
	_unit addVest "V_mas_mar_PlateCarrier1_rgr_d";
	_unit addItemToVest "FirstAidKit";
	_unit addItemToVest "acc_flashlight";
	_unit addItemToVest "optic_Aco";
	for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
	for "_i" from 1 to 6 do {_unit addItemToVest "HandGrenade";};
	_unit addItemToVest "B_IR_Grenade";
	_unit addItemToVest "100Rnd_mas_762x51_Stanag";
	_unit addBackpack "B_mas_Kitbag_mul";
	for "_i" from 1 to 4 do {_unit addItemToBackpack "100Rnd_mas_762x51_Stanag";};
	_unit addItemToBackpack "100Rnd_mas_762x51_Stanag";
	_unit addHeadgear "H_mas_mar_helmetv_us";

	// "Add weapons";
	_unit addWeapon "LMG_mas_Mk48_F_h";
	//_unit addPrimaryWeaponItem "optic_MRCO";
	_unit addWeapon "hgun_mas_m9_F";
	_unit addWeapon "Rangefinder_RU";

	// "Add items";
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
	_unit linkItem "ItemRadio";
	_unit linkItem "ItemGPS";
	_unit linkItem "NVGoggles_OPFOR";

	// "Set identity";

	//removeAllWeapons _unit;


	maface= solface select random facecount;
	mavox= solvoice select random voxcount;

	_unit setFace maface;
	_unit setSpeaker mavox;
	[_unit,_patch] call bis_fnc_setUnitInsignia;


	};


if ( isPlayer _soldier) exitWith { [player, player] call PLYRwepset;};

switch (_soltype) do {
    case "B_mas_mar_medic_F_V":			{ [_soldier] call Med_wepset;};

    case "B_mas_mar_soldier_AR_F_V": 	{ [_soldier] call AR_wepset;};

    case "B_mas_mar_Soldier_GL_F_V": 	{ [_soldier] call GL_wepset;};

    case "B_mas_mar_Soldier_TL_F_V": 	{ [_soldier] call TL_wepset;};

    case "B_mas_mar_Soldier_UAV_F_V":	{ [_soldier] call UAV_wepset;};

    case "B_mas_mar_soldier_LAT_F_V": 	{ [_soldier] call LAT_wepset;};

    case "B_mas_mar_Soldier_JTAC_F_V":	{ [_soldier] call HAT_wepset;};

    case "B_mas_mar_soldier_M_F_V" :	{ [_soldier] call DMR_wepset;};

    case "B_mas_mar_soldier_Mh_F_V":	{ [_soldier] call snp_wepset;};

    case "B_mas_mar_soldier_MG_F_V":	{ [_soldier] call MG_wepset;};

    default {
     	/* STATEMENT */
    };
};

