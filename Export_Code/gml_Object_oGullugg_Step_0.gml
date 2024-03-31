action_inherited()
enemy_active_check(20)
enemy_target_check(90, 1)
if (active == 1 && stun == 0 && frozen == 0)
{
    if (state == 1)
    {
        direction += (rotspeed * facing)
        speed = myspeed
    }
    image_speed = 0.3
}
else
    speed = 0
if (state == 100)
    enemy_death()
