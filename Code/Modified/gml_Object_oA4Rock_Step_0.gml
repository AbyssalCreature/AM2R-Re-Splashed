if (state == 1)
{
    if (oCharacter.x > x)
        hspeed = -2.5
    else
        hspeed = 2.5
    if (statetime > 10)
        vspeed += 0.1
    image_angle += 5
    if (statetime > 15 && collision_point(x, (y + 16), oSolid, 1, 1) != -4)
        event_user(1)
    statetime += 1
}
