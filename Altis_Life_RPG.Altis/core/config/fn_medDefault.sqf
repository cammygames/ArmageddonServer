/*
	File: fn_copDefault.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Default med configuration.
*/
//Strip the player down
RemoveAllWeapons player;
{player removeMagazine _x;} foreach (magazines player);
removeUniform player;
removeVest player;
removeBackpack player;
removeGoggles player;
removeHeadGear player;
{
	player unassignItem _x;
	player removeItem _x;
} foreach (assignedItems player);

//Load player with default med gear.
player addUniform "U_Rangemaster";
player addVest "V_Press_F";
player addBackpack "B_Carryall_cbr";
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemGPS";
player assignItem "ItemGPS";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "Medikit";
player addItem "ToolKit";

[] call life_fnc_saveGear;