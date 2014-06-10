/*
    @Version: 4.0
    @Author: Kri
    @Edited: 03.04.2014
*/
#include <macro.h>

disableSerialization;
_display = findDisplay 7600;
_vehicleList = _display displayCtrl 7602;
_looksList = _display displayCtrl 7604;
_engineList = _display displayCtrl 7609;
_breaksList = _display displayCtrl 7617;
_paintR = _display displayCtrl 7605;
_paintG = _display displayCtrl 7606;
_paintB = _display displayCtrl 7607;
_alpha = _display displayCtrl 7615;
sliderSetPosition [7605, 128];
sliderSetPosition [7606, 128];
sliderSEtPosition [7607, 128];
sliderSetPosition [7615, 80];
_paintR ctrlEnable false;
_paintG ctrlEnable false;
_paintB ctrlEnable false;
_alpha ctrlEnable false;

lbClear _looksList;
lbClear _engineList;
lbClear _breaksList;

_last_veh = player getVariable ["modshop_last_veh_selected", objNull];
if(!isNull _last_veh) then {
    _last_veh call life_fnc_modshopResetVehicle;
};
_vehicle = life_vehicles_modshop select (_vehicleList lbValue lbCurSel _vehicleList);
player setVariable ["modshop_last_veh_selected", _vehicle];

// if players try something funny, reset the vehicle
_this_spot = getPos player;
_distance = player distance _vehicle;
[_vehicle, _this_spot, _distance] spawn {
    private ["_vehicle", "_this_spot", "_distance"];
    _vehicle = _this select 0;
    _this_spot = _this select 1;
    _distance = _this select 2;
    while {alive _vehicle
        && _this_spot distance _vehicle < (_distance + 1)
        && (player getVariable ["modshop_last_veh_selected", objNull] == _vehicle)}
    do {
        sleep 5;
    };
    _vehicle call life_fnc_modshopResetVehicle;
};

_rgba = true;

_i = 0;
_colors = [typeOf _vehicle] call life_fnc_vehicleColorCfg;
{
    _val = _x select 0;
    _allowed = _x select 1;
    _name = [typeOf _vehicle, _i] call life_fnc_vehicleColorStr;

    if( "civ" == _allowed || ("don" == _allowed && __GETC__(life_donator) > 0)) then {
        _looksList lbAdd _name;
        _looksList lbSetValue [(lbSize _looksList)-1, _forEachIndex];
    };
    if(_name == "Custom") then { _rgba = true; };
    _i = _i + 1;
} forEach _colors;


if(_rgba) then {
    _looksList lbAdd "Your Own Color";
    _looksList lbSetValue [(lbSize _looksList)-1, -1];
};

if(lbSize _looksList == 0) then {
    // disable Looks selection
    _looksList lbAdd "No customization available";
    _looksList ctrlEnable false;
};

// TODO: load existing color
// TODO: load existing tuning