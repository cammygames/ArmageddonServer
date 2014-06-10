/* 
	[ED] Luke
	Description: Creates a marker and spawns black market trader when military base is captured.
	Gives involved rebels reward for helping to capture, and notifies the civs
*/
private ["_coords"];
_coords = [20907.406,15.780884,19320.83];
_rm = createMarker ["checkpoint_cop", getMarkerPos "cp_2"];
"checkpoint_cop" setMarkercolor "ColorBlue";
"checkpoint_cop" setMarkerShape "Warning";
"checkpoint_cop" setMarkerText "CheckPoint 2 - Cop Controlled";
sleep 1;
