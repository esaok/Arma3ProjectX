params["_playerSide", "_amount"];

private["_newTickets"];

if (XXX_missionEnded) exitWith {};
if (_playerSide == -1) exitWith {};

_newTickets = (XXX_tickets # _playerSide) + _amount;

XXX_tickets set [_playerSide, _newTickets];
publicVariable "XXX_tickets";
