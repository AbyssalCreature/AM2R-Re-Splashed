if (facing == 1)
{
    i = 1
    repeat (10)
    {
        draw_sprite_ext(sBoss1Spike, -1, ((x + 18) - spikeoffset), (y - (8 * i)), 1, 1, 0, -1, 1)
        i += 1
    }
}
if (facing == -1)
{
    i = 1
    repeat (10)
    {
        draw_sprite_ext(sBoss1Spike, -1, ((x - 18) + spikeoffset), (y - (8 * i)), -1, 1, 0, -1, 1)
        i += 1
    }
}
draw_sprite_ext(sprite_index, -1, x, y, facing, 1, 0, -1, 1)
draw_sprite_ext(sprite_index, -1, x, (y - 32), facing, 1, 0, -1, 1)
draw_sprite_ext(sprite_index, -1, x, (y - 64), facing, 1, 0, -1, 1)
