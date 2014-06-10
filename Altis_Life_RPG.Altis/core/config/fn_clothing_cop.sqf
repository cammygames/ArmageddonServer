#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Altis Police Department Shop"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		_ret set[count _ret,["U_Rangemaster","Cop Uniform",25]];	
	};
	
	//Hats
	case 1:
	{
			_ret set[count _ret,["H_Bandanna_camo",nil,250]];
			_ret set[count _ret,["H_Bandanna_cbr",nil,250]];
			_ret set[count _ret,["H_Bandanna_gry",nil,250]];
			_ret set[count _ret,["H_Bandanna_khk",nil,250]];
			_ret set[count _ret,["H_Bandanna_khk_hs",nil,250]];
			_ret set[count _ret,["H_Bandanna_mcamo",nil,250]];
			_ret set[count _ret,["H_Bandanna_sgg",nil,250]];
			_ret set[count _ret,["H_Bandanna_surfer",nil,250]];
			_ret set[count _ret,["H_Beret_02",nil,250]];
			_ret set[count _ret,["H_Beret_blk",nil,250]];
			_ret set[count _ret,["H_Beret_blk_POLICE",nil,250]];
			_ret set[count _ret,["H_Beret_brn_SF",nil,250]];
			_ret set[count _ret,["H_Beret_grn",nil,250]];
			_ret set[count _ret,["H_Beret_grn_SF",nil,250]];
			_ret set[count _ret,["H_Beret_ocamo",nil,250]];
			_ret set[count _ret,["H_Beret_red",nil,250]];
			_ret set[count _ret,["H_Helmet_Kerry",nil,250]];
			_ret set[count _ret,["H_HelmetB",nil,250]];
			_ret set[count _ret,["H_HelmetB_black",nil,250]];
			_ret set[count _ret,["H_HelmetB_camo",nil,250]];
			_ret set[count _ret,["H_HelmetB_desert",nil,250]];
			_ret set[count _ret,["H_HelmetB_grass",nil,250]];
			_ret set[count _ret,["H_HelmetB_light",nil,250]];
			_ret set[count _ret,["H_HelmetB_light_black",nil,250]];
			_ret set[count _ret,["H_HelmetB_light_desert",nil,250]];
			_ret set[count _ret,["H_HelmetB_light_desert",nil,250]];
			_ret set[count _ret,["H_HelmetB_light_grass",nil,250]];
			_ret set[count _ret,["H_HelmetB_light_sand",nil,250]];
			_ret set[count _ret,["H_HelmetB_light_snakeskin",nil,250]];
			_ret set[count _ret,["H_HelmetB_paint",nil,250]];
			_ret set[count _ret,["H_HelmetB_plain_blk",nil,250]];
			_ret set[count _ret,["H_HelmetB_plain_mcamo",nil,250]];
			_ret set[count _ret,["H_HelmetB_sand",nil,250]];
			_ret set[count _ret,["H_HelmetB_snakeskin",nil,250]];
			_ret set[count _ret,["H_HelmetCrew_B",nil,250]];
			_ret set[count _ret,["H_HelmetCrew_I",nil,250]];
			_ret set[count _ret,["H_HelmetCrew_O",nil,250]];
			_ret set[count _ret,["H_HelmetIA",nil,250]];
			_ret set[count _ret,["H_HelmetIA_camo",nil,250]];
			_ret set[count _ret,["H_HelmetIA_net",nil,250]];
			_ret set[count _ret,["H_HelmetLeaderO_ocamo",nil,250]];
			_ret set[count _ret,["H_HelmetLeaderO_oucamo",nil,250]];
			_ret set[count _ret,["H_HelmetO_ocamo",nil,250]];
			_ret set[count _ret,["H_HelmetO_oucamo",nil,250]];
			_ret set[count _ret,["H_HelmetSpecB",nil,250]];
			_ret set[count _ret,["H_HelmetSpecB_blk",nil,250]];
			_ret set[count _ret,["H_HelmetSpecB_paint1",nil,250]];
			_ret set[count _ret,["H_HelmetSpecB_paint2",nil,250]];
			_ret set[count _ret,["H_HelmetSpecO_blk",nil,250]];
			_ret set[count _ret,["H_HelmetSpecO_ocamo",nil,250]];
			_ret set[count _ret,["H_MilCap_blue",nil,250]];
			_ret set[count _ret,["H_MilCap_dgtl",nil,250]];
			_ret set[count _ret,["H_MilCap_gry",nil,250]];
			_ret set[count _ret,["H_MilCap_mcamo",nil,250]];
			_ret set[count _ret,["H_MilCap_ocamo",nil,250]];
			_ret set[count _ret,["H_MilCap_oucamo",nil,250]];
			_ret set[count _ret,["H_MilCap_rucamo",nil,250]];
			_ret set[count _ret,["H_PilotHelmetFighter_B",nil,250]];
			_ret set[count _ret,["H_Watchcap_blk",nil,250]];
			_ret set[count _ret,["H_Watchcap_camo",nil,250]];
			_ret set[count _ret,["H_Watchcap_khk",nil,250]];
			_ret set[count _ret,["H_Watchcap_sgg",nil,250]];
			_ret set[count _ret,["H_CrewHelmetHeli_B","Anti-Teargas",0]]; //teargas protection!
	};
	
	
	//Glasses
	case 2:
	{
		_ret = 
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Aviator",nil,75],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55]
		];
	};
	
	//Vest
	case 3:
		{
		_ret set[count _ret,["V_Rangemaster_belt",nil,800]];
		_ret set[count _ret,["V_PlateCarrierSpec_rgr",nil,1000]];
		_ret set[count _ret,["V_Chestrig_blk",nil,1000]];
		_ret set[count _ret,["V_Chestrig_khk",nil,1000]];
		_ret set[count _ret,["V_Chestrig_oli",nil,1000]];
		_ret set[count _ret,["V_Chestrig_rgr",nil,1000]];
		_ret set[count _ret,["V_HarnessO_brn",nil,1000]];
		_ret set[count _ret,["V_HarnessO_gry",nil,1000]];
		_ret set[count _ret,["V_HarnessOGL_brn",nil,1000]];
		_ret set[count _ret,["V_HarnessOGL_gry",nil,1000]];
		_ret set[count _ret,["V_HarnessOSpec_brn",nil,1000]];
		_ret set[count _ret,["V_HarnessOSpec_gry",nil,1000]];
		_ret set[count _ret,["V_I_G_resistanceLeader_F",nil,1000]];
		_ret set[count _ret,["V_PlateCarrier1_blk",nil,1500]];
		_ret set[count _ret,["V_PlateCarrier1_rgr",nil,1500]];
		_ret set[count _ret,["V_PlateCarrier2_rgr",nil,1500]];
		_ret set[count _ret,["V_PlateCarrier3_rgr",nil,1500]];
		_ret set[count _ret,["V_PlateCarrier_Kerry",nil,1500]];
		_ret set[count _ret,["V_PlateCarrierGL_rgr",nil,1500]];
		_ret set[count _ret,["V_PlateCarrierH_CTRG",nil,1500]];
		_ret set[count _ret,["V_PlateCarrierIA1_dgtl",nil,1500]];
		_ret set[count _ret,["V_PlateCarrierIA2_dgtl",nil,1500]];
		_ret set[count _ret,["V_PlateCarrierIAGL_dgtl",nil,1500]];
		_ret set[count _ret,["V_PlateCarrierL_CTRG",nil,1500]];
		_ret set[count _ret,["V_PlateCarrierSpec_rgr",nil,1500]];
		_ret set[count _ret,["V_TacVest_blk",nil,2000]];
		_ret set[count _ret,["V_TacVest_blk_POLICE",nil,2000]];
		_ret set[count _ret,["V_TacVest_brn",nil,2000]];
		_ret set[count _ret,["V_TacVest_camo",nil,2000]];
		_ret set[count _ret,["V_TacVest_khk",nil,2000]];
		_ret set[count _ret,["V_TacVest_oli",nil,2000]];
		_ret set[count _ret,["V_TacVestCamo_khk",nil,2000]];
		_ret set[count _ret,["V_TacVestIR_blk",nil,2000]];
		
	};
	
	//Backpacks
	case 4:
	{
		_ret set[count _ret,["B_Kitbag_cbr",nil,800]];
		_ret set[count _ret,["B_FieldPack_cbr",nil,500]];
		_ret set[count _ret,["B_AssaultPack_cbr",nil,700]];
		_ret set[count _ret,["B_Bergen_sgg",nil,2500]];
		_ret set[count _ret,["B_Carryall_cbr",nil,3500]];
		_ret set[count _ret,["B_FieldPack_cbr_Repair",nil,3500]];
		if(__GETC__(life_coplevel) > 6) then
		{
			_ret set[count _ret,["B_UAV_01_backpack_F",nil,15000]];
		};
	};
};

_ret;