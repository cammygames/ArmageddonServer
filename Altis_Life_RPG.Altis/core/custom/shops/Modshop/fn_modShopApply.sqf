/*
    @Version: 4.0
    @Author: Kri
    @Edited: 03.04.2014
*/
_changes = call life_fnc_modShopUpdate;

// Check if price is set and is a number.
if (isNil {life_modshop_price}) exitWith {};
if (typename life_modshop_price != typename 0) exitWith {};

//if(life_modshop_price <= 0) exitWith {};
if (life_cash < life_modshop_price) exitWith {
    hint format ["You need $%1 for these upgrades!", [life_modshop_price] call life_fnc_formatMoney];
};

life_cash = life_cash - life_modshop_price;

_color = _changes select 0;
_engine = _changes select 1;
_breaks = _changes select 2;

disableSerialization;
_display = findDisplay 7600;
_vehicleList = _display displayCtrl 7602;
_vehicle = life_vehicles_modshop select (_vehicleList lbValue lbCurSel _vehicleList);
_vehicle setVariable ["life_vehicle_color", _color, true];
[[_vehicle, false, _color], "life_fnc_vehicleReskin", true, false] spawn BIS_fnc_MP;

closeDialog 0;

if (_color != "") then {
    player say3D "painting";
    sleep 2.5;
};
if (_engine != "" || _breaks != "") then {
    player say3D "tuning";
};

// Save vehicle color.
[[_vehicle, 4], "life_fnc_updateVehicle", false, false] spawn BIS_fnc_MP;