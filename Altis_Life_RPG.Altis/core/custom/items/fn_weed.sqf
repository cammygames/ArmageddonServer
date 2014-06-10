/*
	@Filename: fn_weed.sqf
	@Author: Kuchiha (Modified by Hoe.GMG.Crew)
	@Edited: 24.03.2014
*/
private["_smoke"];

player setFatigue 1;

if (vehicle player != player) then {
	if ((typeOf (vehicle player)) in ["B_G_Quadbike_01_F","B_Quadbike_01_F","C_Quadbike_01_F","I_Quadbike_01_F","O_Quadbike_01_F"]) then {
		_smoke = "SmokeShell" createVehicle position player;
		_smoke attachTo [(vehicle player),[0,-0.2,0.1]];
		_smoke1 = "SmokeShell" createVehicle position player;
		_smoke1 attachTo [(vehicle player),[0,-0.2,0.1]];
	} else {
		_smoke = "SmokeShell" createVehicle position player;
		_smoke attachTo [(vehicle player),[-0.3,-0.08,-0.3]];
		_smoke1 = "SmokeShell" createVehicle position player;
		_smoke1 attachTo [(vehicle player),[-0.3,-0.08,-0.3]];
	};
} else {
	_smoke = "SmokeShell" createVehicle position player;
	_smoke attachTo [player,[0,0,0.1],"pelvis"];
	_smoke1 = "SmokeShell" createVehicle position player;
	_smoke1 attachTo [player,[0,0,0.1],"pelvis"];
};



player setFatigue 0;