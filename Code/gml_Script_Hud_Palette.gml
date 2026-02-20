if (global.shaders_compiled && os_type != os_android)
{
    if (oControl.preferredcolor != 17 || (instance_exists(oClient) && oClient.connected) || oControl.hudoption == 1)
    {
        if (oControl.hudoption != 2 && !oControl.gamehud && oControl.hudpalette != -1)
            pal_swap_set(oControl.hudpalette, oControl.hudpal, 0);
    }
}
