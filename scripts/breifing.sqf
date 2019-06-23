// Created in A2B Editor by EMSI

_CE = (UK/(ucas + 1))*100;


// create career record sheet.

_sheet= format ["Carreer sheet;<br /><br />


%1 <br /><br />

%2 <br /><br />

MOS; Field Electrician<br /><br />

Task; Combat Squad Leader<br /><br />

Career history;<br /><br />

2017- Recruit<br />
Graduated basic training with high honors. Trained as an infantryman. Selected Marine Electrician as MOS for further training and operations.<br /><br />

2018- Prvt & Prvt 1st class. <br />
Graduated from Electricians school and proceeded to lead a small team of electricians through various repair tasks including repairing electronic components of logistic and combat vehicles. Also managed to change a light bulb or two. <br /><br />

2020- Sergeant<br />
Moved up to squad leader to run entire repair shop. Upon increasing tension in the Mediterranean %1 was selected to join MEU to investigate recent uptick in violence in the Island of Altis. As a Sergeant %1 is in command of a Marine Combat Special Operations Patrol (MCSOP) unit. <br /><br />

Altis Campeign Battle Record;<br /><br />

Missions; %3 <br /><br />


Confirmed Kills; %4 <br /><br />

Confirmed Unit Kills; %5 <br /><br />

Unit Losses; %6 <br /><br />

Combat Effectiveness; %7 <br /><br />



", name player, rank player, Mission_count, PK, UK, ucas, _CE];

// print career record.
player createDiaryRecord ["Diary", ["Career Record", _sheet]];

// create breifing.

player createDiaryRecord ["Diary", ["Mission Instructions", "Mission Instructions;

Speak to your platoon leader for missions and recruits. Once you are done with the mission come back to base to prepare for your next assignment.
"]];





