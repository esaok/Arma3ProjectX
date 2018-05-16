["InitializePlayer", [player, true]] call BIS_fnc_dynamicGroups;

player addEventHandler ["killed", {
	[player getVariable ["side", -1]] remoteExecCall ["XXX_fnc_depleteTickets", 2];
}];

player addEventHandler ["Respawn", {
	params ["_unit", "_corpse"];
	// Remove old actions
	for "_i" from 0 to (player addAction ["",""]) do {
		_corpse removeAction _i;
	};
	// Add the rallypoint action
	_unit addAction ["Place a rallypoint",{[]call XXX_fnc_addRallyPoint;},nil,1.5,true,true,"","(leader group player == leader player) && isNil{XXX_rallyPointCooldown}"];
}];

[]spawn {
	if ((player getVariable ["side", -1]) != -1) exitWith {};
	waitUntil{uiSleep 0.1; (XXX_teams find (side player)) != -1};
	player setVariable ["side", XXX_teams find (side player)];
};

XXX_missions = [
	["First mission","minimission2.Altis"],
	["Second mission","minimission3.Tanoa"]
];

[]call XXX_fnc_initHudLoop;
