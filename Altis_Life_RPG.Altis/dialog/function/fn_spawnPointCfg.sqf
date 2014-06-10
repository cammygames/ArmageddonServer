/*
	File: fn_spawnPointCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for available spawn points depending on the units side.
	
	Return:
	[Spawn Marker,Spawn Name,Image Path]
*/
private["_side"];
_side = [_this,0,civilian,[civilian]] call BIS_fnc_param;

//Spawn Marker, Spawn Name, PathToImage
switch (_side) do
{
	case west:
	{
		[
			["cop_spawn_1","Neochori HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["cop_spawn_2","Pyrgos HQ","\a3\ui_f\data\map\MapControl\fuelstation_ca.paa"],
			["cop_spawn_3","Athira HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["derby","Demolition Derby","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
		];
	};
	
	case civilian:
	{
		[
			["civ_spawn_1","Neochori","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_2","Pyrgos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_3","Athira","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_4","Sofia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["derby","Demolition Derby","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
		];
	};
	
	case independent: {
		[
			["medic_spawn_1","Pygros Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_reb","Medic Outpost (Reb)","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_sofia","Medic Outpost (Sofia)","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_neo","Medic Outpost (Neochori)","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_fed","Medic Outpost (Fed)","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["derby","Demolition Derby","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
		];
	};
};