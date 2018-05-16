class CfgFunctions
{
	class XXX
	{
		class Init
		{
			file = "Functions\Init";
			class initHudLoop {};
		};
		class MissionFlow
		{
			file = "Functions\MissionFlow";
			class endMission {};
			class submitVote {};
			class openVoting {};
			class getVote {};
			class teamLost {};
		};
		class Tickets
		{
			file = "Functions\Tickets";
			class depleteTickets {};
			class addTickets {};
		};
		class Objectives 
		{
			file = "Functions\Objectives"
			class initObjectiveMarkers {};
			class objectiveDestroyed {};
			class objectiveWatcher {};
		};
		class Rallypoints 
		{
			file = "Functions\Rallypoints"
			class addRallyPoint {};
		};
	};
};