/*
	@Version: 1.0
	@Author: [BWG] Joe
	@Edited: 29.08.2013
*/
private["_msg","_player"];

if (life_adminlevel < 1) exitWith {};

_msg = ctrlText 3003;
if (_msg == "" || _msg == " ") exitWith { hint "Please enter a message"; };

[["admin", _msg, name player], "life_fnc_cellPhoneMsgReceived", true, false] spawn BIS_fnc_MP;

closeDialog 0;
hint format["Message sent to all players."];