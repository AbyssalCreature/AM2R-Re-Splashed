hudpal = 0;

if (oControl.preferredcolor == 17)
{
    if (!oControl.mod_fusion && global.currentsuit == 2 && oControl.hudoption != 2)
        hudpal = 1;
    
    if (oControl.mod_fusion && oControl.hudoption < 2)
        hudpal = 1;
}
else if (oControl.preferredcolor != 17 && os_type != os_android)
{
    if (oControl.palette == 0)
        hudpal = oControl.preferredcolor + 1;
    
    if (oControl.palette == 1)
        hudpal = oControl.preferredcolor + 17;
}

if (oControl.hudoption == 1)
    hudpal = oControl.guicolor + 33;

if (global.shaders_compiled && os_type != os_android)
{
    if (oControl.hudoption != 2 && !oControl.gamehud && oControl.hudpalette != -1)
        pal_swap_set(oControl.hudpalette, hudpal, 0);
}
