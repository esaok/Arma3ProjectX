for "_i" from 0 to 1 step 0 do {
	uiSleep 60;
	{
		if (underwater _x) then {
			_x setDamage 1;
		};
	}forEach XXX_objectives;
};