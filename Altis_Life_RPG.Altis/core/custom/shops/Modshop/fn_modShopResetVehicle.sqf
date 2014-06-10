/*
    @Version: 4.0
    @Author: Kri
    @Edited: 03.04.2014
*/
//_vehicle = _this;
_vehicle = player getVariable "modshop_last_veh_selected";
if(isNil {_vehicle}) exitWith {};

_color = _vehicle getVariable ["life_vehicle_color", ""];
[[_vehicle,_color],"life_fnc_colorVehicle",true,false] spawn life_fnc_MP;