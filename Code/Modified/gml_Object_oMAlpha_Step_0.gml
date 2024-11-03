if (active == 1)
{
    if (state == 1)
    {
        xVel = 0
        yVel = 0
    }
    if (state == 3)
    {
        image_speed = 0.2
        if (spriteset == 2 && (!turning))
            sprite_index = sMAlpha3Move
        if chasing
        {
            targetx = oCharacter.x
            targety = (oCharacter.y - 24)
            if (shell.hitting && hitandrun)
            {
                xVel = 0
                yVel = 0
                event_user(1)
                with (shell)
                    hitting = 0
            }
        }
        else if (distance_to_object(oCharacter) > 120)
        {
            chasing = 1
            alarm[3] = awaydelay
        }
        if (targety > y)
            yVel += (myaccely * 1.4)
        if ((targety - 24) < y)
            yVel -= myaccely
        if (targetx > x)
            xVel += myaccelx
        if (targetx < x)
            xVel -= myaccelx
        if ((isCollisionRight(1) && xVel > 0) || (isCollisionLeft(1) && xVel < 0))
            xVel = 0
        if ((isCollisionBottom(1) && yVel > 0) || (isCollisionTop(1) && yVel < 0))
            yVel = 0
        rotspeed = 0.5
        if (abs(xVel) > 1)
            targetangle = ((-abs(xVel)) * 3)
        else
            targetangle = 0
        if (canspmove && statetime > 60 && spdelay == 0 && dodging == 0)
        {
            state = 4
            statetime = 0
            turndelay = 1
            spdelay = 700
        }
        if (candodge && dodgedelay == 0 && ((instance_exists(oMissile) && distance_to_object(oMissile) < 64) || (instance_exists(oBeam) && distance_to_object(oBeam) < 64)) && ((facing == 1 && oCharacter.x > x) || (facing == -1 && oCharacter.x < x)))
        {
            if ((oCharacter.y - 48) > y)
            {
                yVel = 2.5
                if (oCharacter.x > x)
                    xVel = -3.5
                if (oCharacter.x < x)
                    xVel = 3.5
            }
            if ((oCharacter.y - 48) < y)
            {
                yVel = -4
                if (oCharacter.x > x)
                    xVel = 1
                if (oCharacter.x < x)
                    xVel = -1
            }
            dodging = 1
            dodgetime = 0
            dodgedelay = 300
            alarm[2] = 1
            currentangle = -10
            canbehit = 0
            sfx_play(sndMAlphaDodge)
        }
        if (dodging && dodgetime >= 8)
        {
            dodging = 0
            canbehit = 1
        }
    }
    if (state == 4)
    {
        if (spriteset == 2)
        {
            image_index = 0
            image_speed = 0
            sprite_index = sMAlpha3Attack
        }
        if ((oCharacter.y - 24) > y)
            yVel += 0.1
        if ((oCharacter.y - 24) < y)
            yVel += -0.1
        if ((oCharacter.y - 64) > y)
            yVel *= 0.95
        if (distance_to_object(oCharacter) < 128)
        {
            if (oCharacter.x > x)
                xVel += -0.1
            if (oCharacter.x < x)
                xVel += 0.1
        }
        xVel *= 0.98
        rotspeed = 1
        targetangle = -25
        if (statetime > 50)
        {
            state = 5
            statetime = 0
            turndelay = 70
            alarm[2] = 1
            sfx_play(sndMAlphaSP)
        }
    }
    if (state == 5)
    {
        image_speed = 0
        if (spriteset == 2 && image_index < 3)
            image_index += 0.05
        if (statetime < 10)
            xVel *= 0.98
        if (statetime == 10)
        {
            if (oCharacter.x > x)
                xVel = 7
            if (oCharacter.x < x)
                xVel = -7
        }
        if ((oCharacter.y - 16) > y)
            yVel += 0.1
        if ((oCharacter.y - 24) < y)
            yVel += -0.1
        if ((isCollisionBottom(1) && yVel > 0) || (isCollisionTop(1) && yVel < 0))
            yVel = 0
        if (yVel > 2)
            yVel = 2
        if (yVel < -2)
            yVel = -2
        rotspeed = 1
        targetangle = -25
        if (statetime > 60)
        {
            state = 3
            statetime = 0
            turndelay = 30
        }
        if (statetime > 20 && (isCollisionRight(1) || isCollisionLeft(1)))
        {
            state = 6
            statetime = 0
            turndelay = 60
        }
    }
    if (state == 6)
    {
        image_speed = 0
        if (spriteset == 2 && image_index > 0)
            image_index -= 0.1
        xVel = 0
        yVel = 0
        rotspeed = 0.25
        targetangle = 0
        if (statetime > 30)
        {
            state = 3
            statetime = 0
            turndelay = 30
        }
    }
    if (oCharacter.x > x && facing == -1)
    {
        if (turndelay > 0)
            turndelay -= 1
        if (turndelay == 0)
        {
            facing = 1
            turndelay = 30
            turning = 1
            if (spriteset == 0)
            {
                sprite_index = sMAlphaTurn
                myspr = 567
            }
            if (spriteset == 1)
            {
                sprite_index = sMAlpha2Turn
                myspr = 568
            }
            if (spriteset == 2)
            {
                sprite_index = sMAlpha3Turn
                myspr = 570
            }
            image_index = 0
        }
    }
    if (oCharacter.x < x && facing == 1)
    {
        if (turndelay > 0)
            turndelay -= 1
        if (turndelay == 0)
        {
            facing = -1
            turndelay = 30
            turning = 1
            if (spriteset == 0)
            {
                sprite_index = sMAlphaTurn
                myspr = 567
            }
            if (spriteset == 1)
            {
                sprite_index = sMAlpha2Turn
                myspr = 568
            }
            if (spriteset == 2)
            {
                sprite_index = sMAlpha3Turn
                myspr = 570
            }
            image_index = 0
        }
    }
    if turning
        image_speed = 0.5
    else if (flashing || state == 100)
        image_speed = 0.4
    if flashing
    {
        if (statetime == 0)
        {
            dodgedelay = 20
            if (myhealth > 0)
                state = 3
        }
        if (statetime < 8)
        {
            if (oCharacter.x > x)
                xVel = (-0.5 - random(3))
            if (oCharacter.x < x)
                xVel = (0.5 + random(3))
            yVel = (-1 - random(4))
            if (state == 100 && fallondeath && y < 160)
                yVel = 2
        }
        if ((isCollisionRight(1) && xVel > 0) || (isCollisionLeft(1) && xVel < 0))
            xVel *= -1
        xVel *= 0.95
        yVel *= 0.95
        rotspeed = 2
        targetangle = 0
        if (statetime >= flashtime)
        {
            canbehit = 1
            flashing = 0
            statetime = 0
        }
    }
    if (state != 5)
    {
        if (yVel > maxspeedy)
            yVel = maxspeedy
        if (yVel < (-maxspeedy))
            yVel = (-maxspeedy)
        if (xVel > maxspeedx)
            xVel = maxspeedx
        if (xVel < (-maxspeedx))
            xVel = (-maxspeedx)
    }
    if (currentangle > targetangle)
        currentangle -= rotspeed
    if (currentangle < targetangle)
        currentangle += rotspeed
    image_angle = (currentangle * facing)
    moveTo(xVel, yVel)
}
if (state == 100)
{
    if (statetime == 1)
    {
        damagedealt += shell.damagedealt
        with (shell)
            instance_destroy()
    }
    xVel *= 0.98
    yVel *= 0.98
}
if instance_exists(shell)
{
    shell.x = x
    shell.y = y
    shell.image_xscale = facing
    shell.image_angle = image_angle
}
statetime += 1
if (spdelay > 0)
    spdelay -= 1
if (dodgedelay > 0)
    dodgedelay -= 1
if dodging
    dodgetime += 1
if (fxtimer < 5)
    fxtimer += 1
else
    fxtimer = 0
