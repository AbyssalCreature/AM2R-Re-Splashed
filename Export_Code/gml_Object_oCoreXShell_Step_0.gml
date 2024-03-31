if (state == 0)
{
    if (statetime == 0)
        sfx_play(sndXMorph1)
    if (statetime < 40)
    {
        sizeX += 0.18
        sizeY += 0.12
    }
    if (statetime >= 40 && statetime < 80)
    {
        sizeX -= 0.18
        sizeY -= 0.12
        if (statetime == 40)
        {
            sprite_index = xtype
            depth = -155
            spawn_rnd_pickup_at((x + lengthdir_x(20, (90 + random_range(-20, 20)))), (y + lengthdir_y(20, (90 + random_range(-20, 20)))), 100)
            spawn_rnd_pickup_at((x + lengthdir_x(20, (18 + random_range(-20, 20)))), (y + lengthdir_y(20, (18 + random_range(-20, 20)))), 100)
            spawn_rnd_pickup_at((x + lengthdir_x(20, (306 + random_range(-20, 20)))), (y + lengthdir_y(20, (306 + random_range(-20, 20)))), 100)
            spawn_rnd_pickup_at((x + lengthdir_x(20, (234 + random_range(-20, 20)))), (y + lengthdir_y(20, (234 + random_range(-20, 20)))), 100)
            spawn_rnd_pickup_at((x + lengthdir_x(20, (162 + random_range(-20, 20)))), (y + lengthdir_y(20, (162 + random_range(-20, 20)))), 100)
            if (global.waterlevel != 0)
            {
                repeat (20)
                {
                    bubble = instance_create(x, y, oLBubble)
                    if instance_exists(bubble)
                    {
                        bubble.hspeed = random_range(-2.5, 2.5)
                        bubble.vspeed = (-random(0.4))
                    }
                }
            }
        }
    }
    if (statetime == 80)
    {
        state = 1
        statetime = 0
        alarm[0] = 15
    }
    image_index = 0
}
if (state == 1)
{
    if (x > oCharacter.x)
        hspeed -= acceleration
    else
        hspeed += acceleration
    if (y > (oCharacter.y - 24))
        vspeed -= acceleration
    else
        vspeed += acceleration
    if (hspeed > maxspeed)
        hspeed -= acceleration
    if (vspeed > maxspeed)
        vspeed -= acceleration
    if (hspeed < (-maxspeed))
        hspeed += acceleration
    if (vspeed < (-maxspeed))
        vspeed += acceleration
    friction = drag
    if (myhealth[2] <= 0)
    {
        state = 100
        statetime = 0
    }
    if (global.waterlevel != 0)
    {
        if (fxtimer == 0)
        {
            bubble = instance_create(x, y, oLBubble)
            if instance_exists(bubble)
            {
                bubble.alarm[0] = (60 + random(120))
                bubble.direction = random(360)
                bubble.speed = 0.5
            }
        }
    }
}
if (state == 100)
{
    if (statetime == 0)
    {
        hspeed = 0
        vspeed = 0
        visible = false
        sfx_play(sndCoreXBreak)
        if instance_exists(oElectricSparkCoreX)
        {
            sfx_stop(sndCoreXPhase)
            with (oElectricSparkCoreX)
                instance_destroy()
        }
        event_user(0)
        event_user(1)
        instance_destroy()
    }
}
statetime += 1
if (fxtimer < 5)
    fxtimer += 1
else
    fxtimer = 0
if (flashing > 0)
{
    canbehit = 0
    flashing -= 1
}
else
    canbehit = 1
if (sizeX < 1)
    sizeX = 1
if (sizeY < 1)
    sizeY = 1
