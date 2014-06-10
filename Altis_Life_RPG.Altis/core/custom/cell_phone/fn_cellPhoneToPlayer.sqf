/*
	@Version: 1.0
	@Author: [BWG] Joe
	@Edited: 29.08.2013
*/
private["_msg","_player"];

if (time - life_phone_time < 30) exitWith { hint "You can send messages only every 30 seconds."; };

_msg = ctrlText 3003;
if (_msg == "" || _msg == " ") exitWith { hint "Please enter a message"; };

if ((lbCurSel 3004) == -1) exitWith { hint "Please select a player!"; };
_player = lbData [3004, lbCurSel 3004];
_player = call compile format["%1", _player];

if (isNil "_player") exitWith {};
if (_player == player) exitWith {};
if (isNull _player) exitWith {};

life_phone_time = time;
[["player", _msg, name player], "life_fnc_cellPhoneMsgReceived", _player, false] spawn BIS_fnc_MP;

closeDialog 0;
hint format["Message sent to %1", name _player];