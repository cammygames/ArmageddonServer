/*
	Author: [ED] Luke, MrWong, cammygames
	Version: 1.1
	Description: Captures base with a timer. When captures executes marker scripts for rewards/markers etc
*/
private["_playerside","_tooFar","_timer","_Cpoint","_CaptureAction"];

_timer = time + (10 * 60);
_Cpoint = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
//Capturing shite
if (isNil "prevent_cap") then {prevent_cap = false;};
if (isNil "rebel_captured") then {rebel_captured = false;};
if (isNil "cop_captured") then {cop_captured = false;};
if (isNil "stop_doublecap") then {stop_doublecap = false;};
//Stop multiple people capturing
if (prevent_cap) exitWith {hint "You cannot capture the checkpoint at this time! It can only be captured every 15 minutes."};
if (stop_doublecap) exitWith {hint "Someone is already capturing the base, or failed to capture it recently!";};
stop_doublecap = true;
publicVariable "stop_doublecap";
if ((PlayerSide == civilian) && (!license_civ_rebel)) exitWith {hint "You are not a rebel, you cannot capture this!"};
//Makes sure previous capture states dont carry over
if (rebel_captured) then {cop_captured = false;};
if (cop_captured) then {rebel_captured = false;};
//Stop the team that controls the base re-capturing
if ((playerSide == west) && (cop_captured)) exitWith {hint "Your team already controls the checkpoint, only the opposing team can capture it!";};
if ((playerSide == civilian) && (rebel_captured)) exitWith {hint "Your team already controls the checkpoint, only the opposing team can capture it!";};
//Begin Stuff 
if (playerSide == west) then {_playerside = "COPS"} else {_playerSide = "REBELS";};
[[2,"CHECKPOINT 2 IS BEING CAPTURED BY THE " + _playerside],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
player playMove "AinvPknlMstpSnonWnonDnon_medic_1";
waitUntil {animationState player == "AinvPknlMstpSnonWnonDnon_medic_1"};
waitUntil {animationState player != "AinvPknlMstpSnonWnonDnon_medic_1"};

while {true} do {
	life_action_in_use = true;
	//New Timer
	_countDown = [(_timer - time),"MM:SS"] call BIS_fnc_secondsToString;
	hintSilent parseText format["You need to stay within 175m!<br/>Time Remaining:<br/> <t size='2'><t color='#FF0000'>%1</t></t><br/><br/>Distance: %2m",_countDown,round(player distance _Cpoint),call life_fnc_numberText];
	
	if((round(_timer - time)) < 1) exitWith
	{
		life_action_in_use = false;
		[[2,"CHECKPOINT 2 HAS BEEN CAPTURED BY THE " + _playerside],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
		if (playerside == CIVILIAN) then {[]call life_fnc_rebelmarker} else {[]call life_fnc_copmarker};
		prevent_cap = true;				//Cooldown Timer
		publicVariable "prevent_cap";   //Cooldown Timer
		[] execVM "core\custom\checkpoint\fn_Timeout.sqf";
		if (playerside == CIVILIAN) then {
		rebel_captured = true; 			//Rebels gain control
		publicVariable "rebel_captured";//Rebels gain control
		[[[],"core\custom\checkpoint\fn_RebelCaptured.sqf"],"BIS_fnc_execVM",CIVILIAN,false] spawn BIS_fnc_MP;
		};
		if (playerside == WEST) then {
		cop_captured = true; 			//Cops gain control
		publicVariable "cop_captured";	//Cops gain control
		[[[],"core\custom\checkpoint\fn_CopCaptured.sqf"],"BIS_fnc_execVM",WEST,false] spawn BIS_fnc_MP;
		};
		stop_doublecap = false;
		publicVariable "stop_doublecap"
	};
	if(!alive player) exitWith //fail on death
	{
		[[2,"THE ATTEMPT AT CAPTURING CHECKPOINT 2 FAILED"],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
		hint "You died, capturing the base has failed"; 
		life_action_in_use = false;
		stop_doublecap = false;
		publicVariable "stop_doublecap";
	};
	if(player distance _Cpoint > 175)	 exitWith // fail on toofar
	{
		[[2,"THE ATTEMPT AT CAPTURING CHECKPOINT 2 FAILED"],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
		hint "You went to far from the base, capturing failed";
		life_action_in_use = false;
		stop_doublecap = false;
		publicVariable "stop_doublecap"
	};
};