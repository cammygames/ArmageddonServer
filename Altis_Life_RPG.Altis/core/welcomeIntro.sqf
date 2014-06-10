/*
	Description:
	Creats a welcome intro on the screen
*/
_onScreenTime = 5;
 
sleep 5; //Wait in seconds before the credits start after player is in-game
 
_role1 = "Welcome to the The Armageddon!"; //In yellow
_role1names = [""]; //In white
_role2 = "STAFF :";
_role2names = ["ArrestingDog, Rambo, cammygames, Juggs, Gaban "]; 
_role3 = "TEAMSPEAK :";
_role3names = ["85.236.100.96:11577"];
_role4 = "Developed By";
_role4names = ["Cammygames"];
_role5 = "FACEBOOK :";
_role5names = ["The Armageddon Altis life"];
_role6 = "NOTE :";
_role6names = ["
An interaction key has been introduced which replaces the large majority of scroll wheel actions, this was for performance issues. 
"];
_role7 = "NOTE pt2 :";
_role7names = ["
By default this key is [Left Windows], you can change this key by pressing ESC and going to Configure->Controls->Custom
and bind 'Use Action 10' to a single key like H. This key is used for the following actions : Picking up items and money , Fishing , Interaction with players and vehicles
"];
{
sleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='0.40' color='#f2cb0b' align='right'>%1<br /></t>", _memberFunction]; //Changes colours
_finalText = _finalText + "<t size='0.70' color='#FFFFFF' align='right'>";
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime + (((count _memberNames) - 1) * 0.5);
[
_finalText,
[safezoneX + safezoneW - 0.8,0.50], //DEFAULT: 0.5,0.35
[safezoneY + safezoneH - 0.8,0.7], //DEFAULT: 0.8,0.7
_onScreenTime,
0.5
] spawn BIS_fnc_dynamicText;
sleep (_onScreenTime);
} forEach [
//The list below should have exactly the same amount of roles as the list above
[_role1, _role1names],
[_role2, _role2names],
[_role3, _role3names],
[_role4, _role4names],
[_role5, _role5names],
[_role6, _role6names],
[_role7, _role7names]
];