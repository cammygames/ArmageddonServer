#define WIDTH 0.9
#define HEIGHT 0.7

class life_modshop_menu {
    idd = 7600;
    name = "life_modshop_menu";
    movingEnable = false;
    enableSimulation = true; 
    onUnload = "[] spawn life_fnc_modShopResetVehicle;";

    class controlsBackground {
    
        class life_RscTitleBackground:life_RscText {
            colorBackground[] = {0,0.6,1,1};
            idc = -1;
            x = 0.1;
            y = 0.2;
            w = 1;
            h = (1 / 25);
        };
        
        class MainBackground:life_RscText {
            colorBackground[] = {0, 0, 0, 0.7};
            idc = -1;
            x = 0.1;
            y = 0.2 + (11 / 250);
            w = 1;
            h = 0.65;
        };
        
        class Title : life_RscTitle {
            colorBackground[] = {0, 0, 0, 0};
            idc = -1;
            text = "Armageddon Mod Shop";
            x = 0.1;
            y = 0.2;
            w = 1;
            h = (1 / 25);
        };
        
    };
    
    class controls {

        class VehText : Life_RscText {
            text = "Vehicle to mod:";
            x = 0.12; y = 0.26; // 0.55
            w = 0.56; h = 0.04;
        };
        
        class CostText : Life_RscText {
            text = "Cost: 0$";
            idc = 7613;
            x = 0.42; y = 0.26; // 0.55
            w = 0.56; h = 0.04;
        };

        class VehList : Life_RscListBox {
            idc = 7602;
            x = 0.12; y = 0.31;  // 0.6
            w = 0.56; h = 0.09;  //+12
            onLBSelChanged = "[] spawn life_fnc_modShopVehSelected;";
        };
        
        class PaintShopText : Life_RscText {
            idc = 7603;
            text = "Change the texture:";
            x = 0.12; y = 0.4;
            w = 0.27; h = 0.04;
        };
        
        class PaintShopList : Life_RscListBox {
            idc = 7604;
            x = 0.12; y = 0.45;
            w = 0.27; h = 0.17;
            onLBSelChanged = "[] spawn life_fnc_modShopUpdate;";
        };


        class RGBText : Life_RscText {
            idc = 7610;
            text = "Custom Color:";
            x = 0.12; y = 0.63;
            h = 0.04;
        };

        class RText : Life_RscText {
            idc = 7611;
            text = "Red:";
            x = 0.12; y = 0.7;
            h = 0.04;       
        };

        class PaintShopR : life_RscXSliderH {
            idc = 7605;
            sizeEx = 0.030;
            x = 0.22; y = 0.7;
            w = 0.3; h = 0.03;
            color[] = {1,0,0,1};
            colorActive[] = {1,0,0,1};
            onSliderPosChanged = "[] spawn life_fnc_modShopUpdate;";
        };

        class GText : Life_RscText {
            idc = 7612;
            text = "Green:";
            x = 0.12; y = 0.75;
            h = 0.04;       
        };  

        class PaintShopG : life_RscXSliderH {
            idc = 7606;
            sizeEx = 0.030;
            x = 0.22; y = 0.75;
            w = 0.3; h = 0.03;
            color[] = {0,1,0,1};
            colorActive[] = {0,1,0,1};
            onSliderPosChanged = "[] spawn life_fnc_modShopUpdate;";
        };  

        class BText : Life_RscText {
            idc = 7613;
            text = "Blue:";
            x = 0.12; y = 0.8;
            h = 0.04;
        };

        class PaintShopB : life_RscXSliderH {
            idc = 7607;   
            x = 0.22; y = 0.8;
            w = 0.3; h = 0.03;
            color[] = {0,0,1,1};
            colorActive[] = {0,0,1,1};
            onSliderPosChanged = "[] spawn life_fnc_modShopUpdate;";
        };

        class AlphaText : Life_RscText {
            idc = 7614;
            text = "Alpha:";
            x = 0.12; y = 0.85;
            h = 0.04;
        };

        class Alpha : life_RscXSliderH {            
            idc = 7615;
            x = 0.22; y = 0.85;
            w = 0.3; h = 0.03;
            color[] = {1,1,1,1};
            colorActive[] = {1,1,1,1};  
            onSliderPosChanged = "[] spawn life_fnc_modShopUpdate;";
        };

        class EngineModText : Life_RscText {
            idc = 7608;
            text = "Engine Mod:";
            x = 0.41; y = 0.4;
            w = 0.27; h = 0.04;
        };
        
        class EngineModList : Life_RscListBox {
            idc = 7609;
            x = 0.41; y = 0.45;
            w = 0.27; h = 0.17;
            onLBSelChanged = "[] spawn life_fnc_modShopUpdate;";
        };

        class BreaksModText : Life_RscText {
            idc = 7616;
            text = "Break Mod:";
            x = 0.71; y = 0.4;
            w = 0.27; h = 0.04;
        };
        
        class BreaksModList : Life_RscListBox {
            idc = 7617;
            x = 0.71; y = 0.45;
            w = 0.27; h = 0.17;
            onLBSelChanged = "[] spawn life_fnc_modShopUpdate;";
        };

        class ModVehicle : Life_RscButtonMenu {
            idc = 7614;
            text = "Apply";
            onButtonClick = "[] spawn life_fnc_modShopApply;";
            x = 0.1 + (6.25 / 40) + (1 / 250 / (safezoneW / safezoneH));
            y = 0.9;
            w = (6.25 / 40);
            h = (1 / 25);
        };

        class ButtonClose : life_RscButtonMenu {
            idc = -1;
            //shortcuts[] = {0x00050000 + 2};
            text = "$STR_Global_Close";
            onButtonClick = "closeDialog 0;";
            x = 0.1;
            y = 0.9;
            w = (6.25 / 40);
            h = (1 / 25);
        };
    };
};