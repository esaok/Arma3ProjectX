
_markers = [];
for "_i" from 0 to 1 step 0 do {
	{
		deleteMarkerLocal _x;
	} count _markers;
	_markers = [];

	{
		_rnd = format["objective%1", round random 9999];
		_m = createMarkerLocal [_rnd, getPos _x];
		_m setMarkerShapeLocal "ICON";
		_m setMarkerTypeLocal "hd_objective";
		_m setMarkerTextLocal "Ammo truck";
		_m setMarkerColorLocal "ColorBlack";
		_markers pushBack _rnd;
	}forEach XXX_objectives;
	
	sleep 5;
};