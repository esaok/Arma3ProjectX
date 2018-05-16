/* #Naxiri
$[
	1.063,
	["ass",[[0,0,1,1],0.025,0.04,"GUI_GRID"],0,0,0],
	[1800,"",[1,"",["0.3625 * safezoneW + safezoneX","0.236103 * safezoneH + safezoneY","0.275 * safezoneW","0.38485 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1500,"",[1,"",["0.373958 * safezoneW + safezoneX","0.313073 * safezoneH + safezoneY","0.252083 * safezoneW","0.23091 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1000,"",[1,"Congratulations! Vote for the next mission!",["0.373958 * safezoneW + safezoneX","0.247099 * safezoneH + safezoneY","0.252083 * safezoneW","0.0439828 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1600,"",[1,"Vote",["0.373958 * safezoneW + safezoneX","0.554979 * safezoneH + safezoneY","0.0802083 * safezoneW","0.0549786 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]]
]
*/

class voteNextMission
{
	idd = 1010;
	class controls 
	{
		class RscFrame_1800: RscText
		{
			idc = 1800;
			x = 0.3625 * safezoneW + safezoneX;
			y = 0.236103 * safezoneH + safezoneY;
			w = 0.275 * safezoneW;
			h = 0.38485 * safezoneH;
			colorBackground[] = {0,0,0,0.8};
		};
		class RscListbox_1500: RscListbox
		{
			idc = 1500;
			x = 0.373958 * safezoneW + safezoneX;
			y = 0.313073 * safezoneH + safezoneY;
			w = 0.252083 * safezoneW;
			h = 0.23091 * safezoneH;
		};
		class RscText_1000: RscText
		{
			idc = 1000;
			text = "Congratulations! You have 60s to vote for the next mission!"; //--- ToDo: Localize;
			x = 0.373958 * safezoneW + safezoneX;
			y = 0.247099 * safezoneH + safezoneY;
			w = 0.252083 * safezoneW;
			h = 0.0439828 * safezoneH;
		};
		class RscButton_1600: RscButton
		{
			idc = 1600;
			text = "Vote"; //--- ToDo: Localize;
			x = 0.373958 * safezoneW + safezoneX;
			y = 0.554979 * safezoneH + safezoneY;
			w = 0.0802083 * safezoneW;
			h = 0.0549786 * safezoneH;
			action = []call XXX_fnc_submitVote;
		};
	};
};