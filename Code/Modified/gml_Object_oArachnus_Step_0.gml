if (y > 208)
    CollisionBottom = 1
else
    CollisionBottom = 0
if (y < 64)
    CollisionTop = 1
else
    CollisionTop = 0
if (x < 48)
    CollisionLeft = 1
else
    CollisionLeft = 0
if (x > 272)
    CollisionRight = 1
else
    CollisionRight = 0
nextattack = floor(random(3))
if (state == 0)
{
    if (statetime == 0)
    {
        if (angry < 100)
            canbehit = 1
        else
            canbehit = 0
        hspeed = 0
    }
    if (oCharacter.x < x && facing == 1 && turning == 0)
    {
        facing = -1
        turning = 1
        sprite_index = sArachnusTurn
        image_index = 0
        image_speed = 0.5
    }
    if (oCharacter.x > x && facing == -1 && turning == 0)
    {
        facing = 1
        turning = 1
        sprite_index = sArachnusTurn
        image_index = 0
        image_speed = 0.5
    }
    if (turning == 0)
    {
        sprite_index = sArachnusStand
        image_speed = 0.2
    }
    if (statetime > 60 && turning == 0)
    {
        if (nextattack == 0)
        {
            state = 1
            statetime = -1
            xspeed = 0
        }
        if (nextattack == 1)
        {
            state = 6
            statetime = -1
        }
        if (nextattack == 2)
        {
            state = 8
            statetime = -1
        }
        if (angry >= 100)
        {
            state = 50
            statetime = -1
        }
    }
}
if (state == 1)
{
    if (statetime == 0)
    {
        hspeed = (4 * facing)
        image_index = 0
        sprite_index = sArachnusWalk
        image_speed = 0.2
        sfx_play(sndArachnusJump)
    }
    if (statetime > 4 && abs(hspeed) > 0.05)
        hspeed *= 0.8
    if (image_index > 3)
        image_speed = 0
    if (statetime == 30)
    {
        state = 7
        statetime = -1
        hspeed = 0
    }
    if (CollisionRight && facing == 1)
        hspeed = 0
    if (CollisionLeft && facing == -1)
        hspeed = 0
}
if (state == 2)
{
    if (statetime == 0)
    {
        image_index = 0
        sprite_index = sArachnusFireball
        image_speed = 0.2
        i = 0
    }
    if (myhealth == 3)
    {
        if (statetime == 40 || statetime == 60 || statetime == 80 || statetime == 100)
        {
            fball = instance_create((x + (9 * facing)), (y - 24), oArachnusFireball1)
            fball.hspeed = ((2.2 + (i * 2)) * facing)
            fball.vspeed = -0.1
            sfx_play(sndFireball)
            make_smoke_explosion((x + (15 * facing)), (y - 24))
            i += 2
        }
    }
    if (myhealth == 2)
    {
        if (statetime == 40 || statetime == 50 || statetime == 60 || statetime == 70 || statetime == 80 || statetime == 90 || statetime == 100)
        {
            fball = instance_create((x + (9 * facing)), (y - 24), oArachnusFireball1)
            fball.hspeed = ((2.2 + (i * 2)) * facing)
            fball.vspeed = -0.1
            sfx_play(sndFireball)
            make_smoke_explosion((x + (15 * facing)), (y - 24))
            i += 1
        }
    }
    if (myhealth == 1)
    {
        if (statetime == 60)
        {
            fball = instance_create((x + (15 * facing)), (y - 24), oArachnusFireball3)
            fball.hspeed = (4 * facing)
            fball.vspeed = -0.1
            sfx_play(sndFireball)
            make_smoke_explosion((x + (6 * facing)), (y - 24))
        }
    }
    if (statetime == 130)
    {
        state = 0
        statetime = -1
    }
}
if (state == 4)
{
    if (statetime == 0)
    {
        angle = 0
        xspeed = 0
        hitcount = 0
        alarm[1] = 1
        if (myhealth == 3)
            rolltime = 400
        if (myhealth == 2)
            rolltime = 600
        if (myhealth == 1)
            rolltime = 800
    }
    if (statetime == 10)
        xspeed = 1
    if (statetime > 10 && xspeed < 4)
        xspeed += 0.02
    hspeed = (xspeed * facing)
    angle += (4 * xspeed)
    if (angle > 360)
        angle -= 360
    mask_index = sArachBallMask
    if (CollisionRight && facing == 1)
    {
        facing = -1
        event_user(1)
    }
    if (CollisionLeft && facing == -1)
    {
        facing = 1
        event_user(1)
    }
    if CollisionBottom
    {
        vspeed = 0
        gravity = 0
        y = 208
        event_user(1)
    }
    if (CollisionTop && vspeed < 0)
        vspeed *= -1
    if (statetime > rolltime && y == 208)
    {
        state = 5
        statetime = -1
        image_index = 0
        sprite_index = sArachnusUnmorph
        vspeed = 0
        gravity = 0
        if (angry >= 100)
        {
            if (oCharacter.x < x)
                facing = -1
            if (oCharacter.x > x)
                facing = 1
        }
    }
}
if (state == 5)
{
    hspeed *= 0.5
    image_speed = 0.5
    if (CollisionRight && facing == 1)
        hspeed = 0
    if (CollisionLeft && facing == -1)
        hspeed = 0
}
if (state == 6)
{
    if (statetime == 0)
    {
        vspeed = -3.5
        hspeed = (6 * (-facing))
        gravity = 0.2
        image_index = 0
        sprite_index = sArachnusJump
        image_speed = 0.1
        sfx_play(sndArachnusJump)
    }
    if (image_index > 2)
        image_speed = 0
    if (CollisionRight && facing == -1)
        hspeed = 0
    if (CollisionLeft && facing == 1)
        hspeed = 0
    if CollisionBottom
    {
        vspeed = 0
        hspeed = 0
        gravity = 0
        y = 208
        state = 2
        statetime = -1
        event_user(1)
    }
}
if (state == 7)
{
    if (statetime == 0)
    {
        image_index = 0
        sprite_index = sArachnusClaw
        image_speed = 0.25
    }
    if (image_index >= 2 && image_index < 2.25)
    {
        fball = instance_create((x + (9 * facing)), (y - 24), oArachnusClawProj)
        fball.hspeed = (6 * facing)
        if (oCharacter.y < (y - 32))
            fball.vspeed = -2
        if (oCharacter.y < (y - 64))
            fball.vspeed = -3
        if (oCharacter.y < (y - 80))
            fball.vspeed = -4
        fball.image_angle = fball.direction
        sfx_play(sndArachnusSwipe)
    }
    if (myhealth == 3 && statetime == 28)
    {
        state = 0
        statetime = -1
    }
    if (myhealth == 2 && statetime == 56)
    {
        state = 0
        statetime = -1
    }
    if (myhealth == 1 && statetime == 83)
    {
        state = 0
        statetime = -1
    }
}
if (state == 8)
{
    if (statetime == 0)
    {
        vspeed = -7
        if (x < 160)
            hspeed = 2
        else
            hspeed = -2
        gravity = 0.2
        image_index = 0
        sprite_index = sArachnusJump
        image_speed = 0.1
        sfx_play(sndArachnusJump)
    }
    if (image_index > 2 && statetime < 30)
        image_speed = 0
    if (statetime == 30)
    {
        gravity = 0
        speed = 0
        image_index = 0
        sprite_index = sArachnusMorph
        image_speed = 0.5
        canbehit = 0
    }
    if (statetime > 30)
        speed *= 0.9
}
if (state == 9)
{
    if (statetime == 0)
    {
        rotspeed = 0
        sfx_play(sndArachnusAirSpin)
    }
    if (statetime < 60)
        rotspeed += 1
    if (statetime == 60)
    {
        direction = point_direction(x, y, oCharacter.x, 208)
        if (myhealth == 3)
            speed = 6
        if (myhealth == 2)
            speed = 8
        if (myhealth == 1)
            speed = 10
        i = 0
        angle = 0
        alarm[1] = 1
        sfx_play(sndArachnusHomingBall)
    }
    angle += rotspeed
    if (angle > 360)
        angle -= 360
    if (CollisionRight && facing == 1)
        hspeed = 0
    if (CollisionLeft && facing == -1)
        hspeed = 0
    if (CollisionBottom && vspeed > 0)
    {
        if (i == 0)
        {
            hspeed = 0
            vspeed = -5
            gravity = 0.2
            i = 1
        }
        else
        {
            vspeed = 0
            hspeed = 0
            gravity = 0
            y = 208
            state = 5
            statetime = -1
            image_index = 0
            sprite_index = sArachnusUnmorph
        }
        event_user(1)
    }
}
if (state == 50)
{
    if (statetime == 0)
    {
        image_index = 0
        sprite_index = sArachnusGrowl
        image_speed = 0.2
        canbehit = 0
    }
    if (statetime == 15)
        sfx_play(sndArachnusGrowl)
    if (statetime == 60)
    {
        state = 3
        statetime = -1
        image_index = 0
        sprite_index = sArachnusMorph
        image_speed = 0.5
    }
}
if (state == 52)
{
    if (statetime == 0)
    {
        image_index = 0
        sprite_index = sArachnusFireball
        image_speed = 0.2
        i = 0
    }
    if (statetime == 40 || statetime == 60 || statetime == 80)
    {
        fball = instance_create((x + (9 * facing)), (y - 24), oArachnusFireball2)
        fball.hspeed = (2 * facing)
        i += 1
        sfx_play(sndFireball)
        make_smoke_explosion((x + (15 * facing)), (y - 24))
    }
    if (statetime == 110)
    {
        image_index = 0
        sprite_index = sArachnusStand
        image_speed = 0.2
    }
    if (statetime == 150)
    {
        state = 0
        statetime = -1
    }
}
if (state == 90)
{
    if (x < 160)
        facing = -1
    else
        facing = 1
    if (statetime == 0)
    {
        speed = 0
        gravity = 0
        sprite_index = sArachnusHurt
        image_speed = 0
        image_index = 0
        myhealth -= 1
        shaking = 1
        angry = 0
        if (myhealth == 0)
        {
            with (oArachnusFireball3)
                instance_destroy()
            alarm[10] = 60
            alarm[11] = 240
        }
        sfx_play(sndArachnusHurt)
    }
    flashing = 2
    if (statetime == 30)
        shaking = 0
    if (statetime > 60 && myhealth > 0)
        flashing = 0
    if (statetime == 60)
    {
        gravity = 0.2
        hspeed = (-facing)
        image_speed = 0.15
        image_index = 0
        if (myhealth == 2)
        {
            with (spike_L3)
                active = 0
            with (spike_R3)
                active = 0
        }
        if (myhealth == 1)
        {
            with (spike_L2)
                active = 0
            with (spike_R2)
                active = 0
        }
        if (myhealth == 0)
        {
            with (spike_L1)
                active = 0
            with (spike_R1)
                active = 0
            hspeed = (2.5 * (-facing))
            sfx_play(sndArachnusDeath)
        }
    }
    if (CollisionBottom && vspeed > 0)
    {
        state = 0
        if (myhealth == 0)
            state = 100
        statetime = -1
        speed = 0
        gravity = 0
        y = 208
        event_user(1)
    }
}
if (state == 100)
    flashing = 2
statetime += 1
if shaking
    shakeoffset = (!shakeoffset)
else
    shakeoffset = 0
if (fxtimer < 5)
    fxtimer += 1
else
    fxtimer = 0
if (flashing > 0)
    flashing -= 1
if (angry > 100)
    angry = 100
if PowerBombImmune
{
    if (!instance_exists(oPBombExpl))
        PowerBombImmune = 0
}
