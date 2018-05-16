params["_losingTeamIndexes"];

XXX_missionEnded = true;

// Delete the teams that lost
{
	XXX_teams deleteAt _x;
}forEach _losingTeamIndexes;

{
	if (side _x in XXX_teams) then {
		[] remoteExecCall ["XXX_fnc_openVoting", _x];
	} else {
		[] remoteExecCall ["XXX_fnc_teamLost", _x];
	};
}forEach allPlayers;

"The winner teams have 60s to vote for the next mission." remoteExecCall ["hint"];
uiSleep 30;
"The winner teams have 30s to vote for the next mission." remoteExecCall ["hint"];
uiSleep 30;

_winner = XXX_votes find selectMax XXX_votes;

(format["Next mission will be: %1", (XXX_missions # _winner) # 0]) remoteExecCall ["hint"];

uiSleep 5;

//serverCommand format["mission %1 Veteran", (XXX_missions # _winner) # 1];