var inst;
action_inherited()
enemy_active_check(40)
enemy_target_check(90, 1)
if (active == 1 && frozen == 0)
{
    if (state == 0)
    {
        sprite_index = sBlobThrower
        image_index = 0
        image_speed = 0
        if (target && statetime > 100)
        {
            state = 1
            statetime = 0
        }
    }
    if (state == 1)
    {
        if (instance_number(oBlobAir) < 9)
        {
            if (image_index < 8)
                image_index += 0.2
            if (image_index > 2)
                vulnerable = 1
            if (image_index >= 8)
            {
                state = 2
                statetime = 0
                sprite_index = sBlobThrowerIdle
                frozenspr = 1495
            }
        }
    }
    if (state == 2)
    {
        image_index += 0.1
        if ((statetime / 40) == floor((statetime / 40)))
        {
            if (instance_number(oBlobAir) < 9)
            {
                inst = instance_create(x, (y - 45), oBlobAir)
                inst.parent = id
            }
        }
        if (statetime > 100)
        {
            state = 3
            sprite_index = sBlobThrower
            image_index = 7
            frozenspr = 1493
            statetime = 0
        }
    }
    if (state == 3)
    {
        if (image_index > 0)
            image_index -= 0.2
        if (image_index < 3)
            vulnerable = 0
        if (image_index <= 0)
        {
            state = 0
            statetime = 0
        }
    }
}
if (state == 100)
    enemy_death()
bcollider = collision_rectangle((x - 10), (y - 42), (x + 10), (y - 56), oBeam, 0, 1)
if (bcollider != noone && vulnerable == 1)
{
    myhealth -= 50
    if canflash
    {
        flashing = 5
        fxtimer = 0
    }
    PlaySoundMono(hitsound)
    if (myhealth <= 0)
        state = 100
    with (bcollider)
    {
        event_user(0)
        if (!pbeam)
            instance_destroy()
    }
}
mcollider = collision_rectangle((x - 10), (y - 42), (x + 10), (y - 56), oMissile, 0, 1)
if (mcollider != noone && vulnerable == 1)
{
    if canflash
    {
        flashing = 5
        fxtimer = 0
    }
    PlaySoundMono(hitsound)
    state = 100
    with (mcollider)
        event_user(0)
}
