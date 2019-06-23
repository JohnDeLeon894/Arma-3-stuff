dir=0;
dis=0;
mpos= markerPos "mkrObj1";
mpos2= position spn_w;
dis=mpos distance mpos2;
g2= creategroup west;
_nCount= count units g2;
if (_nCount>0)then {{deleteVehicle _x}foreach units g2};


onMapSingleClick "nul = [_pos,true,1,3,true,true,'mkrObj1',90,4000,true,false,8,'default',[false,true,false,false],g2,nil,nil,false] execVM 'reinforcementChopper.sqf';_omark = createMarker ['lndmrk', _pos];_omark setMarkerShape 'ICON';_omark setMarkerType 'hd_objective';_omark setMarkerText format ['back up landing'];_omark setMarkerSize [1,1]; onMapSingleClick'' ";




