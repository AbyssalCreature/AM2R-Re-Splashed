if (oControl.mod_fusion == 1 || oControl.MonsterPalettesFusionOnly == 0)
    pal_swap_set(oControl.OmegaPalette, 1, 0)
if surface_exists(surf)
{
    if (!flashing)
        draw_surface_ext(surf, (x - surf_x), (y - surf_y), 1, 1, 0, image_blend, 1)
    else
    {
        draw_surface_ext(surf, (x - surf_x), (y - surf_y), 1, 1, 0, make_color_rgb((255 - (fxtimer * 63)), (255 - (fxtimer * 63)), (255 - (fxtimer * 63))), 1)
        draw_set_blend_mode(bm_add)
        repeat (2)
            draw_surface_ext(surf, (x - surf_x), (y - surf_y), 1, 1, 0, -1, (1 - (fxtimer * 0.25)))
        draw_set_blend_mode(bm_normal)
    }
}
else
{
    surface_free(surf)
    surf = surface_create(200, 160)
    event_user(10)
}
shader_reset()
