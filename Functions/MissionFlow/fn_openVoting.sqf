createDialog "voteNextMission";

{
	_item = lbAdd[1500, _x # 0];
	lbSetData[1500, _item, str _forEachIndex];
}forEach XXX_missions;