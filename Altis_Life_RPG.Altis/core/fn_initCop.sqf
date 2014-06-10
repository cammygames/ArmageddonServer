#include <macro.h>
/*
	File: fn_initCop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Cop Initialization file.
*/
private["_end"];
player addRating 9999999;
waitUntil {!(isNull (findDisplay 46))};
_end = false;
if(life_blacklisted) exitWith
{
	["Blacklisted",false,true] call BIS_fnc_endMission;
	sleep 30;
};

if((__GETC__(life_coplevel) == 0) && (__GETC__(life_adminlevel) == 0)) then {
	["NotWhitelisted",false,true] call BIS_fnc_endMission;
	sleep 35;
};
 
[] spawn
{
    while {true} do
    {
		if ((uniform player) == "U_Rangemaster") then
		{	
			waitUntil {uniform player == "U_Rangemaster"};
			_texture =
				switch (__GETC__(life_coplevel)) do
				{
							case 1: {"textures\cop\uniform\Cadet.jpg"};
							case 2: {"textures\cop\uniform\Constable.jpg"};
							case 3: {"textures\cop\uniform\sergeant.jpg"};
							case 4: {"textures\cop\uniform\inspector.jpg"};
							case 5: {"textures\cop\uniform\chief_Inspector.jpg"};
							case 6: {"textures\cop\uniform\superintendent.jpg"};
							case 7: {"textures\cop\uniform\cheif_superintendent.jpg"};
							case 8: {"textures\cop\uniform\cheif.jpg"};
							case 9: {"textures\cop\uniform\swat.jpg"};
							default {"textures\cop\uniform\Cadet.jpg"};
				};
				
				player setObjectTextureGlobal [0, _texture];
			waitUntil {uniform player != "U_Rangemaster"};
		};
    };
}; 

//Coptags
private["_getRank"];
_getRank = switch (__GETC__(life_coplevel)) do {case 1: {1}; case 2: {2}; case 3: {3}; case 4: {4}; case 5: {5}; case 6: {6}; case 7: {7}; case 8: {8}; case 9: {9}; default {0};};
player setVariable["coplevel",_getRank,TRUE]; 

[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.