draw_set_blend_mode(bm_add)
if surface_exists(oSS_Control.s_map)
    draw_surface_ext(oSS_Control.s_map, 24, 56, 1, 1, 0, -1, image_alpha)
i = 0
repeat (27 + (oControl.widescreen * 2))
{
    draw_background_ext(bgMapScreenBG, (i * 24), 32, 1, 1, 0, -1, image_alpha)
    draw_background_ext(bgMapScreenBG, 0, (56 + (i * 24)), 1, 1, 0, -1, image_alpha)
    if oControl.widescreen
    {
        e = 1
        repeat (3)
        {
            draw_background_ext(bgMapScreenBG, (0 - (24 * e)), (32 + (i * 24)), 1, 1, 0, -1, image_alpha)
            e += 1
        }
    }
    i += 1
}
draw_set_blend_mode(bm_normal)
