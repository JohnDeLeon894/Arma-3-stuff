// respawnPlayer.sqf


while {true} do {
	_heli = player getVariable "NORRN_taxiHeli";
	if (!alive player) then {
		[player] spawn Nor_HT_S13;
	};	
	while {!alive player} do {sleep 1};
};