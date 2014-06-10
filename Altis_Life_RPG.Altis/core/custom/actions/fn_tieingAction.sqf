*
	File: fn_restrainAction.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Retrains the target.
*/
private["_unit"];
_unit = cursorTarget;
if(isNull _unit) exitWith {}; //Not valid
if((_unit getVariable "tied")) exitWith {};

if(player == _unit) exitWith {};
if(!isPlayer _unit) exitWith {};
//Broadcast!

_unit setVariable["tied",true,true];
[[player], "life_fnc_tieing", _unit, false] spawn life_fnc_MP;
if(side _unit == west) then
{
[[0,format["Cop %1 was ziptied by %2.", name _unit, name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
}
	else
{
[[0,format["Civilian %1 was ziptied by %2.", name _unit, name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP; // ONLY COPS SEE THESE MESSAGES!!
}; 