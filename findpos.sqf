//findpos.sqf

// find the locations for the missions



retval=true;
i=0;
cell=[];
hos=[];
posbomb=[];
missPos=[];
H_zones= ["hotz"];
civz= [];
while {retval} do
{
i=i+1;
strng = format["cell_%1", i];
retval=strng in allmapmarkers;
if retval then {cell=cell + [strng];};

};


retval=true;
i=0;

while {retval} do
{
i=i+1;
strng = format ["hos_targ_%1", i];
retval=strng in allmapmarkers;
if retval then {hos=hos + [strng];};

};


retval=true;
i=0;

while {retval} do
{
i=i+1;
strng = format ["atk_%1", i];
retval=strng in allmapmarkers;
if retval then {missPos=missPos + [strng];};

};

retval=true;
i=0;

while {retval} do
{
i=i+1;
strng = format ["bomb_pos_%1", i];
retval=strng in allmapmarkers;
if retval then {posbomb=posbomb + [strng];};

};

retval=true;
i=0;

while {retval} do
{
i=i+1;
strng = format ["hotz_%1", i];
retval=strng in allmapmarkers;
if retval then {H_zones = H_zones + [strng];};

};

retval=true;
i=0;

while {retval} do
{
i=i+1;
strng = format ["civ_%1", i];
retval=strng in allmapmarkers;
if retval then {civz = civz + [strng];};

};


found=1;
