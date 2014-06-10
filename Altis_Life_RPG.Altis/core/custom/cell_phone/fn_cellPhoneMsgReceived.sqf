/*
	@Version: 3.1b
	@Author: [BWG] Joe
	@Edited: 04.02.2014
*/
private ["_type","_msg","_sender"];

_type = _this select 0;
_msg = _this select 1;
_sender = _this select 2;

if (!isServer) then {	
	switch (_type) do {
		case "player": {
			playSound "message";
			["TextMessage", [format ["New Message From: %1", _sender]]] call bis_fnc_showNotification;
			hint parseText format ["<t color='#FFCC00'><t size='2'><t align='center'>New Message<br/><br/><t align='left'><t size='1'><t color='#33CC33'>From: <t color='#ffffff'>%1<br/><t color='#33CC33'>To: <t color='#ffffff'>%2<br/><br/><t color='#33CC33'>Message:<br/><t color='#ffffff'>%3", _sender, name player, _msg];
			systemChat format [">>>MESSAGE FROM %1: %2", _sender, _msg];
		};
		case "cop": {
			playSound "message";
			["CopMessage", [format ["911 Dispatch From: %1", _sender]]] call bis_fnc_showNotification;
			hint parseText format ["<t color='#316dff'><t size='2'><t align='center'>911 Dispatch<br/><br/><t align='left'><t size='1'><t color='#33CC33'>From: <t color='#ffffff'>%1<br/><t color='#33CC33'>To: <t color='#ffffff'>All Officers<br/><br/><t color='#33CC33'>Message:<br/><t color='#ffffff'>%2", _sender, _msg];
			systemChat format [">>>911 DISPATCH FROM %1: %2", _sender, _msg];
		};
		case "medic": {
			if (player call life_fnc_isMedic) then {
				playSound "message";
				["CopMessage", [format ["Emergency Dispatch From: %1", _sender]]] call bis_fnc_showNotification;
				hint parseText format ["<t color='#316dff'><t size='2'><t align='center'>Emergency Dispatch<br/><br/><t align='left'><t size='1'><t color='#33CC33'>From: <t color='#ffffff'>%1<br/><t color='#33CC33'>To: <t color='#ffffff'>All Medics<br/><br/><t color='#33CC33'>Message:<br/><t color='#ffffff'>%2", _sender, _msg];
				systemChat format [">>>Emergency DISPATCH FROM %1: %2", _sender, _msg];
			};
		};
		case "admin": {
			playSound "message";
			["AdminMessage", [format ["New Admin Message From: %1", _sender]]] call bis_fnc_showNotification;
			hint parseText format ["<t color='#FF0000'><t size='2'><t align='center'>Admin Message<br/><br/><t align='left'><t size='1'><t color='#33CC33'>From: <t color='#ffffff'>%1<br/><t color='#33CC33'>To: <t color='#ffffff'>All Players<br/><br/><t color='#33CC33'>Message:<br/><t color='#ffffff'>%2", _sender, _msg];
			systemChat format [">>>ADMIN MESSAGE FROM %1: %2", _sender, _msg];
		};
	};
	
	life_last_sender = _sender;
};
