/*
	@Version: 3.0
	@Author: [BWG] Joe
	@Edited: 22.11.2013
*/
private ["_msg"];

if (time - life_phone_time < 30) exitWith { hint "You can send messages only every 30 seconds."; };

_msg = ctrlText 3003;
if (_msg == "" || _msg == " ") exitWith { hint "Please enter a message"; };

life_phone_time = time;
[["medic", _msg, name player], "life_fnc_cellPhoneMsgReceived", independent, false] spawn BIS_fnc_MP;

closeDialog 0;
hint format ["Message sent to EMS."];