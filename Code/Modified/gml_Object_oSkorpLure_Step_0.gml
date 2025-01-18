if (sprite_index == skorp_get_lure(sSkorpLure) || sprite_index == skorp_get_lure(sSkorpLureUp))
{
    image_speed = 0.15
    if (irandom(35) == 0 && cooldown <= 0)
    {
        glowing = 40
        cooldown = 80
    }
}
if (cooldown > 0)
    cooldown--
if (glowing > 0)
    glowing--
if (state == 100)
{
    switch floor(image_angle)
    {
        case 270:
        case 90:
            sprite_index = skorp_get_lure(sSkorpLureUpV)
            break
        default:
            sprite_index = skorp_get_lure(sSkorpLureV)
            break
    }

    if (visible == false)
        instance_destroy()
}
