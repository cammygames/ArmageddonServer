/*
	File: fn_vehShopLicenses.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Checks what shop it is and sometimes the vehicle to determine whether or not they have the license.
	
	Returns:
	TRUE if they have the license or are allowed to get that specific vehicle without having that license.
	FALSE if they don't have the license or are not allowed to obtain that vehicle.
*/
private["_veh","_ret"];
_veh = _this select 0;
_ret = false;

if(_veh == "B_Quadbike_01_F") exitWith {false}; //ATV's are banned.

switch (life_veh_shop select 0) do
{
	
	/* Neochori Shops */

	case "civ_neochori": {_ret = license_civ_driver;};
	case "civ_neochori_truck":	{_ret = license_civ_truck;};
	case "civ_neochori_ship": {_ret = license_civ_boat;};
	case "cop_neochori": {_ret = true;};
	case "cop_neochori_air": {_ret = license_cop_air;};
	case "cop_neochori_ship": {_ret = license_cop_cg;};
	case "cop_neochori_swat": {_ret = true;};
	case "med_neo": {_ret = true;};
	case "med_neo_heli": {_ret = true;};
	
	/* Athira Shops */
	
	case "civ_athira": {_ret = license_civ_driver;};
	case "civ_athira_truck":	{_ret = license_civ_truck;};
	case "cop_athira": {_ret = true;};
	case "cop_athira_air": {_ret = license_cop_air;};
	case "cop_athira_swat": {_ret = true;};
	
	/* Pygros Shops */
	
	case "civ_pygros": {_ret = license_civ_driver;};
	case "civ_pygros_truck":	{_ret = license_civ_truck;};
	case "civ_pygros_ship": {_ret = license_civ_boat;};
	case "cop_pygros": {_ret = true;};
	case "cop_pygros_air": {_ret = license_cop_air;};
	case "cop_pygros_swat": {_ret = true;};
	case "med_pygros": {_ret = true;};
	case "med_heli": {_ret = true;};
	
	/* Sofia Shops */
	
	case "civ_sofia": {_ret = license_civ_driver;};
	case "civ_sofia_truck":	{_ret = license_civ_truck;};
	case "med_sofia": {_ret = true;};	
	case "med_sofia_heli": {_ret = true;};		
		
	/* Donator Island */
	case "donator_island": {_ret = true;};
	
	/* REB HQ Shops  */
	case "reb_hq": {_ret = license_civ_rebel;};
	case "donator_reb": {_ret = license_civ_rebel;};
	case "med_reb": {_ret = true;};	
	case "med_reb_heli": {_ret = true;};		
	
	/* RSR  Shop */
	case "reb_rsr": {_ret = license_civ_rebel;};
	case "donator_rsr": {_ret = license_civ_rebel;};
	
	/* MSF  Shop */
	case "reb_msf": {_ret = license_civ_rebel;};
	case "donator_msf": {_ret = license_civ_rebel;};
	
	/* Legion  Shop */
	case "reb_legion": {_ret = license_civ_rebel;};
	case "donator_legion": {_ret = license_civ_rebel;};
	
	/* Mis/fun */
	
	case "med_fed": {_ret = true;};
	case "med_fed_heli": {_ret = true;};
	case "civ_air_1": {_ret = license_civ_air;};
	case "derby": {_ret = true;};
	case "admin_fun": {_ret = true;};
	case "event_base": {_ret = true;};
};

_ret;