action_inherited()
enemy_active_check(20)
enemy_target_check(90, 1)
if (active == 1 && stun == 0 && frozen == 0)
{
    if (state == 0)
    {
        sprite_index = sAutrack
        image_index = 0
        image_speed = 0
        if target
        {
            state = 1
            statetime = 0
        }
    }
    if (state == 1)
    {
        if (image_index < 6)
            image_index += 0.5
        if (statetime > 20)
        {
            state = 2
            statetime = 0
            sprite_index = sAutrackAttack
            image_index = 0
        }
    }
    if (state == 2)
    {
        if (image_index < 3)
            image_index += 0.5
        if (statetime == 12)
            event_user(1)
        if (statetime >= 16)
        {
            state = 3
            statetime = 0
            sprite_index = sAutrack
            image_index = 5
        }
    }
    if (state == 3)
    {
        if (image_index > 0)
            image_index -= 0.5
        else
            state = 0
    }
}
if (stun && state == 2 && statetime == 12)
    statetime = 13
if (state == 100)
{
    enemy_death()
    repeat (10)
        instance_create(x, (y - 10), oDebris)
}
