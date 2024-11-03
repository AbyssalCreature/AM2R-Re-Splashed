if spin
{
    if (sprite_index == sSkorpDiscLunge)
    {
        image_index += 0.2
        if (image_index > 2.8)
            sprite_index = sSkorpDisc
    }
    if (sprite_index == sSkorpDisc)
        image_index += 0.4
}
else if (sprite_index == sSkorpDisc)
{
    image_index = 2
    sprite_index = sSkorpDiscLunge
}
else if (sprite_index == sSkorpDiscLunge && image_index > 0.2)
    image_index -= 0.1
