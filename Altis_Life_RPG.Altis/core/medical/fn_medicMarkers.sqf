/*
	File: fn_medicMarkers.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Marks downed players on the map when it's open.
*/
private["_markers","_units","_medics"];
_markers = [];
_units = [];
_medics = [];

sleep 0.25;
if(visibleMap) then {
	
	// List of Medics.
	{if(side _x == independent) then {_medics set[count _medics,_x];}} foreach playableUnits; //Fetch list of cops / blufor
	
	// Create Medic markers
	{
		_marker = createMarkerLocal [format ["%1_marker", _x], getPos _x];
		_marker setMarkerColorLocal "ColorGreen";
		_marker setMarkerTypeLocal "Mil_dot";
		_marker setMarkerTextLocal format ["%1", name _x];

		_markers set [count _markers, [_marker,_x]];
	} forEach _medics;
	
	{
		_name = _x getVariable "name";
		_down = _x getVariable ["Revive",false];
		if(!isNil "_name" && !_down) then {
			_units set[count _units,_x];
		};
	} foreach allDeadMen;

	//Loop through and create markers.
	{
		_marker = createMarkerLocal [format["%1_dead_marker",_x],visiblePosition _x];
		_marker setMarkerColorLocal "ColorRed";
		_marker setMarkerTypeLocal "loc_Hospital";
		_marker setMarkerTextLocal format["%1",(_x getVariable["name","Unknown Player"])];
		_markers set[count _markers,_marker];
	} foreach _units;

		
	while {visibleMap} do
	{
		{
			private["_marker","_unit"];
			_marker = _x select 0;
			_unit = _x select 1;
			if(!isNil "_unit") then
			{
				if(!isNull _unit) then
				{
					_marker setMarkerPosLocal (visiblePosition _unit);
				};
			};
		} foreach _markers;
		if(!visibleMap) exitWith {};
		sleep 0.02;
	};

	{deleteMarkerLocal (_x select 0);} foreach _markers;
	_markers = [];
	_medics = [];
};