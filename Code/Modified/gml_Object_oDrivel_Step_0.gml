if (frozen == 0)
{
    if (state == 0)
    {
        hspeed = lerp(hspeed, (0.5 * facing), 0.05)
        if (y > (targety + 4))
            vspeed -= 0.1
        if (y < (targety - 4))
            vspeed += 0.1
        if (collision_line((x + (facing * 25)), (y - 4), (x + (facing * 25)), (y + 4), oSolid, true, true) || (facing == 1 && x > limit_r) || (facing == -1 && x < limit_l))
            facing = (-facing)
    }
}
else
    speed = 0
event_inherited()
if (state == 100)
    enemy_death()
