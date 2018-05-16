params ["_vehicle"];

if (!isServer) exitWith {};

private _idx = XXX_objectives find _vehicle;

if (_idx == -1) exitWith {};

XXX_objectives deleteAt _idx;

if (!XXX_missionEnded) then {
	{
		[_x, 20]call XXX_fnc_addTickets;
	}forEach XXX_attackingTeamIndexes;
};

if ((count XXX_objectives < 1) && !XXX_missionEnded) then {
	[XXX_defendingTeamIndexes]spawn XXX_fnc_endMission;
};