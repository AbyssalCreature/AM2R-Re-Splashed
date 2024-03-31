if (state != 100)
{
    if ((state == 1 || state == 2) && oControl.kJump)
    {
        if (charge < 4)
            charge += 0.12
    }
    if (state == 1)
    {
        if (charge > 0 && (!oControl.kJump))
        {
            yVel = (-2 - charge)
            if (oControl.kLeft > 0)
                xVel = -2
            if (oControl.kRight > 0)
                xVel = 2
            clawangle = 36
            state = 2
            charge = 0
            sfx_play(sndAutoadJump)
        }
        if (!isCollisionBottom(1))
            state = 2
    }
    if (state == 2)
    {
        yVel += 0.25
        if (clawangle > 0)
            clawangle -= 2
        if (isCollisionBottom(1) && yVel > 0)
        {
            xVel = 0
            yVel = 0
            clawangle = -30
            state = 1
        }
        if (!oControl.kJump)
            charge = 0
    }
    if (charge >= 0 && charge < 1)
        yoff = 0
    if (charge >= 1 && charge < 2.5)
        yoff = 1
    if (charge >= 2.5 && charge < 4)
        yoff = 2
    if (charge >= 4)
        yoff = 3
    if (oControl.kFire && oControl.kFirePushedSteps == 0 && clawstate == 0)
    {
        if (hasmissile == 0)
        {
            clawstate = 1
            sfx_play(sndA2WJValve)
        }
        if (hasmissile == 1)
            event_user(1)
    }
    moveTo(xVel, yVel)
    if (y > 480)
        state = 100
}
if (state == 100)
{
    expl = instance_create(x, y, oFXAnimSpark)
    expl.image_speed = 0.5
    expl.additive = 0
    expl.sprite_index = sExpl1
    repeat (5)
    {
        expl = instance_create(((x - 20) + random(40)), ((y - 20) + random(40)), oFXAnimSpark)
        expl.image_speed = (0.4 + random(0.4))
        expl.additive = 0
        expl.sprite_index = sExpl1
    }
    repeat (20)
        instance_create(x, y, oDebris)
    if hasmissile
        event_user(1)
    PlaySoundMono(deathsound)
    instance_destroy()
}
if (clawstate == 0)
    clawoffset = 0
if (clawstate == 1)
{
    if (clawoffset < 10)
        clawoffset += 1
    else
        clawstate = 2
}
if (clawstate == 2)
{
    if (clawoffset > 0)
        clawoffset -= 0.5
    else
        clawstate = 0
    if (x > 832 && y == 146)
        hasmissile = 1
}
if (stun == 0)
    statetime += 1
if (fxtimer < 5)
    fxtimer += 1
else
    fxtimer = 0
if (stun > 0)
    stun -= 1
if (flashing > 0)
    flashing -= 1
