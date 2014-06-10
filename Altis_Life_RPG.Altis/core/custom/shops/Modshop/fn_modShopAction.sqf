/*
    @Version: 4.0
    @Author: Kri
    @Edited: 20.03.2014
*/

if(playerSide != civilian) exitWith {};

disableSerialization;
createDialog "life_modshop_menu";
waitUntil {dialog};

// Get the dialog.
_display = findDisplay 7600;

// Get the lists.
_vehicleList = _display displayCtrl 7602;
_textureList = _display displayCtrl 7604;
_engineModList = _display displayCtrl 7609;
_breakModList = _display displayCtrl 7617;

// Get the slider controls.
_textureR = _display displayCtrl 7605;
_textureG = _display displayCtrl 7606;
_textureB = _display displayCtrl 7607;
_textureA = _display displayCtrl 7615;

// Set the range on the sliders.
_textureR sliderSetRange [0, 255];
_textureG sliderSetRange [0, 255];
_textureB sliderSetRange [0, 255];
_textureA sliderSetRange [0, 100];

// Set slider position.
sliderSetPosition [7605, 128];
sliderSetPosition [7606, 128];
sliderSEtPosition [7607, 128];
sliderSetPosition [7615, 80];

// Disable the sliders.
_textureR ctrlEnable false;
_textureG ctrlEnable false;
_textureB ctrlEnable false;
_textureA ctrlEnable false;

// Clear the lists.
lbClear _vehicleList;
lbClear _textureList;
lbClear _engineModList;
lbClear _breakModList;

// Engine & Brake mods, not yet implemented.
_engineModList lbAdd "Not yet implemented.";
_engineModList ctrlEnable false;
_breakModList lbAdd "Not yet implemented.";
_breakModList ctrlEnable false;

player setVariable ["modshop_price", 0];
player setVariable ["modshop_last_veh_selected", objNull];
player setVariable ["modshop_color", [128, 128, 128, 80]];

life_vehicles_modshop = player nearEntities [["Car", "Air", "Ship"], 50];

{
    _type = typeOf _x;
    _color = _x getVariable ["life_vehicle_color", "null"];
    _owners = _x getVariable ["vehicle_info_owners", []];

    _is_official = false;

    if(_x getVariable ["vehicle_color", "none"] in ["Police", "Ambulance"]) then {_is_official = true;};

    if( !_is_official && ([getPlayerUid player, name player] in _owners)) then {
        _name = getText(configFile >> "CfgVehicles" >> _type >> "displayName");
        if(_type == "C_Offroad_01_F" && _color == "service_truck") then {
            _name = "Service Truck";
        };

        _pic = getText(configFile >> "CfgVehicles" >> _type >> "picture");

        _vehicleList lbAdd format["%1", _name];
        _vehicleList lbSetValue [(lbSize _vehicleList)-1, _forEachIndex];
        _vehicleList lbSetPicture [(lbSize _vehicleList)-1, _pic];
    };
} forEach life_vehicles_modshop;

