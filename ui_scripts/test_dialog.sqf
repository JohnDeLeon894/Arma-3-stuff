sx = _this select 1;
_sx= sx;
_rnk = rank _sx;
_sname = name _sx;
_greet = format ["How can I help %1 %2?", _rnk, _sname];
_mission = format ["Im readr for <br\> an assignment"];


  [
  	[
  		[0, _greet, ""],

  		[2, "recruit team", {}, nil,	[
  													"BUTTONS",
  													[1, "team 1", {[sx]execVM 'spawn.sqf'}]
  												]
  		],
  		[3, _mission, {[]execVM "misscall.sqf"}],
  		[4, "Button 4", {hint "test2"}, nil,	[
  													"LIST",
  													[0, "TestAction0", "hint ""stest"""],
  													[1, "TestAction1", "hint ""stest"""],
  													[2, "TestAction2", "hint ""stest"""],
  													[3, "TestAction3", "hint ""stest"""],
  													[4, "TestAction4", "hint ""stest"""],
  													[4, "TestAction5", "hint ""stest"""],
  													[4, "TestAction6", "hint ""stest"""],
  													[4, "TestAction7", "hint ""stest"""],
  													[4, "TestAction8", "hint ""stest"""],
  													[4, "TestAction9", "hint ""stest"""],
  													[4, "TestAction10", "hint ""stest"""]
  												]
  		],
  		[7, "Button 5", {hint "test2"}, nil,	[
  													"LIST",
  													[1, "TestAction", "hint ""stest"""]
  												]
  		],
  		[8, "Button 6", {hint "test2"}, nil,	[
  													"LIST",
  													[0, "TestAction0", "hint ""stest"""],
  													[1, "TestAction1", "hint ""stest"""],
  													[2, "TestAction2", "hint ""stest"""],
  													[3, "TestAction3", "hint ""stest"""],
  													[4, "TestAction4", "hint ""stest"""]
  												]
  		],
  		[9, "Button 7", {hint "test2"}, nil,	[
  													"BUTTONS",
  													[0, "TestAction0", "hint ""stest"""],
  													[1, "TestAction1", "hint ""stest"""],
  													[2, "TestAction2", "hint ""stest"""]
  												]
  		]


    ],
  	[
  		211,
  		false,
  		false,
  		false
  	]
  ]	call X39_ActionUI_fnc_createDialog;

  /*
    [
    [
      [//Action
        Index,          <-- Required
        DisplayText,        <-- Required
        ButtonAction,       <-- Required
        UpdateCode,
        [//SubActions
          SubActionType,          <-- Required (can be: "BUTTONS", "LIST")
          [
            Index,          <-- Required (for "LIST" type you always can enter 0)
            DisplayText,        <-- Required
            ButtonAction
          ]
        ]
      ]//Other actions can follow
    ],
    [//ExtraButtonToClose
      KeyCode,
      CTRL,
      ALT,
      SHIFT
    ]
  ]

  */