/*
        File: fn_robStation.sqf
        Author: Butchy Dutchy & cammygames
       
*/
private["_robber"];
_robber = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _robber) exitWith {}; //No one to return it to?
if(isNil "life_session_station") then {life_session_station = false;};
if(life_session_station) exitWith {hint "You have already robbed a Station wait 10 minutes.";};
if (stop_doubleRobJU) exitWith {hint "Someone is already Robbing the gas Station, or failed to capture it recently!";};
stop_doubleRobJU = true;
publicVariable "stop_doubleRobJU ";
 
_timer = time + (3 * 60); //Default timer is 3 minutes to rob.
titleText["Robbing Gas Station...","PLAIN"];
[[2,format["$$$ Juggs Tanks Full is Being Robbed!!! $$$",name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
 
while {true} do
{
        _countDown = if(round(_timer - time) > 60) then {format["%1 minute(s)",round(round(_timer - time) / 60)]} else {format["%1 second(s)",round(_timer - time)]};
        hintSilent format["Time Remaining:\n %1",_countDown,round(player distance _vault)];
        if((round(_timer - time)) < 1) exitWith {};
        if(!alive player) exitWith {};
        if(life_istazed) exitWith {};
};
 
switch(true) do
{
		case (!alive player):
        {
                hint "Because you died the robbery failed.";
        };
       
        case (life_istazed):
        {
                hint "You were tazed, the robbery has failed!";
        };
       
        case ((round(_timer - time)) < 1):
        {
                hint format["You have successfully robbed $5000\n\nTo avoid the cops tracing you, your bank card will not work for 10 minutes",[_funds] call life_fnc_numberText];
                [] spawn
                {
                        life_use_atm = false;
                        life_session_station = true;
                        [[getPlayerUID player,name player,"211"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
                        [[1,format["BREAKING NEWS: %1 has robbed Gas Station For $5000",name player]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
                        [[1,format["POLICE REPROT: %1 has robbed Gas Station For $5000",name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
                        sleep 600;
                        life_use_atm = true;
                        life_session_station = false;
                };
               
               
                life_cash = life_cash + 5000;
                hint "WARNING.\n\nPlease wait up to 10 Minutes before Robbing Again.";
                [] call life_fnc_sessionUpdate;
        };
};