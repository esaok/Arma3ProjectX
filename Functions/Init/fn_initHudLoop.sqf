/*
Author: Kerkkoh
First Edit: 15.3.2016
*/
disableSerialization;

for "_i" from 0 to 1 step 0 do {

	_hud = uiNamespace getVariable ["HUD",displayNull];

	if(isNull _hud) then 
	{
		2 cutRsc ["HUD","PLAIN"];
	};
	
	_idx = player getVariable ["side", -1];
	
	if (_idx != -1) then {
		(_hud displayCtrl 1000) ctrlSetText format["Tickets left: %1", XXX_tickets select _idx];
	};
	
	sleep 0.5;
};