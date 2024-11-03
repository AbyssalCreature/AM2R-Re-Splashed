var i, soff_x, soff_y;
if (oControl.mod_fusion == 1 || oControl.MonsterPalettesFusionOnly == 0)
    pal_swap_set(oControl.QueenPalette, 1, 0)
draw_set_blend_mode(bm_add)
draw_sprite_ext(sQueenMouthGlow, -1, x, y, 1, 1, 0, -1, jawglowalpha)
draw_set_blend_mode(bm_normal)
i = 0
repeat (neck_segments - 1)
{
    if (!flashing)
        draw_sprite_ext(sQueenNeck, -1, neck_x[i], (neck_y[i] + neck_yoff[i]), 1, 1, 0, image_blend, 1)
    else
    {
        draw_sprite_ext(sQueenNeck, -1, neck_x[i], (neck_y[i] + neck_yoff[i]), 1, 1, 0, make_color_rgb((255 - (fxtimer * 63)), (255 - (fxtimer * 63)), (255 - (fxtimer * 63))), 1)
        draw_set_blend_mode(bm_add)
        repeat (2)
            draw_sprite_ext(sQueenNeck, -1, neck_x[i], (neck_y[i] + neck_yoff[i]), 1, 1, 0, -1, (1 - (fxtimer * 0.25)))
        draw_set_blend_mode(bm_normal)
    }
    i += 1
}
soff_x = 0
soff_y = 0
if shaking
{
    soff_x = choose(-1, 0, 1)
    soff_y = choose(-1, 0, 1)
}
if surface_exists(surf)
{
    if (!flashing)
        draw_surface_ext(surf, ((x - surf_x) + soff_x), ((y - surf_y) + soff_y), 1, 1, 0, image_blend, 1)
    else
    {
        draw_surface_ext(surf, ((x - surf_x) + soff_x), ((y - surf_y) + soff_y), 1, 1, 0, make_color_rgb((255 - (fxtimer * 63)), (255 - (fxtimer * 63)), (255 - (fxtimer * 63))), 1)
        draw_set_blend_mode(bm_add)
        repeat (2)
            draw_surface_ext(surf, ((x - surf_x) + soff_x), ((y - surf_y) + soff_y), 1, 1, 0, -1, (1 - (fxtimer * 0.25)))
        draw_set_blend_mode(bm_normal)
    }
}
else
{
    surface_free(surf)
    surf = surface_create(200, 200)
    event_user(10)
}
if (head_frame == 0)
{
    draw_set_blend_mode(bm_add)
    if (head_damage < 2)
        draw_sprite_ext(sQueenGlow, 0, x, y, 1, 1, ((image_angle + ujaw_angle) + ja_off), -1, (glowalpha * (1 - (glowfx * 0.1))))
    else
        draw_sprite_ext(sQueenGlow, 1, x, y, 1, 1, ((image_angle + ujaw_angle) + ja_off), -1, (glowalpha * (1 - (glowfx * 0.1))))
    if ((ujaw_angle + ja_off) < 20)
        draw_sprite_ext(sQueenGlow2, 0, x, y, 1, 1, image_angle, -1, (glowalpha * (1 - (glowfx * 0.1))))
    else
        draw_sprite_ext(sQueenGlow2, 1, x, y, 1, 1, image_angle, -1, (glowalpha * (1 - (glowfx * 0.1))))
    draw_set_blend_mode(bm_normal)
}
draw_set_blend_mode(bm_add)
draw_sprite_ext(sQueenJawGlow, head_damage, x, y, 1, 1, 0, -1, jawglowalpha)
draw_set_blend_mode(bm_normal)
shader_reset()
