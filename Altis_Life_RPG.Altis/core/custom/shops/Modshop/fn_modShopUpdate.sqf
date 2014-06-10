/*
    @Version: 4.0
    @Author: Kri
    @Edited: 03.04.2014
*/
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
_costidc = _display displayCtrl 7613;

_vehicle = life_vehicles_modshop select (_vehicleList lbValue lbCurSel _vehicleList);
_colors = [typeOf _vehicle] call life_fnc_vehicleColorCfg;
_looks_idx = _looksList lbValue lbCurSel _looksList;
_engine_idx = _engineList lbValue lbCurSel _engineList;
_breaks_idx = _breaksList lbValue lbCurSel _breaksList;

_selected_looks = "";
_selected_engine = "";
_selected_breaks = "";

life_modshop_price = 0;

switch(_looks_idx) do {
    case -1: {
        life_modshop_price = life_modshop_price +  1500;
    };
    default {
        life_modshop_price = life_modshop_price +  1000; //((_colors select _looks_idx) select 3);
    };
};

switch(_engine_idx) do {
    default {};
};

switch(_breaks_idx) do {
    default {};
};

_costidc ctrlSetText format ["Cost: $%1", life_modshop_price];

if(_looks_idx == -1) then {
    _paintR ctrlEnable true;
    _paintG ctrlEnable true;
    _paintB ctrlEnable true;
    _alpha ctrlEnable true;

    _lastRGBA = player getVariable ["modshop_color", [128, 128, 128, 80]];
    _r = (sliderPosition _paintR);
    _g = (sliderPosition _paintG);
    _b = (sliderPosition _paintB);
    _a = (sliderPosition _alpha);

    // don't let it get too dark!
    if(_a < 20) then { _a = 20; _alpha sliderSetPosition 20; };
    if( (_r + _g + _b) < 100 ) then {
        _r = _lastRGBA select 0;
        _paintR sliderSetPosition _r;
        _g = _lastRGBA select 1;
        _paintG sliderSetPosition _g;
        _b = _lastRGBA select 2;
        _paintB sliderSetPosition _b;
    };
    player setVariable ["modshop_color", [_r, _g, _b, _a]];

    _r = _r / 255.0;
    _g = _g / 255.0;
    _b = _b / 255.0;
    _a = _a / 100.0;

    _selected_looks = format ['#(argb,8,8,3)color(%1,%2,%3,%4)', _r, _g, _b, _a];
    _vehicle setObjectTextureGlobal [0, _selected_looks];
} else {
    _paintR ctrlEnable false;
    _paintG ctrlEnable false;
    _paintB ctrlEnable false;
    _alpha ctrlEnable false;

    _selected_looks = str(_looks_idx);
    _texture = (_colors select _looks_idx) select 0;
    if(typeName _texture == "ARRAY") then {
        {
          _vehicle setObjectTextureGlobal [_forEachIndex, _x];
        } forEach _texture;
    } else {
        _vehicle setObjectTextureGlobal [0, _texture];
    };
};

[_selected_looks, _selected_engine, _selected_breaks]; // return current values if we want to save them