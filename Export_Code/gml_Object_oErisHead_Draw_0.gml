var jawdir;
if (oControl.mod_fusion == 1)
    pal_swap_set(oControl.ErisPalette, 1, 0)
jawdir = ((direction + 270) + image_yscale == -180)
draw_sprite_ext(sErisJaw, -1, (x + lengthdir_x(jawoff, jawdir)), (y + lengthdir_y(jawoff, jawdir)), 1, image_yscale, image_angle, -1, 1)
draw_sprite_ext(sErisHead, -1, x, y, 1, image_yscale, image_angle, -1, 1)
if (flashing > 0)
{
    draw_set_blend_mode(bm_add)
    repeat (2)
    {
        draw_sprite_ext(sErisJaw, -1, (x + lengthdir_x(jawoff, jawdir)), (y + lengthdir_y(jawoff, jawdir)), 1, image_yscale, image_angle, -1, (flashing * 0.1))
        draw_sprite_ext(sErisHead, -1, x, y, 1, image_yscale, image_angle, -1, (flashing * 0.1))
    }
    draw_set_blend_mode(bm_normal)
}
if boosting
{
    draw_set_blend_mode(bm_add)
    if (fxtimer == 0 || fxtimer == 1)
    {
        draw_sprite_ext(sErisJaw, -1, (x + lengthdir_x(jawoff, jawdir)), (y + lengthdir_y(jawoff, jawdir)), 1, image_yscale, image_angle, c_green, (1.1 + (fxtimer * 0.2)))
        draw_sprite_ext(sErisHead, -1, x, y, 1, image_yscale, image_angle, c_green, (1.1 + (fxtimer * 0.2)))
    }
    if (fxtimer == 2 || fxtimer == 3)
    {
        repeat (2)
        {
            draw_sprite_ext(sErisJaw, -1, (x + lengthdir_x(jawoff, jawdir)), (y + lengthdir_y(jawoff, jawdir)), 1, image_yscale, image_angle, c_yellow, 1)
            draw_sprite_ext(sErisHead, -1, x, y, 1, image_yscale, image_angle, c_yellow, 1)
            draw_sprite_ext(sErisJaw, -1, (x + lengthdir_x(jawoff, jawdir)), (y + lengthdir_y(jawoff, jawdir)), 1, image_yscale, image_angle, c_white, 1)
            draw_sprite_ext(sErisHead, -1, x, y, 1, image_yscale, image_angle, c_white, 1)
        }
    }
    if (fxtimer == 4 || fxtimer == 5)
    {
        repeat (2)
        {
            draw_sprite_ext(sErisJaw, -1, (x + lengthdir_x(jawoff, jawdir)), (y + lengthdir_y(jawoff, jawdir)), 1, image_yscale, image_angle, c_red, 1)
            draw_sprite_ext(sErisHead, -1, x, y, 1, image_yscale, image_angle, c_red, 1)
        }
    }
    draw_set_blend_mode(bm_normal)
}
shader_reset()
