draw_sprite(sA4BlastDoorBottom, -1, x, (y + yoff))
draw_sprite(sA4BlastDoorTop, -1, x, ((y - 64) - yoff))
if fl_lock
    draw_sprite(sA4BlastDoorLock, lframe, x, (y - 32))
draw_sprite_ext(sA4BlastDoorClampLock, -1, (x - 10), (y + coff), 1, 1, 0, -1, 1)
draw_sprite_ext(sA4BlastDoorClampLock, -1, (x + 10), (y + coff), 1, 1, 0, -1, 1)
draw_sprite_ext(sA4BlastDoorClampLock, -1, (x - 10), ((y - 64) - coff), 1, -1, 0, -1, 1)
draw_sprite_ext(sA4BlastDoorClampLock, -1, (x + 10), ((y - 64) - coff), 1, -1, 0, -1, 1)
draw_sprite_ext(sA4BlastDoorBolt, -1, (x - 10), (y + boff), 1, 1, 0, -1, 1)
draw_sprite_ext(sA4BlastDoorBolt, -1, (x + 10), (y + boff), 1, 1, 0, -1, 1)
draw_sprite_ext(sA4BlastDoorBolt, -1, (x - 10), ((y - 64) - boff), 1, -1, 0, -1, 1)
draw_sprite_ext(sA4BlastDoorBolt, -1, (x + 10), ((y - 64) - boff), 1, -1, 0, -1, 1)
if (pframe1 >= 0)
{
    draw_sprite_ext(sA4BlastDoorPiston, pframe1, (x + 5), ((y - 23) + yoff), 1, 1, 0, -1, 1)
    draw_sprite_ext(sA4BlastDoorPiston, pframe1, (x + 5), ((y - 44) - yoff), 1, 1, 0, -1, 1)
    draw_sprite_ext(sA4BlastDoorPiston, pframe1, (x - 5), ((y - 23) + yoff), -1, 1, 0, -1, 1)
    draw_sprite_ext(sA4BlastDoorPiston, pframe1, (x - 5), ((y - 44) - yoff), -1, 1, 0, -1, 1)
}
if (pframe2 >= 0)
{
    draw_sprite_ext(sA4BlastDoorPiston, pframe2, (x + 5), ((y - 17) + yoff), 1, 1, 0, -1, 1)
    draw_sprite_ext(sA4BlastDoorPiston, pframe2, (x + 5), ((y - 50) - yoff), 1, 1, 0, -1, 1)
    draw_sprite_ext(sA4BlastDoorPiston, pframe2, (x - 5), ((y - 17) + yoff), -1, 1, 0, -1, 1)
    draw_sprite_ext(sA4BlastDoorPiston, pframe2, (x - 5), ((y - 50) - yoff), -1, 1, 0, -1, 1)
}
if (pframe3 >= 0)
{
    draw_sprite_ext(sA4BlastDoorPiston, pframe3, (x + 5), ((y - 11) + yoff), 1, 1, 0, -1, 1)
    draw_sprite_ext(sA4BlastDoorPiston, pframe3, (x + 5), ((y - 56) - yoff), 1, 1, 0, -1, 1)
    draw_sprite_ext(sA4BlastDoorPiston, pframe3, (x - 5), ((y - 11) + yoff), -1, 1, 0, -1, 1)
    draw_sprite_ext(sA4BlastDoorPiston, pframe3, (x - 5), ((y - 56) - yoff), -1, 1, 0, -1, 1)
}
