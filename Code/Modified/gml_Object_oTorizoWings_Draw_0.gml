if (state == 0)
{
    draw_sprite_ext(sTorizoWingsC, image_index, (x + (offset1 * tf)), y, (1 * oTorizo2.facing), 1, 0, -1, 1)
    draw_sprite_ext(sTorizoWingsB, image_index, (x - (offset1 * tf)), y, (-1 * oTorizo2.facing), 1, 0, -1, 1)
}
if (state == 1)
{
    if (spr_set == 2)
    {
        draw_sprite(sTorizoWingsA, 0, (x + offset2), y)
        draw_sprite_ext(sTorizoWingsA, 0, (x - offset2), y, -1, 1, 0, -1, 1)
    }
    if (spr_set == 1)
    {
        draw_sprite_ext(sTorizoWingsC, 6, (x + (offset1 * tf)), y, (1 * oTorizo2.facing), 1, 0, -1, 1)
        draw_sprite_ext(sTorizoWingsB, 6, (x - (offset1 * tf)), y, (-1 * oTorizo2.facing), 1, 0, -1, 1)
    }
    if (spr_set == 0)
        draw_sprite_ext(sTorizoWingsC, 6, (x - (offset0 * tf)), y, (-1 * oTorizo2.facing), 1, 0, -1, 1)
}
