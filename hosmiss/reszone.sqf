//wait until hostigas are in the rescue zone

	waituntil
		{
		(pow_1 distance doc < 200)
		or (pow_2 distance doc < 200)
		or(pow_3 distance doc < 200)
		or(pow_4 distance doc < 200) or(pow_5 distance doc < 200)
		or(pow_6 distance doc < 200)
		};

		missdone=1;
		mstate=0;


		engroup=[];
		sleep 10;
		//[]execVM "miss_end.sqf";

[]execvm "miss_end.sqf";   Host2 setTaskState "SUCCEEDED";    ["TaskSucceeded",["Rescue Hostages","Hostages are now safe!"]] call bis_fnc_showNotification;



	[]execVM "hosmiss\secondary_task.sqf";