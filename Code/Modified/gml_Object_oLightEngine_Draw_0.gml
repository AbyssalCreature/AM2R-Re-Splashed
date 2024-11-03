draw_set_blend_mode(bm_subtract)
if surface_exists(surf)
    draw_surface_ext(surf, (view_xview[0] - (53 * oControl.widescreen)), view_yview[0], 1, 1, 0, make_color_hsv(0, 0, (image_alpha * 255)), 1)
else
{
    event_user(0)
    event_user(1)
}
draw_set_blend_mode(bm_normal)
