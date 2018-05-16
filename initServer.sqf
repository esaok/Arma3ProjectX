["Initialize", [true]] call BIS_fnc_dynamicGroups;

_startingTickets = (missionConfigFile >> "XXX_Config" >> "startingTickets") call BIS_fnc_getCfgData;

XXX_missionEnded = false;

XXX_teams = [west,east];
XXX_tickets = [_startingTickets, _startingTickets];

XXX_defendingTeamIndexes = [1];
XXX_attackingTeamIndexes = [0];

publicVariable "XXX_teams";
publicVariable "XXX_tickets";

XXX_missions = [
	["First mission","minimission2.Altis"],
	["Second mission","minimission3.Tanoa"]
];
XXX_votes = [0,0];

XXX_objectives = [];
{
	if (_x getVariable ["objective", false]) then {
		private _nil = XXX_objectives pushBack _x;
	};
}count vehicles;

_defendingTeam = [];
{
	private _nil = _defendingTeam pushBack (XXX_teams # _x);
}count XXX_defendingTeamIndexes;
{
	if (side _x in _defendingTeam) then {
		private _nil = [] remoteExec ["XXX_fnc_initObjectiveMarkers", _x];
	};
}count allPlayers;

// Safemeasure, the watcher runs once a minute and checks if the objectives are underwater
[]spawn XXX_fnc_objectiveWatcher;
