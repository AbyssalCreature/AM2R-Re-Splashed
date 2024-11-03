action_inherited()
enemy_active_check(20)
enemy_target_check(90, 1)
if (active == 1 && stun == 0 && frozen == 0)
{
    if (state == 1)
    {
        x += ((targetposx[targetnum] - x) / moveratio)
        y += ((targetposy[targetnum] - y) / moveratio)
        if (statetime >= movesteps)
        {
            targetnum += 1
            if (targetnum > 3)
                targetnum = 0
            statetime = 0
        }
    }
    image_speed = 0.5
}
if (state == 100)
    enemy_death()
