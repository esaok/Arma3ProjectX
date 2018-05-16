if ((lbCurSel 1500) == -1) exitWith {};

[parseNumber (lbData [1500, lbCurSel 1500])] remoteExecCall ["XXX_fnc_getVote", 2];

closeDialog 0;