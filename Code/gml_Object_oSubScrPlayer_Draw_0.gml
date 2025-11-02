draw_set_alpha(1);
var drawX = 7;
var drawY = 53;
var suit = "";
var hijump = "";
var ice = "";
var plasma = "";
var wave = "";
var spazer = "";
var fusion = "";
var multitroidcannon = "";
var subscrmultispr = 483;
var suitframe = 0;

if (global.shaders_compiled && oControl.preferredcolor != 17 && os_type != os_android)
{
    subscrmultispr = 1739;
    pal_swap_set(oControl.MultitroidSubScr, oControl.preferredcolor, 0);
}

if (oControl.mod_fusion == 0)
{
    if (global.currentsuit == 0)
        suitframe = 0;
    else if (global.currentsuit == 1)
        suitframe = 2;
    else if (global.currentsuit == 2)
        suitframe = 4;
    
    if (global.hijump == 1)
        suitframe += 1;
    
    if (oControl.msr_fusionsuit == 0)
        suitframe += 14;
}

if (oControl.mod_fusion == 1)
{
    fusion = "F";
    drawX -= 2;
    drawY += 3;
    
    if (global.currentsuit == 0)
        suitframe = 6;
    
    if (global.currentsuit == 1)
        suitframe = 7;
    
    if (global.currentsuit == 2)
        suitframe = 10;
    
    if (oControl.msr_fusionsuit == 0)
        suitframe += 2;
}

if (global.sbeam)
{
    spazer = "S";
    
    if (!global.wbeam && oControl.mod_fusion)
        drawX -= 1;
}

if (global.wbeam)
{
    drawX -= 1;
    wave = "W";
}

if (global.pbeam)
    plasma = "P";

if (global.ibeam)
    ice = "I";

if (global.currentsuit == 1)
    suit = "V";

if (global.currentsuit == 2)
    suit = "G";

if (oControl.mod_fusion && oControl.preferredcolor != 17)
    multitroidcannon = "M";

cannon = asset_get_index("s" + fusion + multitroidcannon + suit + "Cannon" + spazer + wave + plasma + ice);
draw_sprite_ext(subscrmultispr, suitframe, x, y, 1, 1, 0, -1, oSubscreenMenu.ealpha);
draw_sprite_ext(cannon, 0, (x + drawX) - 51, y + drawY, 1, 1, 0, -1, oSubscreenMenu.ealpha);
shader_reset();
