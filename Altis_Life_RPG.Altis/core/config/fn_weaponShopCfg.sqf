#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{

	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"You are not an EMS Medic"};
			default {
				["Hospital EMS Shop",
					[
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,1],
						["muzzle_snds_L",nil,650],
						["FirstAidKit",nil,150],
						["Medikit",nil,1],
						["NVGoggles",nil,2000],
						["B_Carryall_cbr",nil,1],
						["V_Press_F",nil,1]
					]
				];
			};
		};
	};

	case "cop_basic":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			default
			{
				["Altis Recruit Shop",
					[
						["arifle_sdar_F","Taser Rifle",20000],
						["hgun_P07_snds_F","Stun Pistol",2000],
						["hgun_P07_F",nil,7500],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["muzzle_snds_L",nil,650],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["16Rnd_9x21_Mag",nil,50],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",150]
					]
				];
			};
		};
	};
	
	case "cop_patrol":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 2): {"You are not at a patrol officer rank!"};
			default
			{
				["Altis Patrol Officer Shop",
					[
						["arifle_MXC_F",nil,25000],
						["SMG_01_Holo_pointer_snds_F",nil,20000],
						["muzzle_snds_H",nil,650],
						["optic_Holosight_smg",nil,5000],
						["30Rnd_65x39_caseless_mag",nil,250],
						["30Rnd_65x39_caseless_mag_Tracer",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000]	
					]
				];
			};
		};
	};
	
	case "cop_senior_patrol":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 3): {"You are not at a senior patrol officer rank!"};
			default
			{
				["Altis Senior Patrol Officer Shop",
					[
                       	["arifle_MX_Holo_pointer_F",nil,25000],
						["muzzle_snds_H",nil,650],
						["optic_Holosight_smg",nil,5000],
						["30Rnd_65x39_caseless_mag",nil,250],
						["30Rnd_65x39_caseless_mag_Tracer",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000]	
					]
				];
			};
		};
	};
	
	case "cop_corp":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 4): {"You are not at a Corporal rank!"};
			default
			{
				["Altis Corporal Shop",
					[
                       	["arifle_MX_Black_F",nil,25000],
						["muzzle_snds_H",nil,650],
						["optic_Holosight_smg",nil,5000],
						["30Rnd_65x39_caseless_mag",nil,250],
						["30Rnd_65x39_caseless_mag_Tracer",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000]	
					]
				];
			};
		};
	};
	
	case "cop_sgt":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 5): {"You are not at a Sergeant rank!"};
			default
			{
				["Altis Sergeant Shop",
					[
                       	["arifle_MXM_F",nil,25000],
						["muzzle_snds_H",nil,650],
						["optic_Holosight_smg",nil,5000],
						["optic_Arco",nil,10000],
						["optic_Hamr",nil,20000],
						["30Rnd_65x39_caseless_mag",nil,250],
						["30Rnd_65x39_caseless_mag_Tracer",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000]	
					]
				];
			};
		};
	};
	
	case "cop_captin":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 6): {"You are not at a Captin rank!"};
			default
			{
				["Altis Captin Shop",
					[
                       	["srifle_EBR_F",nil,25000],
						["LMG_Mk200_F",nil,40000],
						["muzzle_snds_H",nil,650],
						["optic_Holosight_smg",nil,5000],
						["optic_Arco",nil,10000],
						["optic_Hamr",nil,20000],
						["200Rnd_65x39_cased_Box",nil,250],
						["20Rnd_762x51_Mag",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000]	
					]
				];
			};
		};
	};
	
	case "cop_luit":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 7): {"You are not at a Lieutenant rank!"};
			default
			{
				["Altis Lieutenant Shop",
					[
                       	["srifle_EBR_F",nil,25000],
						["LMG_Mk200_F",nil,40000],
						["muzzle_snds_H",nil,650],
						["optic_Holosight_smg",nil,5000],
						["optic_Arco",nil,10000],
						["optic_Hamr",nil,20000],
						["200Rnd_65x39_cased_Box",nil,250],
						["20Rnd_762x51_Mag",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["launch_NLAW_F",nil,100000],
						["NLAW_F",nil,50000]
					]
				];
			};
		};
	};
	
	case "cop_cheif":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 8): {"You are not the Chief Of Police!"};
			default
			{
				["Altis Chief Of Police Shop",
					[
                       	["srifle_EBR_F",nil,25000],
						["LMG_Zafir_F",nil,40000],
						["muzzle_snds_H",nil,650],
						["optic_Holosight_smg",nil,5000],
						["optic_Arco",nil,10000],
						["optic_Hamr",nil,20000],
						["optic_Nightstalker",nil,20000],
						["150Rnd_762x51_Box",nil,250],
						["20Rnd_762x51_Mag",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["NVGoggles",nil,2000],
						["launch_NLAW_F",nil,100000],
						["NLAW_F",nil,50000]
					]
				];
			};
		};
	};
	
	case "cop_swat":
	{
	  switch(true) do
	  {
	   case (playerSide != west): {"You are not a cop!"};
	   case (__GETC__(life_coplevel) < 9): {"You are not at a S.W.A.T rank!"};
	   default
	   {
			["Altis S.W.A.T Shop",
			 [
				 ["SMG_02_ACO_F",nil,15000],
				 ["hgun_ACPC2_F",nil,17500],
				 ["SMG_01_Holo_pointer_snds_F",nil,35000],
				 ["arifle_MX_Black_F",nil,35000],
				 ["arifle_MXC_Black_F",nil,30000],
				 ["arifle_MXM_Black_F",nil,30000],
				 ["arifle_MX_SW_Black_F",nil,30000],
				 ["srifle_EBR_F",nil,35000],
				 ["hgun_Pistol_heavy_01_F",nil,50],
				 ["srifle_GM6_SOS_F",nil,20000],
				 ["9Rnd_45ACP_Mag",nil,200],
				 ["30Rnd_45ACP_Mag_SMG_01",nil,1750],
				 ["30Rnd_65x39_caseless_mag",nil,100],
				 ["100Rnd_65x39_caseless_mag",nil,100],
				 ["20Rnd_762x51_Mag",nil,60],
				 ["11Rnd_45ACP_Mag",nil,50],
				 ["5Rnd_127x108_Mag",nil,50],
				 ["5Rnd_127x108_APDS_Mag",nil,50],
				 ["optic_Holosight",nil,1200],
				 ["optic_Arco",nil,2500],
				 ["optic_SOS",nil,100],
				 ["optic_MRD",nil,50],
				 ["optic_LRPS",nil,200],
				 ["optic_tws",nil,1000],
				 ["acc_flashlight",nil,750],
				 ["acc_pointer_IR",nil,750],
				 ["muzzle_snds_H",nil,2750],
				 ["muzzle_snds_B",nil,3000],
				 ["muzzle_snds_acp",nil,50],
				 ["SmokeShell",nil,50],
				 ["SmokeShellRed",nil,50],
				 ["SmokeShellGreen",nil,50],
				 ["MiniGrenade","FlashBang",50],
				 ["SmokeShellYellow",nil,50],
				 ["SmokeShellPurple",nil,50],
				 ["SmokeShellBlue",nil,50],
				 ["SmokeShellOrange",nil,50],
				 ["B_UAVTERMINAL",nil,5000],
				 ["B_UAV_01_backpack_F",nil,20000],
				 ["1Rnd_SmokeGreen_Grenade_shell",nil,125],
				 ["arifle_MX_GL_Black_F",nil,20000]
			 ]
			];
		};
	  };
	};
	
	case "cop_donator":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_donator) == 0): {"You are not a donator!"};
			case (__GETC__(life_donator) == 1):
			{
				["Armageddon Donator Shop T1",
					[
						["hgun_Rook40_F",nil,750],
						["hgun_PDW2000_F",nil,6500],
						["optic_ACO_grn_smg",nil,750],
						["ToolKit",nil,50],
						["itemgps",nil,50],
						["16Rnd_9x21_Mag",nil,25],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};

			case (__GETC__(life_donator) == 2):
			{
				["Armageddon Donator Shop T2",
					[
						["arifle_MK20C_plain_F",nil,25000],
						["NVGoggles",nil,350],
						["30Rnd_556x45_Stanag",nil,125],
						["hgun_Rook40_F",nil,750],
						["hgun_PDW2000_F",nil,6500],
						["optic_ACO_grn_smg",nil,750],
						["ToolKit",nil,50],
						["itemgps",nil,50],
						["16Rnd_9x21_Mag",nil,25],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};

			case (__GETC__(life_donator) == 3 ):
			{
				["Armageddon Donator Shop T3",
					[
						["hgun_Rook40_F",nil,500],
						["hgun_PDW2000_F",nil,6500],
						["hgun_pistol_heavy_01_F",nil,5850],
						["arifle_Mk20C_plain_F",nil,25000],
						["LMG_Mk200_F",nil,20000],
						["optic_ACO_grn_smg",nil,750],
						["optic_MRCO",nil,10000],
						["NVGoggles",nil,350],
						["ToolKit",nil,50],
						["itemgps",nil,50],
						["FirstAidKit",nil,25],
						["16Rnd_9x21_Mag",nil,25],
						["30Rnd_9x21_Mag",nil,75],
						["11Rnd_45ACP_Mag",nil,85],
						["200Rnd_65x39_cased_Box",nil,150],
						["30Rnd_556x45_Stanag",nil,125],
						["arifle_MK20C_plain_F",nil,25000],
						["NVGoggles",nil,350],
						["30Rnd_556x45_Stanag",nil,125],
						["hgun_Rook40_F",nil,750],
						["hgun_PDW2000_F",nil,6500],
						["optic_ACO_grn_smg",nil,750],
						["ToolKit",nil,50],
						["itemgps",nil,50],
						["16Rnd_9x21_Mag",nil,25],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
			
			case (__GETC__(life_donator) == 4):
			{
				["Armageddon Donator Shop T4",
					[
						["arifle_MX_SW_pointer_F",nil,30000],
						["100Rnd_65x39_caseless_mag",nil,500],
						["30Rnd_65x39_caseless_mag",nil,500],
						["arifle_TRG20_Holo_F ",nil,25000],
						["30Rnd_556x45_Stanag",nil,250],
						["optic_ACO_grn_smg",nil,750],
						["optic_MRCO",nil,10000],
						["NVGoggles",nil,350],
						["ToolKit",nil,50],
						["itemgps",nil,50],
						["FirstAidKit",nil,25],
						["arifle_MK20C_plain_F",nil,25000],
						["NVGoggles",nil,350],
						["30Rnd_556x45_Stanag",nil,125],
						["hgun_Rook40_F",nil,750],
						["hgun_PDW2000_F",nil,6500],
						["optic_ACO_grn_smg",nil,750],
						["ToolKit",nil,50],
						["itemgps",nil,50],
						["16Rnd_9x21_Mag",nil,25],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
			
			case (__GETC__(life_donator) == 5):
			{
				["Armageddon Donator Shop T5",
					[
						["arifle_MXM_Hamr_pointer_F",nil,30000],
						["arifle_Katiba_C_ACO_F",nil,30000],
						["arifle_Katiba_GL_ACO_F",nil,30000],
						["arifle_Katiba_ACO_F",nil,30000],
						["srifle_EBR_ARCO_pointer_F",nil,30000],
						["30Rnd_65x39_caseless_green",nil,500],
						["30Rnd_65x39_caseless_mag",nil,500],
						["20Rnd_762x51_Mag",nil,500],
						["optic_ACO_grn_smg",nil,750],
						["optic_MRCO",nil,10000],
						["NVGoggles",nil,350],
						["ToolKit",nil,50],
						["itemgps",nil,50],
						["FirstAidKit",nil,25],
						["arifle_MK20C_plain_F",nil,25000],
						["NVGoggles",nil,350],
						["30Rnd_556x45_Stanag",nil,125],
						["hgun_Rook40_F",nil,750],
						["hgun_PDW2000_F",nil,6500],
						["optic_ACO_grn_smg",nil,750],
						["ToolKit",nil,50],
						["itemgps",nil,50],
						["16Rnd_9x21_Mag",nil,25],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
			
			
		};
	};

	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civ!"};
			case (!license_civ_rebel): {"You don't have a Rebel training license!"};
			default
			{
				["Mohammed's Jihadi Shop",
					[
						["arifle_TRG20_F",nil,25000],
						["optic_tws",nil,1000],
						["optic_tws_mg",nil,1000],
						["muzzle_snds_H_MG",nil,6500],
				    	["arifle_Katiba_F",nil,30000],
				    	["srifle_DMR_01_F",nil,50000],
				      	["srifle_LRR_SOS_F",nil,210000],
				      	["arifle_SDAR_F",nil,50000],
				      	["LMG_Zafir_F",nil,20000],
				      	["launch_Titan_F",nil,100000],
				      	["optic_ACO_grn",nil,3500],
				      	["optic_Holosight",nil,3600],
				      	["optic_SOS",nil,10000],
				      	["optic_Hamr",nil,6500],
						["optic_DMS",nil,7500],
				      	["acc_flashlight",nil,1000],
				      	["muzzle_snds_M",nil,6500],
				      	["muzzle_snds_H",nil,6500],
						["muzzle_snds_B",nil,7500],
				      	["Binocular",nil,150],
				      	["ItemGPS",nil,100],
				      	["Rangefinder",nil,150],
				      	["ToolKit",nil,250],
				      	["FirstAidKit",nil,150],
				      	["NVGoggles",nil,2000],
				      	["7Rnd_408_Mag",nil,50],
				      	["30Rnd_9x21_Mag",nil,200],
				      	["20Rnd_556x45_UW_mag",nil,125],
				      	["30Rnd_556x45_Stanag",nil,300],
				      	["10Rnd_762x51_Mag",nil,500],
				      	["150Rnd_762x51_Box",nil,500],
				      	["Titan_AA",nil,1000],
				      	["30Rnd_65x39_caseless_green",nil,275]
					]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civ!"};
			case (!license_civ_gun): {"You don't have a Firearms license!"};
			default
			{
				["Billy Joe's Firearms",
					[
						["hgun_Rook40_F",nil,6500],
						["hgun_Pistol_heavy_02_F",nil,9850],
						["hgun_ACPC2_F",nil,11500],
						["hgun_PDW2000_F",nil,20000],
						["optic_ACO_grn_smg",nil,2500],
						["V_Rangemaster_belt",nil,4900],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
		};
	};
	
	case "donator":
	{
		switch(true) do
		{
			case (__GETC__(life_donator) == 0): {"You are not a donator!"};
			case (__GETC__(life_donator) == 1):
			{
				["Armageddon Donator Shop T1",
					[
						["hgun_Rook40_F",nil,750],
						["hgun_PDW2000_F",nil,6500],
						["optic_ACO_grn_smg",nil,750],
						["ToolKit",nil,50],
						["itemgps",nil,50],
						["16Rnd_9x21_Mag",nil,25],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};

			case (__GETC__(life_donator) == 2):
			{
				["Armageddon Donator Shop T2",
					[
						["arifle_MK20C_plain_F",nil,25000],
						["NVGoggles",nil,350],
						["30Rnd_556x45_Stanag",nil,125],
						["hgun_Rook40_F",nil,750],
						["hgun_PDW2000_F",nil,6500],
						["optic_ACO_grn_smg",nil,750],
						["ToolKit",nil,50],
						["itemgps",nil,50],
						["16Rnd_9x21_Mag",nil,25],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};

			case (__GETC__(life_donator) == 3 ):
			{
				["Armageddon Donator Shop T3",
					[
						["hgun_Rook40_F",nil,500],
						["hgun_PDW2000_F",nil,6500],
						["hgun_pistol_heavy_01_F",nil,5850],
						["arifle_Mk20C_plain_F",nil,25000],
						["LMG_Mk200_F",nil,20000],
						["optic_ACO_grn_smg",nil,750],
						["optic_MRCO",nil,10000],
						["NVGoggles",nil,350],
						["ToolKit",nil,50],
						["itemgps",nil,50],
						["FirstAidKit",nil,25],
						["16Rnd_9x21_Mag",nil,25],
						["30Rnd_9x21_Mag",nil,75],
						["11Rnd_45ACP_Mag",nil,85],
						["200Rnd_65x39_cased_Box",nil,150],
						["30Rnd_556x45_Stanag",nil,125],
						["arifle_MK20C_plain_F",nil,25000],
						["NVGoggles",nil,350],
						["30Rnd_556x45_Stanag",nil,125],
						["hgun_Rook40_F",nil,750],
						["hgun_PDW2000_F",nil,6500],
						["optic_ACO_grn_smg",nil,750],
						["ToolKit",nil,50],
						["itemgps",nil,50],
						["16Rnd_9x21_Mag",nil,25],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
			
			case (__GETC__(life_donator) == 4):
			{
				["Armageddon Donator Shop T4",
					[
						["arifle_MX_SW_pointer_F",nil,30000],
						["100Rnd_65x39_caseless_mag",nil,500],
						["30Rnd_65x39_caseless_mag",nil,500],
						["arifle_TRG20_Holo_F ",nil,25000],
						["30Rnd_556x45_Stanag",nil,250],
						["optic_ACO_grn_smg",nil,750],
						["optic_MRCO",nil,10000],
						["NVGoggles",nil,350],
						["ToolKit",nil,50],
						["itemgps",nil,50],
						["FirstAidKit",nil,25],
						["arifle_MK20C_plain_F",nil,25000],
						["NVGoggles",nil,350],
						["30Rnd_556x45_Stanag",nil,125],
						["hgun_Rook40_F",nil,750],
						["hgun_PDW2000_F",nil,6500],
						["optic_ACO_grn_smg",nil,750],
						["ToolKit",nil,50],
						["itemgps",nil,50],
						["16Rnd_9x21_Mag",nil,25],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
			
			case (__GETC__(life_donator) == 5):
			{
				["Armageddon Donator Shop T5",
					[
						["arifle_MXM_Hamr_pointer_F",nil,30000],
						["arifle_Katiba_C_ACO_F",nil,30000],
						["arifle_Katiba_GL_ACO_F",nil,30000],
						["arifle_Katiba_ACO_F",nil,30000],
						["srifle_EBR_ARCO_pointer_F",nil,30000],
						["30Rnd_65x39_caseless_green",nil,500],
						["30Rnd_65x39_caseless_mag",nil,500],
						["20Rnd_762x51_Mag",nil,500],
						["optic_ACO_grn_smg",nil,750],
						["optic_MRCO",nil,10000],
						["NVGoggles",nil,350],
						["ToolKit",nil,50],
						["itemgps",nil,50],
						["FirstAidKit",nil,25],
						["arifle_MK20C_plain_F",nil,25000],
						["NVGoggles",nil,350],
						["30Rnd_556x45_Stanag",nil,125],
						["hgun_Rook40_F",nil,750],
						["hgun_PDW2000_F",nil,6500],
						["optic_ACO_grn_smg",nil,750],
						["ToolKit",nil,50],
						["itemgps",nil,50],
						["16Rnd_9x21_Mag",nil,25],
						["30Rnd_9x21_Mag",nil,75],
						["arifle_MX_SW_pointer_F",nil,30000],
						["100Rnd_65x39_caseless_mag",nil,500],
						["30Rnd_65x39_caseless_mag",nil,500],
						["arifle_TRG20_Holo_F ",nil,25000],
						["30Rnd_556x45_Stanag",nil,250],
						["optic_ACO_grn_smg",nil,750],
						["optic_MRCO",nil,10000],
						["NVGoggles",nil,350],
						["ToolKit",nil,50],
						["itemgps",nil,50],
						["FirstAidKit",nil,25],
						["arifle_MK20C_plain_F",nil,25000],
						["NVGoggles",nil,350],
						["30Rnd_556x45_Stanag",nil,125],
						["hgun_Rook40_F",nil,750],
						["hgun_PDW2000_F",nil,6500],
						["optic_ACO_grn_smg",nil,750],
						["ToolKit",nil,50],
						["itemgps",nil,50],
						["16Rnd_9x21_Mag",nil,25],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};		
		};
	};
	
	case "genstore":
	{
		["Altis General Store",
			[
				["Binocular",nil,150],
				["ItemGPS",nil,100],
				["ToolKit",nil,250],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,2000],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
			]
		];
	};
};
