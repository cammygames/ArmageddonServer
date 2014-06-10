/*
	File: fn_medicLoadout.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Loads the medic out with the default gear.
*/
removeAllContainers player;
removeAllWeapons player;
removeVest player;
removeBackpack player;

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
removeGoggles player;
removeHeadGear player;
if(hmd player != "") then {
	player unlinkItem (hmd player);
};

player setObjectTextureGlobal [0,"textures\medic_uniform.jpg"];