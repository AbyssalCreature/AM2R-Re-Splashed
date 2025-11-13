hudpal = 0;

if (!oControl.useselfpalette && os_type != os_android)
{
    if (!oControl.mod_fusion && global.currentsuit == 2 && oControl.hudoption != 2)
        hudpal = 1;
    
    if (oControl.mod_fusion && (!global.ibeam || !oControl.omegaEnabled) && oControl.hudoption < 2)
        hudpal = 1;
}
else if (oControl.useselfpalette && os_type != os_android)
{
    if (oControl.preferredcolor != 17)
    {
        if (oControl.palette == 0 || oControl.palette == 1)
            hudpal = oControl.preferredcolor + 1;
        
        if (oControl.palette == 2)
            hudpal = oControl.preferredcolor + 17;
    }
    
    if (instance_exists(oClient) && oClient.connected)
    {
        if (oControl.palette == 0 || oControl.palette == 1)
            hudpal = oClient.preferredcolor + 1;
        
        if (oControl.palette == 2)
            hudpal = oClient.preferredcolor + 17;
    }
}

if (oControl.hudoption == 1 && oControl.palette != 3 && os_type != os_android)
    hudpal = oControl.guicolor + 33;

if (global.shaders_compiled && os_type != os_android)
{
    if (oControl.preferredcolor != 17 || (instance_exists(oClient) && oClient.connected) || oControl.hudoption == 1)
    {
        if (oControl.hudoption != 2 && !oControl.gamehud && oControl.hudpalette != -1)
            pal_swap_set(oControl.hudpalette, hudpal, 0);
    }
}
