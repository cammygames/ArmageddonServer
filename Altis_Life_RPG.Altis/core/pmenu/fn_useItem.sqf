/*
	File: fn_useItem.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main function for item effects and functionality through the player menu.
*/
private["_item"];
disableSerialization;
if((lbCurSel 2005) == -1) exitWith {hint "You need to select an item first!";};
_item = lbData[2005,(lbCurSel 2005)];

switch (true) do
{
	case (_item == "water" or _item == "coffee"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			life_thirst = 100;
			player setFatigue 0;
		};
	};
	
	case (_item == "redgull"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			life_thirst = 100;
			player setFatigue 0;
			[] spawn
			{
				life_redgull_effect = time;
				titleText["You can now run farther for 3 minutes","PLAIN"];
				player enableFatigue false;
				waitUntil {!alive player OR ((time - life_redgull_effect) > (3 * 60))};
				player enableFatigue true;
			};
		};
	};
	
	case (_item == "spikeStrip"):
	{
		if(!isNull life_spikestrip) exitWith {hint "You already have a Spike Strip active in deployment"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_spikeStrip;
		};
	};
	
	case (_item == "heroinp"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn fnc_drug_use;
		};
	};
	
	case (_item == "methp"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			ReportLoc = getPos player;
			//[[0,format["%1 was seen smoking a Joint!.",name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
			[[0,format["%1 is enjoying his crystal. Walter White is back at it!",name player]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
			[] spawn
			{
				[] spawn life_fnc_meth;
			};
		[[0,format["POLICE REPROT: I have just seen someone doing meth in Altis! Is it not YOU'RE JOB TO STOP THIS?! -Anon",name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
		};
	};

	case (_item == "wine"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			ReportLoc = getPos player;
			[] spawn
			{
				[] spawn life_fnc_alcohol;
			};
		};
	};
	
	case (_item == "moonshine"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			ReportLoc = getPos player;
			[] spawn
			{
				[] spawn life_fnc_alcohol;
			};
		};
	};
	
	case (_item == "beer"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			ReportLoc = getPos player;
			[] spawn
			{
				[] spawn life_fnc_alcohol;
			};
		};
	};
	
	case (_item == "beer2"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			ReportLoc = getPos player;
			[] spawn
			{
				[] spawn life_fnc_alcohol;
			};
		};
	};
	
	case (_item == "fuelF"):
	{
		if(vehicle player != player) exitWith {hint "You can't refuel the vehicle while in it!"};
		[] spawn life_fnc_jerryRefuel;
	};
	
	case (_item == "marijuana"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			ReportLoc = getPos player;
			//[[0,format["%1 was seen smoking a Joint!.",name player]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
			[[0,format["%1 is chilling with a big Bob Marley special blueberry Blunt!",name player]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
			life_thirst = 50;
			life_hunger = 20;
			[] spawn
			{
				titleText["You are stoned and hungry, chill!","PLAIN"];
				[] spawn life_fnc_weed;
			};
		[[0,format["POLICE REPROT: I have just seen someone smoking WEED in Altis! Is it not YOU'RE JOB TO STOP THIS?! -Anon",name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
		};
	};
	
	case (_item == "lockpick"):
	{
		[] spawn life_fnc_lockpick;
	};
	
	case (_item in ["apple","rabbit","salema","ornate","mackerel","tuna","mullet","catshark","turtle","turtlesoup","donuts","tbacon","peach"]):
	{
		[_item] call life_fnc_eatFood;
	};
	
	case "fishing":
	{
		[] spawn fnc_fishing;
	};
	
	case (_item == "pickaxe"):
	{
		[] spawn life_fnc_pickAxeUse;
	};
	
	default
	{
		hint "This item isn't usable.";
	};
};
	
[] call life_fnc_p_updateMenu;
[] call life_fnc_hudUpdate;