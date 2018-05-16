if (!isNil {XXX_lastRally}) then {
	(XXX_lastRally getVariable "lastRally") call BIS_fnc_removeRespawnPosition;
	deleteVehicle XXX_lastRally;
};

XXX_lastRally = "Land_TentDome_F" createVehicle position player;
XXX_lastRally addAction ["Destroy rally point", {
	params["_object"];
	(_object getVariable "lastRally") call BIS_fnc_removeRespawnPosition;
	deleteVehicle _object;
}];
_lastRally = [group player, XXX_lastRally, "Rally point"] call BIS_fnc_addRespawnPosition;
XXX_lastRally setVariable ["lastRally", _lastRally];

[] spawn {
	XXX_rallyPointCooldown = true;
	uiSleep 120;
	XXX_rallyPointCooldown = nil;
};
