#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{

	case "civ_neochori":
	{
		_return = 
		[
			["C_Hatchback_01_F",9500],
			["C_Offroad_01_F",12500],
			["C_SUV_01_F",35000],
			["C_Van_01_transport_F",40000],
			["C_Hatchback_01_sport_F",235000],
			["C_Kart_01_F",1000],
			["C_Kart_01_Blu_F",1000],
			["C_Kart_01_Red_F",1000],
			["C_Kart_01_Vrana_F",1000],
			["C_Kart_01_Fuel_F",1000]
		];
	}; 
	
	case "civ_neochori_truck":
	{
		_return =
		[
			["C_Offroad_01_F",15000],
			["C_Van_01_box_F",60000],
			["I_Truck_02_transport_F",75000],
			["I_Truck_02_covered_F",100000],
			["B_Truck_01_transport_F",200000],
			["O_Truck_03_transport_F",350000],
			["O_Truck_03_covered_F",390000],
			["O_Truck_03_device_F",400000]
		];	
	};
	
	case "civ_neochori_ship":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000]
		];
	};
	
	case "cop_neochori":
	{
		_return set[count _return,["C_Offroad_01_F",5000]];
		_return set[count _return,["C_SUV_01_F",20000]];
		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return,["B_MRAP_01_F",30000]];
			_return set[count _return,["C_Hatchback_01_sport_F",10000]];
			_return set[count _return,["I_MRAP_03_F",50000]];
		};
	}; 
	
	case "cop_neochori_air":
	{
		_return set[count _return,["B_Heli_Light_01_F",75000]];
		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return,["B_Heli_Transport_01_F",200000]];
            _return set[count _return,["I_Heli_light_03_unarmed_F",150000]];
		};	
	};
	
	case "cop_neochori_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",3000],
			["C_Boat_Civil_01_police_F",20000],
			["B_Boat_Armed_01_minigun_F",75000],
			["B_SDV_01_F",100000]
		];
	};

	case "cop_neochori_swat":
	{
		_return set[count _return,["B_Heli_Light_01_F",75000]];
		_return set[count _return,["B_Heli_Transport_01_F",200000]];
		_return set[count _return,["I_Heli_light_03_unarmed_F",150000]];
		_return set[count _return,["B_MRAP_01_hmg_F",750000]];
		_return set[count _return,["B_APC_Wheeled_01_cannon_F",750000]];	
	};
	
	case "med_neo":
	{
		_return set[count _return,
		["C_SUV_01_F",20000]];
	}; 
	
	case "med_neo_heli":
	{
		_return set[count _return,
		["B_Heli_Light_01_F",75000]];
		if(__GETC__(life_mediclevel) > 3) then
		{
			_return set[count _return,
			["O_Heli_Light_02_unarmed_F",200000]];
		};
	};
	
	
	case "civ_athira":
	{
		_return = 
		[
			["C_Hatchback_01_F",9500],
			["C_Offroad_01_F",12500],
			["C_SUV_01_F",35000],
			["C_Van_01_transport_F",40000],
			["C_Hatchback_01_sport_F",235000],
			["C_Kart_01_F",1000],
			["C_Kart_01_Blu_F",1000],
			["C_Kart_01_Red_F",1000],
			["C_Kart_01_Vrana_F",1000],
			["C_Kart_01_Fuel_F",1000]
		];
	};
	
	case "civ_athira_truck":
	{
		_return =
		[
			["C_Offroad_01_F",15000],
			["C_Van_01_box_F",60000],
			["I_Truck_02_transport_F",75000],
			["I_Truck_02_covered_F",100000],
			["B_Truck_01_transport_F",200000],
			["O_Truck_03_transport_F",350000],
			["O_Truck_03_covered_F",390000],
			["O_Truck_03_device_F",400000]
		];	
	};
	
	case "cop_athira":
	{
		_return set[count _return,["C_Offroad_01_F",5000]];
		_return set[count _return,["C_SUV_01_F",20000]];
		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return,
			["B_MRAP_01_F",30000]];
			_return set[count _return,
			["C_Hatchback_01_sport_F",10000]];
			_return set[count _return,
			["I_MRAP_03_F",50000]];
		};
	}; 
	
	case "cop_athira_air":
	{
		_return set[count _return,["B_Heli_Light_01_F",75000]];
		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return,["B_Heli_Transport_01_F",200000]];
            _return set[count _return,["I_Heli_light_03_unarmed_F",150000]];

		};	
	};
	
	case "cop_athira_swat":
	{
		_return set[count _return,["B_Heli_Light_01_F",75000]];
		_return set[count _return,["B_Heli_Transport_01_F",200000]];
		_return set[count _return,["I_Heli_light_03_unarmed_F",150000]];
		_return set[count _return,["B_MRAP_01_hmg_F",750000]];
		_return set[count _return,["B_APC_Wheeled_01_cannon_F",750000]];	
	};
	
	case "civ_pygros":
	{
		_return = 
		[
			["C_Hatchback_01_F",9500],
			["C_Offroad_01_F",12500],
			["C_SUV_01_F",35000],
			["C_Van_01_transport_F",40000],
			["C_Hatchback_01_sport_F",235000],
			["C_Kart_01_F",1000],
			["C_Kart_01_Blu_F",1000],
			["C_Kart_01_Red_F",1000],
			["C_Kart_01_Vrana_F",1000],
			["C_Kart_01_Fuel_F",1000]
		];
	}; 	
	
	case "civ_pygros_truck":
	{
		_return =
		[
			["C_Offroad_01_F",15000],
			["C_Van_01_box_F",60000],
			["I_Truck_02_transport_F",75000],
			["I_Truck_02_covered_F",100000],
			["B_Truck_01_transport_F",200000],
			["O_Truck_03_transport_F",350000],
			["O_Truck_03_covered_F",390000],
			["O_Truck_03_device_F",400000]
		];	
	};
	
	case "civ_pygros_ship":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000]
		];
	};
		
	case "cop_pygros":
	{
		_return set[count _return,
		["C_Offroad_01_F",15000]];
		_return set[count _return,
		["C_Offroad_01_F",5000]];
		_return set[count _return,
		["C_SUV_01_F",20000]];
		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return,
			["B_MRAP_01_F",30000]];
			_return set[count _return,
			["C_Hatchback_01_sport_F",10000]];
			_return set[count _return,
			["I_MRAP_03_F",50000]];
		};
	}; 
	
	case "cop_pygros_air":
	{
		_return set[count _return,
		["B_Heli_Light_01_F",75000]];
		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return,
			["B_Heli_Transport_01_F",200000]];
            _return set[count _return,
			["I_Heli_light_03_unarmed_F",150000]];

		};	
	};
	
	case "med_pygros":
	{
		_return set[count _return,
		["C_SUV_01_F",20000]];
	}; 
	
	case "med_heli":
	{
		_return set[count _return,
		["B_Heli_Light_01_F",75000]];
		if(__GETC__(life_mediclevel) > 3) then
		{
			_return set[count _return,
			["O_Heli_Light_02_unarmed_F",200000]];
		};
	};
	
	case "med_fed":
	{
		_return set[count _return,
		["C_SUV_01_F",20000]];
	}; 
	
	case "med_fed_heli":
	{
		_return set[count _return,
		["B_Heli_Light_01_F",75000]];
		if(__GETC__(life_mediclevel) > 3) then
		{
			_return set[count _return,
			["O_Heli_Light_02_unarmed_F",200000]];
		};
	};
	
	
	
	case "cop_pygros_swat":
	{
		_return set[count _return,
		["B_Heli_Light_01_F",75000]];
		_return set[count _return,
		["B_Heli_Transport_01_F",200000]];
		_return set[count _return,
		["I_Heli_light_03_unarmed_F",150000]];
		_return set[count _return,
		["B_MRAP_01_hmg_F",750000]];
		_return set[count _return,
		["B_APC_Wheeled_01_cannon_F",750000]];	
	};

	case "civ_sofia":
	{
		_return = 
		[
			["C_Hatchback_01_F",9500],
			["C_Offroad_01_F",12500],
			["C_SUV_01_F",35000],
			["C_Van_01_transport_F",40000],
			["C_Hatchback_01_sport_F",235000],
			["C_Kart_01_F",1000],
			["C_Kart_01_Blu_F",1000],
			["C_Kart_01_Red_F",1000],
			["C_Kart_01_Vrana_F",1000],
			["C_Kart_01_Fuel_F",1000]
		];
	}; 
	
	case "med_sofia":
	{
		_return set[count _return,
		["C_SUV_01_F",20000]];
	}; 
	
	case "med_sofia_heli":
	{
		_return set[count _return,
		["B_Heli_Light_01_F",75000]];
		if(__GETC__(life_mediclevel) > 3) then
		{
			_return set[count _return,
			["O_Heli_Light_02_unarmed_F",200000]];
		};
	};
	
	case "civ_sofia_truck":
	{
		_return =
		[
			["C_Offroad_01_F",15000],
			["C_Van_01_box_F",60000],
			["I_Truck_02_transport_F",75000],
			["I_Truck_02_covered_F",100000],
			["B_Truck_01_transport_F",200000],
			["O_Truck_03_transport_F",350000],
			["O_Truck_03_covered_F",390000],
			["O_Truck_03_device_F",400000]
		];	
	};

	case "civ_air_1":
	{
		_return =
		[
			["B_Heli_Light_01_F",253000],
			["O_Heli_Light_02_unarmed_F",750000]
		];
	};

	case "donator_island":
	{
		_return =
		[
			["C_Offroad_01_F",2500],
			["C_SUV_01_F",20000]
		];

		if(__GETC__(life_donator) >= 1) then
		{
			_return set[count _return,["C_Van_01_Fuel_F",7500]];
			_return set[count _return,["B_Truck_01_box_F",250000]];
			_return set[count _return,["B_Heli_Light_01_F",200000]];
			_return set[count _return,["O_Heli_Light_02_unarmed_F",600000]];
		};
		if(__GETC__(life_donator) >= 2) then
		{
			_return set[count _return,["C_Hatchback_01_sport_F",10000]];
			_return set[count _return,["I_Heli_Transport_02_F",1200000]];
			_return set[count _return,["I_MRAP_03_F",50000]];
		};
		if (__GETC__(life_donator) >= 4) then
		{
			_return set[count _return,
			["B_APC_Wheeled_01_cannon_F",750000]];
		};	
	};

	case "med_reb":
	{
		_return set[count _return,
		["C_SUV_01_F",20000]];
	}; 
	
	case "med_reb_heli":
	{
		_return set[count _return,
		["B_Heli_Light_01_F",75000]];
		if(__GETC__(life_mediclevel) > 3) then
		{
			_return set[count _return,
			["O_Heli_Light_02_unarmed_F",200000]];
		};
	};
	
	
	case "reb_hq":
	{
		_return =
		[
			["B_G_Offroad_01_F",15000],
			["O_MRAP_02_F",150000],
			["B_Heli_Light_01_F",325000],
			["C_Kart_01_F",1000],
			["C_Kart_01_Blu_F",1000],
			["C_Kart_01_Red_F",1000],
			["C_Kart_01_Vrana_F",1000],
			["C_Kart_01_Fuel_F",1000]
		];
		
		if(license_civ_rebel) then
		{
			_return set[count _return,
			["B_G_Offroad_01_armed_F",750000]];
		};
	};
	
	case "donator_reb":
	{
		_return =
		[
			["C_Offroad_01_F",2500],
			["C_SUV_01_F",20000]
		];

		if(__GETC__(life_donator) >= 1) then
		{
			_return set[count _return,["C_Van_01_Fuel_F",7500]];
			_return set[count _return,["B_Truck_01_box_F",250000]];
			_return set[count _return,["B_Heli_Light_01_F",200000]];
			_return set[count _return,["O_Heli_Light_02_unarmed_F",600000]];
		};
		if(__GETC__(life_donator) >= 2) then
		{
			_return set[count _return,["C_Hatchback_01_sport_F",10000]];
			_return set[count _return,["I_Heli_Transport_02_F",1200000]];
			_return set[count _return,["I_MRAP_03_F",50000]];
		};
		if (__GETC__(life_donator) >= 4) then
		{
			_return set[count _return,
			["B_APC_Wheeled_01_cannon_F",750000]];
		};	
	};
	
	case "reb_legion":
	{
		_return =
		[	
			["B_G_Offroad_01_F",15000],
			["O_MRAP_02_F",150000],
			["B_Heli_Light_01_F",325000],
			["C_Kart_01_F",1000],
			["C_Kart_01_Blu_F",1000],
			["C_Kart_01_Red_F",1000],
			["C_Kart_01_Vrana_F",1000],
			["C_Kart_01_Fuel_F",1000]
		];
		
		if(license_civ_rebel) then
		{
			_return set[count _return,
			["B_G_Offroad_01_armed_F",550000]];
		};
	};
	
	case "donator_legion":
	{
		_return =
		[
			["C_Offroad_01_F",2500],
			["C_SUV_01_F",20000]
		];

		if(__GETC__(life_donator) >= 1) then
		{
			_return set[count _return,["C_Van_01_Fuel_F",7500]];
			_return set[count _return,["B_Truck_01_box_F",250000]];
			_return set[count _return,["B_Heli_Light_01_F",200000]];
			_return set[count _return,["O_Heli_Light_02_unarmed_F",600000]];
		};
		if(__GETC__(life_donator) >= 2) then
		{
			_return set[count _return,["C_Hatchback_01_sport_F",10000]];
			_return set[count _return,["I_Heli_Transport_02_F",1200000]];
			_return set[count _return,["I_MRAP_03_F",50000]];
		};
		if (__GETC__(life_donator) >= 4) then
		{
			_return set[count _return,
			["B_APC_Wheeled_01_cannon_F",750000]];
		};	
	};

	case "reb_rsr":
	{
		_return =
		[	
			["B_G_Offroad_01_F",15000],
			["O_MRAP_02_F",150000],
			["B_Heli_Light_01_F",325000],
			["C_Kart_01_F",1000],
			["C_Kart_01_Blu_F",1000],
			["C_Kart_01_Red_F",1000],
			["C_Kart_01_Vrana_F",1000],
			["C_Kart_01_Fuel_F",1000]
		];
		
		if(license_civ_rebel) then
		{
			_return set[count _return,
			["B_G_Offroad_01_armed_F",550000]];
		};
	};
	
	case "donator_rsr":
	{
		_return =
		[
			["C_Offroad_01_F",2500],
			["C_SUV_01_F",20000]
		];

		if(__GETC__(life_donator) >= 1) then
		{
			_return set[count _return,["C_Van_01_Fuel_F",7500]];
			_return set[count _return,["B_Truck_01_box_F",250000]];
			_return set[count _return,["B_Heli_Light_01_F",200000]];
			_return set[count _return,["O_Heli_Light_02_unarmed_F",600000]];
		};
		if(__GETC__(life_donator) >= 2) then
		{
			_return set[count _return,["C_Hatchback_01_sport_F",10000]];
			_return set[count _return,["I_Heli_Transport_02_F",1200000]];
			_return set[count _return,["I_MRAP_03_F",50000]];
		};
		if (__GETC__(life_donator) >= 4) then
		{
			_return set[count _return,
			["B_APC_Wheeled_01_cannon_F",750000]];
		};	
	};

	case "reb_msf":
	{
		_return =
		[	
			["B_G_Offroad_01_F",15000],
			["O_MRAP_02_F",150000],
			["B_Heli_Light_01_F",325000],
			["C_Kart_01_F",1000],
			["C_Kart_01_Blu_F",1000],
			["C_Kart_01_Red_F",1000],
			["C_Kart_01_Vrana_F",1000],
			["C_Kart_01_Fuel_F",1000]
		];
		
		if(license_civ_rebel) then
		{
			_return set[count _return,
			["B_G_Offroad_01_armed_F",550000]];
		};
	};
	
	case "donator_msf":
	{
		_return =
		[
			["C_Offroad_01_F",2500],
			["C_SUV_01_F",20000]
		];

		if(__GETC__(life_donator) >= 1) then
		{
			_return set[count _return,["C_Van_01_Fuel_F",7500]];
			_return set[count _return,["B_Truck_01_box_F",250000]];
			_return set[count _return,["B_Heli_Light_01_F",200000]];
			_return set[count _return,["O_Heli_Light_02_unarmed_F",600000]];
		};
		if(__GETC__(life_donator) >= 2) then
		{
			_return set[count _return,["C_Hatchback_01_sport_F",10000]];
			_return set[count _return,["I_Heli_Transport_02_F",1200000]];
			_return set[count _return,["I_MRAP_03_F",50000]];
		};
		if (__GETC__(life_donator) >= 4) then
		{
			_return set[count _return,
			["B_APC_Wheeled_01_cannon_F",750000]];
		};	
	};
	
	
	case "derby":
	{
		_return = 
		[
			["C_Kart_01_F",1000],
			["C_Kart_01_Blu_F",1000],
			["C_Kart_01_Red_F",1000],
			["C_Kart_01_Vrana_F",1000],
			["C_Kart_01_Fuel_F",1000]
		];
	};
	
	case "admin_fun":
	{
		if(__GETC__(life_adminlevel) > 1) then
		{
			_return = 
			[
				["C_Kart_01_F",0],
				["C_Kart_01_Blu_F",0],
				["C_Kart_01_Red_F",0],
				["C_Kart_01_Vrana_F",0],
				["C_Kart_01_Fuel_F",0],
				["B_Heli_Light_01_F",0],
				["B_Heli_Light_01_armed_F",0],
				["B_Heli_Attack_01_F",0],
				["B_Heli_Transport_01_F",0],
				["B_Heli_Transport_01_camo_F",0],
				["B_APC_Tracked_01_rcws_F",0],
				["B_APC_Tracked_01_CRV_F",0],
				["B_APC_Tracked_01_AA_F",0],
				["B_MBT_01_cannon_F",0],
				["B_MBT_01_arty_F",0],
				["B_MBT_01_mlrs_F",0],
				["B_UAV_01_F",0],
				["B_UAV_02_F",0],
				["B_UAV_02_CAS_F",0],
				["B_MRAP_01_F",0],
				["B_MRAP_01_gmg_F",0],
				["B_MRAP_01_hmg_F",0],
				["B_Quadbike_01_F",0],
				["B_Truck_01_transport_F",0],
				["B_Truck_01_covered_F",0],
				["B_G_Offroad_01_F",0],
				["B_G_Offroad_01_armed_F",0],
				["B_G_Quadbike_01_F",0],
				["B_Truck_01_mover_F",0],
				["B_Truck_01_box_F",0],
				["B_Truck_01_Repair_F",0],
				["B_Truck_01_ammo_F",0],
				["B_Truck_01_fuel_F",0],
				["B_Truck_01_medical_F",0],
				["B_APC_Wheeled_01_cannon_F",0],
				["B_UGV_01_F",0],
				["B_UGV_01_rcws_F",0],
				["O_Heli_Light_02_F",0],
				["O_Heli_Light_02_unarmed_F",0],
				["O_Heli_Attack_02_F",0],
				["O_Heli_Attack_02_black_F",0],
				["O_APC_Tracked_02_cannon_F",0],
				["O_APC_Tracked_02_AA_F",0],
				["O_MBT_02_cannon_F",0],
				["O_MBT_02_arty_F",0],
				["O_MRAP_02_F",0],
				["O_MRAP_02_hmg_F",0],
				["O_MRAP_02_gmg_F",0],
				["O_Quadbike_01_F",0],
				["O_Truck_02_covered_F",0],
				["O_Truck_02_transport_F",0],
				["O_G_Offroad_01_F",0],
				["O_G_Offroad_01_armed_F",0],
				["O_Truck_02_Ammo_F",0],
				["I_Heli_Transport_02_F",0],
				["I_Heli_light_03_F",0],
				["I_Heli_light_03_unarmed_F",0],
				["I_Plane_Fighter_03_CAS_F",0],
				["I_Plane_Fighter_03_AA_F",0]
			];
		};
	}; 
	
	case "event_base":
	{
		if(__GETC__(life_adminlevel) > 1) then
		{
			_return = 
			[
				["B_Heli_Light_01_F",0],
				["B_Heli_Light_01_armed_F",0],
				["B_Heli_Attack_01_F",0],
				["B_Heli_Transport_01_F",0],
				["B_Heli_Transport_01_camo_F",0],
				["B_APC_Tracked_01_rcws_F",0],
				["B_APC_Tracked_01_CRV_F",0],
				["B_APC_Tracked_01_AA_F",0],
				["B_MBT_01_cannon_F",0],
				["B_MBT_01_arty_F",0],
				["B_MBT_01_mlrs_F",0],
				["B_UAV_01_F",0],
				["B_UAV_02_F",0],
				["B_UAV_02_CAS_F",0],
				["B_MRAP_01_F",0],
				["B_MRAP_01_gmg_F",0],
				["B_MRAP_01_hmg_F",0],
				["B_Quadbike_01_F",0],
				["B_Truck_01_transport_F",0],
				["B_Truck_01_covered_F",0],
				["B_G_Offroad_01_F",0],
				["B_G_Offroad_01_armed_F",0],
				["B_G_Quadbike_01_F",0],
				["B_Truck_01_mover_F",0],
				["B_Truck_01_box_F",0],
				["B_Truck_01_Repair_F",0],
				["B_Truck_01_ammo_F",0],
				["B_Truck_01_fuel_F",0],
				["B_Truck_01_medical_F",0],
				["B_APC_Wheeled_01_cannon_F",0],
				["B_UGV_01_F",0],
				["B_UGV_01_rcws_F",0],
				["O_Heli_Light_02_F",0],
				["O_Heli_Light_02_unarmed_F",0],
				["O_Heli_Attack_02_F",0],
				["O_Heli_Attack_02_black_F",0],
				["O_APC_Tracked_02_cannon_F",0],
				["O_APC_Tracked_02_AA_F",0],
				["O_MBT_02_cannon_F",0],
				["O_MBT_02_arty_F",0],
				["O_MRAP_02_F",0],
				["O_MRAP_02_hmg_F",0],
				["O_MRAP_02_gmg_F",0],
				["O_Quadbike_01_F",0],
				["O_Truck_02_covered_F",0],
				["O_Truck_02_transport_F",0],
				["O_G_Offroad_01_F",0],
				["O_G_Offroad_01_armed_F",0],
				["O_Truck_02_Ammo_F",0],
				["I_Heli_Transport_02_F",0],
				["I_Heli_light_03_F",0],
				["I_Heli_light_03_unarmed_F",0],
				["I_Plane_Fighter_03_CAS_F",0],
				["I_Plane_Fighter_03_AA_F",0]
			];
		};
	}; 
	
};

_return;
