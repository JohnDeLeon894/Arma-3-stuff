// secure he hostage and have them follow you.

_resc = _this select 0;

[_resc] join group player;

_trg=createTrigger["EmptyDetector",getPos player];
_trg setTriggerArea[5,5,0,false];
_trg setTriggerActivation["FOXTROT","PRESENT",true];
_trg setTriggerStatements["this", "hint 'Rescue chopper is on its way in'; null=[]execVM 'hosmiss\hos_evac.sqf'",""];

//{_x enableAI "MOVE"} foreach units hostage;
_resc enableAI "MOVE";
_resc removeAction rescue;
