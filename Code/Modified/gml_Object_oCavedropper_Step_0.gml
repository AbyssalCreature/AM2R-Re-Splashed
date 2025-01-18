action_inherited()
if (state == 0)
{
    speed = 0
    if (distance_to_object(oCharacter) < 120)
    {
        state = 1
        statetime = 0
    }
}
if (state == 1 && frozen == 0)
{
    sprite_index = sCavedropperA
    image_speed = 0.5
    y += 0.5
    if (statetime == 30)
    {
        state = 2
        statetime = 0
        falling = 1
    }
}
if (state == 2)
{
    sprite_index = sCavedropper
    image_speed = 0.5
    if (frozen == 0)
    {
        gravity_direction = 270
        gravity = 0.4
        if (speed > 6)
            speed = 6
    }
    if (statetime > 10 && (collision_line((x - 3), (y + 2), (x + 3), (y + 2), oSolid, true, true) > 0 || y > (room_height + 20)))
    {
        state = 3
        statetime = 0
    }
}
if (state == 3)
{
    vspeed = 0.5
    gravity = 0
    sprite_index = sCavedropper
    image_speed = 0.2
    if ((get_ground_tile((x - sprite_xoffset), ((y - sprite_yoffset) - 8)) != -1 && get_ground_tile((x + sprite_xoffset), ((y - sprite_yoffset) - 8)) != -1) || get_ground_tile((x - sprite_xoffset), ((y + sprite_yoffset) + 1)) == -1 || get_ground_tile((x + sprite_xoffset), ((y + sprite_yoffset) + 1)) == -1)
        instance_destroy()
}
if frozen
{
    speed = 0
    gravity = 0
    image_speed = 0
}
if (state == 100)
    enemy_death()
