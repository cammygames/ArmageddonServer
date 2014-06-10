if ((playerSide == CIVILIAN) && (player distance (getMarkerPos "cp_2") < 1500)) then {
	hint "You have received $30,000 for assisting you side with capturing checkpoint 2";
	life_atmcash = life_atmcash + 30000;
}; 
if ((playerSide == CIVILIAN) && (player distance (getMarkerPos "cp_2") > 1500)) then {hint "Your side has gained control of checkpoint 2."};
