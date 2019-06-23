//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: JD6
//////////////////////////////////////////////////////////////////

hint "click on map where you want group to move";
onmapSingleClick "g1 move _pos; onmapSingleClick ' ';_scom =format ['%1 new orders received, %2 is moving to  %3 . %2 out.', group player, g1, _pos];titletext  [_scom,'PLAIN DOWN']";