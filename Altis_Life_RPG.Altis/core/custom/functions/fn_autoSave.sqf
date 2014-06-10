/*
AUTO SAVE
*/
while {true} do {
    sleep 600;
    if (alive player) then {
        if (playerside == west) then {
        [] call life_fnc_sessionUpdate;
        [] call life_fnc_saveGear;    //this is what allows the cop gear to save
        hint "Game Autosaved."
    } else {
    [] call life_fnc_sessionUpdate;
    hint "Game Autosaved."
    };
    };
}; 
