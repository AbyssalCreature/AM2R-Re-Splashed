var col, expl;
if (active == 0)
{
    alarm[1] = -1
    col = instance_place(x, y, oMissileExpl)
    if (!instance_exists(col))
        col = instance_place(x, y, oBombExpl)
    if instance_exists(col)
    {
        if (state == 0)
        {
            repeat (3)
            {
                expl = instance_create(((x + (irandom(8) * facing)) + ((1 - facing) * 4)), (y + irandom_range(8, 24)), oFXAnimSpark)
                expl.image_speed = 0.5
                expl.additive = 0
                expl.depth = -10
                expl.sprite_index = sGunzooShotExpl
            }
            repeat (5)
                instance_create(((x + (8 * facing)) + ((1 - facing) * 4)), (y + irandom_range(4, 12)), oDebris)
            state = 1
        }
        if (cooldown <= 0)
        {
            active = 1
            alarm[0] = 1
            alarm[1] = 1
            sfx_play(sndEMPHit)
            time = timemax
        }
    }
    if (cooldown > 0)
        cooldown--
}
else if active
{
    if (time <= 0)
    {
        active = 0
        cooldown = cooldownmax
    }
    time--
}
