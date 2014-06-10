sleep 1;
waitUntil { alive player };
_uidmaxou = getPlayerUID player;	

if (_uidmaxou == "76561198045613562") then // cammy
    {
		player addaction ["Admin menu", "core\WookieMenuV5.sqf", [], 1, false, true, "", ""];
		
	};
if (_uidmaxou == "76561198042069246") then //Dog
	{
		player addaction ["Admin menu", "core\WookieMenuV5.sqf", [], 1, false, true, "", ""];
		
	};