params["_playerSide"];

private["_newTickets"];

if (XXX_missionEnded) exitWith {};
if (_playerSide == -1) exitWith {};

_newTickets = (XXX_tickets # _playerSide) - 1;

XXX_tickets set [_playerSide, _newTickets];
publicVariable "XXX_tickets";

_zeroTickets = [];
{
	if (_x < 1) then {
		_zeroTickets pushBack _forEachIndex;
	};
}forEach XXX_tickets;

if (count _zeroTickets != 0) then {
	[_zeroTickets]spawn XXX_fnc_endMission;
};
