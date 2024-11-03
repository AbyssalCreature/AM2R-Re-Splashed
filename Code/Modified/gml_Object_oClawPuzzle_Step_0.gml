if (claw1.active && claw2.active && claw3.active)
{
    alarm[0] = 60
    with (oClawOrb)
    {
        active = 0
        canbeshot = 0
        sprite_index = sClawOrb1
        image_index = 0
        image_speed = 0
        alarm[0] = 0
    }
}
