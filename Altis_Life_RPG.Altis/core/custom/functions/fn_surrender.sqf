/*
	@Version: 2.3
	@Author: [BWG] Joe
	@Edited: 14.11.2013
*/
private ["_pos"];

player setVariable ["surrender", true, true];

while { player getVariable ["surrender", false] }  do {
	player playMove "amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon";
	
	// Check if player still alive.
	if (!alive player) then {
		player setVariable ["surrender", false, true];
	};
};

player playMoveNow "AmovPercMstpSsurWnonDnon_AmovPercMstpSnonWnonDnon";
