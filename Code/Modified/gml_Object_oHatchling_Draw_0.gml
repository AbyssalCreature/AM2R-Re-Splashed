if (myid == 0)
{
    draw_self()
    draw_set_blend_mode(bm_add)
    draw_sprite_ext(sprite_index, -1, x, y, 1, 1, 0, -1, flash)
    draw_set_blend_mode(bm_normal)
}
else
{
    if (global.shaders_compiled && os_type != os_android)
        pal_swap_set(oControl.MultitroidBabyPalette, myid, 0)
    draw_self()
    draw_sprite_ext(sprite_index, -1, x, y, 1, 1, 0, -1, flash)
    pal_swap_reset()
    shader_reset()
}
