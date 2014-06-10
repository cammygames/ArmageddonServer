/*
	@Version: 2.0
	@Author: [BWG] Joe
	@Edited: 13.10.2013
*/
private["_display","_units","_type", "_players", "_sorted"];

disableSerialization;
_display = findDisplay 3000;
_units = _display displayCtrl 3004;

ctrlSetText [3003, ""];
lbClear _units;

if ((life_adminlevel < 1)) then {
	ctrlShow[3020,false];
	ctrlShow[3021,false];
};

_players = [];

_select = -1;
{
	if (alive _x && _x != player) then {
		switch (side _x) do {
			case west: { _type = "Cop"; };
			case civilian: { _type = "Civ"; };
			case independent: { if (_x call life_fnc_isMedic) then { _type = "Medic"; } else { _type = "Civ"; }; };
		};
		_players = _players + [ [format ["%1 (%2)", name _x, _type], str(_x), name _x] ];
	};
} forEach playableUnits;

_sorted = [_players, 0] call KRON_ArraySort;

{
	_units lbAdd (_x select 0);
	_units lbSetData [(lbSize _units)-1, _x select 1];
	if((_x select 2) == life_last_sender) then {
		_select = _forEachIndex;
	};
} forEach _sorted;

// Select player who sent the last message.
if (_select != -1) then {
	lbSetCurSel [3004, _select];
} else {
	lbSetCurSel [3004, 0];
};