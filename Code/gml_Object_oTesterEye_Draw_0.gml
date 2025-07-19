if (oControl.mod_fusion == 1)
    pal_swap_set(oControl.TesterPalette, 1, 0)
draw_self()
draw_sprite(sTesterEyeCenter, -1, (x + centerx), (y + centery))
draw_sprite_ext(sTesterEyeShine, shine_frame, x, y, 1, 1, 0, -1, shinefx)
if flashing
{
    draw_set_blend_mode(bm_add)
    repeat (2)
        draw_sprite_ext(sprite_index, -1, x, y, 1, 1, image_angle, -1, (flashing / 5))
    draw_set_blend_mode(bm_normal)
}
if (shutter_frame < 4)
    draw_sprite(sTesterShutter, shutter_frame, x, y)
shader_reset()
