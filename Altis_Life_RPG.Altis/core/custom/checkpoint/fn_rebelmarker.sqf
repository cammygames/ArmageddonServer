/* 
	[ED] Luke
	Description: Creates a marker and spawns black market trader when military base is captured.
	Gives involved rebels reward for helping to capture, and notifies the civs
*/
private ["_coords","_test","_filter","_lol"];
_test = [_this,0,0,[0]] call BIS_fnc_param;
_coords = [20907.406,15.780884,19320.83];
_rm = createMarker ["checkpoint_cop", getMarkerPos "cp_2"];
"checkpoint_cop" setMarkercolor "ColorRed";
"checkpoint_cop" setMarkerShape "Warning";
"checkpoint_cop" setMarkerText "CheckPoint 2 - Rebel Controlled";
sleep 1;

