var target;
action_inherited()
if (y > (ystart + 5))
    instance_destroy()
if (active == 1 && stun == 0 && frozen == 0)
{
    if (state == 0)
    {
        vspeed = -5.2
        state = 1
    }
    if (state == 1)
    {
        vspeed += 0.1
        target = (oCharacter.y - (oCharacter.sprite_height / 2))
        if (sign(vspeed) != -1 && y <= (target + 4) && y >= (target - 4))
            state = 2
    }
    if (state == 2)
    {
        vspeed = 0
        hspeed = lerp(hspeed, (facing * 3), 0.1)
    }
}
else
    speed = 0
if (state == 100)
    enemy_death()
