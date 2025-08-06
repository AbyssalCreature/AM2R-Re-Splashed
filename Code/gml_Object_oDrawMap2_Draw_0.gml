var hudpal;
hudpal = 0
if ((!oControl.useselfpalette) && os_type != os_android)
{
    if ((!oControl.mod_fusion) && global.currentsuit == 2 && oControl.hudoption != 2)
        hudpal = 1
    if (oControl.mod_fusion && (!global.ibeam) && oControl.hudoption < 2)
        hudpal = 1
}
else if (oControl.useselfpalette && os_type != os_android)
{
    if (oControl.preferredcolor != 17)
    {
        if (oControl.palette == 0 || oControl.palette == 1)
            hudpal = oControl.preferredcolor + 1
        if (oControl.palette == 2)
            hudpal = oControl.preferredcolor + 17
    }
    if (instance_exists(oClient) && oClient.connected)
    {
        if (oControl.palette == 0 || oControl.palette == 1)
            hudpal = global.clientID + 1
        if (oControl.palette == 2)
            hudpal = global.clientID + 17
    }
}
if (oControl.hudoption == 1 && oControl.palette != 3 && os_type != os_android)
    hudpal = oControl.guicolor + 33
if (global.shaders_compiled && os_type != os_android)
{
    if (oControl.preferredcolor != 17 || (instance_exists(oClient) && oClient.connected) || oControl.hudoption == 1)
    {
        if (oControl.hudoption != 2 && (!oControl.gamehud) && oControl.hudpalette != -1)
            pal_swap_set(oControl.hudpalette, hudpal, 0)
    }
}
draw_set_blend_mode(bm_add)
if surface_exists(oSS_Control.s_map)
    draw_surface_ext(oSS_Control.s_map, 24, 56, 1, 1, 0, -1, image_alpha)
i = 0
repeat (27 + oControl.widescreen * 2)
{
    draw_background_ext(bgMapScreenBG, (i * 24), 32, 1, 1, 0, -1, image_alpha)
    draw_background_ext(bgMapScreenBG, 0, (56 + i * 24), 1, 1, 0, -1, image_alpha)
    if oControl.widescreen
    {
        e = 1
        repeat (3)
        {
            draw_background_ext(bgMapScreenBG, (0 - 24 * e), (32 + i * 24), 1, 1, 0, -1, image_alpha)
            e += 1
        }
    }
    i += 1
}
draw_set_blend_mode(bm_normal)
