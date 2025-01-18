draw_sprite(sprite_index, -1, x, y)
if active
{
    draw_sprite(sA2WJLight, lightframe, (x - 24), y)
    if (state == 1)
        draw_sprite(sA2WJEngine, engineframe, (x - 8), (y + 16))
}
