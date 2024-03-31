var boom;
if (gravity != 0)
{
    repeat (10)
    {
        boom = make_explosion1((x + irandom_range(-19, 64)), (y + irandom_range(-14, 17)))
        boom.depth = (depth - 1)
    }
    sprite_index = sTankCannonDest
}
gravity = 0
speed = 0
