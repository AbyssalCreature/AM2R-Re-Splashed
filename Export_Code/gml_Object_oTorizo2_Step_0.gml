if (y >= 432)
    CollisionBottom = 1
else
    CollisionBottom = 0
if (y <= (WallUp + 80))
    CollisionTop = 1
else
    CollisionTop = 0
if (x <= 48)
    CollisionLeft = 1
else
    CollisionLeft = 0
if (x >= 592)
    CollisionRight = 1
else
    CollisionRight = 0
facingplayer = 0
if (facing == 1 && oCharacter.x > x)
    facingplayer = 1
if (facing == -1 && oCharacter.x < x)
    facingplayer = 1
wings.x = x
wings.y = (y - 65)
nextattack = floor(random(2))
if (state == 0)
{
    if (statetime == 0)
    {
        sprite_index = sTorizoKneel
        image_index = 3
        image_speed = 0
        speed = 0
        turning = 0
    }
    if (statetime == 45)
    {
        sfx_play(sndTorizoRoar)
        image_index = 2
    }
    if (statetime == 55)
        image_index = 1
    if (statetime == 65)
        image_index = 0
    if (statetime == 75)
    {
        vspeed = -3.5
        if (x < 160)
            hspeed = 1.2
        if (x > 480)
            hspeed = -1.2
        sprite_index = sTorizoFly
        image_index = 0
    }
    if (statetime > 75)
        speed *= 0.95
    if (statetime == 90)
    {
        sprite_index = sTorizoFly
        image_index = 1
        image_speed = 0
    }
    if (statetime == 240)
    {
        state = 1
        statetime = 0
    }
}
if (state == 1)
{
    if (statetime == 0)
    {
        sprite_index = sTorizoFly
        image_index = 1
        image_speed = 0
        xAcc = 0.2
        yAcc = 0.15
        move = 1
        if (phase == 0)
        {
            if (stayaway == 0)
                maxSpeed = 1.8
            else
                maxSpeed = 2.5
        }
        if (phase == 1)
            maxSpeed = 1.8
        if (phase == 2)
            maxSpeed = 2.35
        if (global.difficulty >= 2)
            maxSpeed = 2.4
        if ((instance_exists(oTorizoGhost) || instance_exists(oTorizoEgg)) && global.difficulty < 2)
            maxSpeed *= 0.8
    }
    if (stayaway == 0)
    {
        if (statetime > 5)
        {
            if (oCharacter.x < (x - 32) && facing == 1 && turning == 0)
                facing = -1
            if (oCharacter.x > (x + 32) && facing == -1 && turning == 0)
                facing = 1
        }
        if (facing == 1)
            targetx = 640
        else
            targetx = 0
        targety = oCharacter.y
        if (oCharacter.y > 270 && globaltime < 1200)
            targety = 120
    }
    else
    {
        if (oCharacter.x < x && facing == 1 && turning == 0)
            facing = -1
        if (oCharacter.x >= x && facing == -1 && turning == 0)
            facing = 1
        if (x < 128 && targetx == 0)
            targetx = 640
        if (x > 512 && targetx == 640)
            targetx = 0
        if (y >= 288 && targety == 288)
            targety = 144
        if (y <= 144 && targety == 144)
            targety = 288
    }
    if (stayaway == 0 && statetime > 300 && ((oCharacter.y < 270 && globaltime < 1200) || globaltime >= 1200))
    {
        if (nextattack == 0)
        {
            state = 2
            statetime = 0
        }
        if (nextattack == 1)
        {
            if (phase >= 1)
                state = 3
            else
                state = 2
            statetime = 0
        }
    }
    if ((facing == 1 && oCharacter.x < (x + 16)) || (facing == -1 && oCharacter.x > (x - 16)))
        image_index = 2
    if ((facing == 1 && oCharacter.x >= (x + 16) && oCharacter.x < (x + 64)) || (facing == -1 && oCharacter.x <= (x - 16) && oCharacter.x > (x - 64)))
        image_index = 1
    if ((facing == 1 && oCharacter.x >= (x + 64)) || (facing == -1 && oCharacter.x <= (x - 64)))
        image_index = 0
    if ((statetime > 30 && phase == 0 && myhealth < hpforattack1) || (phase == 1 && myhealth < hpforattack2))
    {
        state = 4
        statetime = 0
        phase += 1
        with (oTorizoSpikes)
            alarm[0] = 1
    }
    if (usedbirds == 0 && phase == 1 && statetime == 120)
    {
        state = 3
        statetime = 0
        usedbirds = 1
    }
}
if (state == 2)
{
    speed *= 0.95
    if (statetime == 0)
    {
        sprite_index = sTorizoFlyFireball
        image_index = 0
        image_speed = 0
        xAcc = 0.3
        yAcc = 0.2
        maxSpeed = 3
        move = 1
        targety = 160
        sfx_play(sndTorizoAttack1)
    }
    if (facing == 1)
        targetx = (oCharacter.x - 140)
    else
        targetx = (oCharacter.x + 140)
    if (statetime == 60)
        move = 0
    if (statetime > 60)
    {
        if (image_index < 4)
            image_index += 0.1
    }
    if (statetime == 120)
        alarm[0] = 1
    if (statetime > 230)
    {
        if (image_index > 0)
            image_index -= 0.1
    }
    if (statetime == 240)
    {
        state = 1
        statetime = -1
    }
}
if (state == 3)
{
    speed *= 0.95
    if (statetime == 0)
    {
        sprite_index = sTorizoFly
        image_index = 0
        image_speed = 0
        xAcc = 0.2
        yAcc = 0.4
        maxSpeed = 3.5
        move = 1
        targety = 300
        sfx_play(sndTorizoAttack2)
    }
    if (facing == 1)
        targetx = (oCharacter.x - 180)
    else
        targetx = (oCharacter.x + 180)
    if (statetime == 60)
        move = 0
    if (statetime == 120)
        alarm[0] = 1
    if (statetime == 300)
    {
        state = 1
        statetime = -1
    }
}
if (state == 4)
{
    if (statetime == 0)
    {
        sprite_index = sTorizoFly
        image_index = 0
        image_speed = 0
        speed = 0
        turning = 0
        if (facing == 1)
            targetx = -120
        else
            targetx = 720
        sfx_play(sndTorizoRoar)
    }
    if (targetx > x)
        hspeed += 0.1
    else
        hspeed -= 0.1
    if (statetime == 120)
    {
        state = 5
        statetime = 0
    }
}
if (state == 5)
{
    if (statetime == 0)
    {
        sprite_index = sTorizoDive
        mask_index = sTorizoDive
        image_index = 2
        image_speed = 0
        speed = 0
        turning = 0
    }
    if (statetime == 1)
    {
        if (facing == 1)
            x = (oCharacter.x - 320)
        else
            x = (oCharacter.x + 320)
        y = (oCharacter.y - 4)
        hspeed = (12 * facing)
        sfx_play(sndTorizoAttack2)
    }
    if (statetime == 60)
    {
        facing = (-facing)
        if (facing == 1)
            x = (oCharacter.x - 320)
        else
            x = (oCharacter.x + 320)
        y = (oCharacter.y - 4)
        hspeed = (12 * facing)
        sfx_play(sndTorizoAttack2)
    }
    if (statetime == 120)
    {
        facing = (-facing)
        if (facing == 1)
            x = (oCharacter.x - 320)
        else
            x = (oCharacter.x + 320)
        y = (oCharacter.y - 4)
        hspeed = (12 * facing)
        sfx_play(sndTorizoAttack2)
    }
    if (statetime == 180)
    {
        facing = (-facing)
        if (facing == 1)
            x = (oCharacter.x - 320)
        else
            x = (oCharacter.x + 320)
        y = (oCharacter.y - 4)
        hspeed = (12 * facing)
        sfx_play(sndTorizoAttack2)
    }
    if (statetime == 250)
    {
        facing = (-facing)
        state = 6
        statetime = 0
    }
}
if (state == 6)
{
    if (statetime == 0)
    {
        sprite_index = sTorizoFly
        mask_index = sTorizoMask
        image_index = 0
        image_speed = 0
        speed = 0
        turning = 0
        sfx_play(sndTorizoAttack1)
    }
    if (statetime == 1)
    {
        if (facing == 1)
            x = -120
        else
            x = 720
        y = 320
        hspeed = (8 * facing)
    }
    if (statetime > 30)
        speed *= 0.95
    if (statetime > 30 && speed < 0.1)
    {
        state = 1
        statetime = -1
    }
}
if (state == 100)
{
    sprite_index = sTorizoFly
    image_index = 1
    image_speed = 0
    speed = 0
    turning = 0
    if (statetime == 0)
        sfx_play(sndTorizoDeath)
}
if (state == 1 || state == 2 || state == 3)
{
    if move
    {
        if (targetx > x)
            hspeed += xAcc
        else
            hspeed -= xAcc
        if (targety > y)
            vspeed += yAcc
        else
            vspeed -= yAcc
        if (speed > maxSpeed)
            speed = maxSpeed
    }
    else
        speed *= 0.9
    if (CollisionLeft && hspeed < 0)
    {
        hspeed = 0
        x = 48
    }
    if (CollisionRight && hspeed > 0)
    {
        hspeed = 0
        x = 592
    }
    if (CollisionTop && vspeed < 0)
    {
        vspeed = 0
        y = (WallUp + 80)
    }
    if (CollisionBottom && vspeed > 0)
    {
        vspeed = 0
        y = 432
    }
}
if (phase > 0 || myhealth <= 200 || globaltime > 3600)
    stayaway = 0
statetime += 1
if (globaltime < 5000)
    globaltime += 1
if (fxtimer < 5)
    fxtimer += 1
else
    fxtimer = 0
if (flashing > 0)
    flashing -= 1
dist = distance_to_point(oCharacter.x, (oCharacter.y - 20))
