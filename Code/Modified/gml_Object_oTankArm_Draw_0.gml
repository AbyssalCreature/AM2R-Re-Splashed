draw_sprite_ext(sTankArm, draw_forearm, x, y, 1, 1, aangle, -1, 1)
draw_sprite(sprite_index, -1, x, y)
if flashing
{
    draw_set_blend_mode(bm_add)
    repeat (2)
    {
        if (draw_forearm == 1)
            draw_sprite_ext(sTankArm, 0, x, y, 1, 1, aangle, -1, (flashing / 5))
        draw_sprite_ext(sprite_index, -1, x, y, 1, 1, 0, -1, (flashing / 5))
    }
    draw_set_blend_mode(bm_normal)
}
