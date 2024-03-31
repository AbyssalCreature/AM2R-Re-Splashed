if (active == 1)
{
    if (state == 1)
    {
        xVel = 0
        yVel = 0
    }
    if (state == 3)
    {
        if chasing
        {
            targetx = oCharacter.x
            targety = (oCharacter.y - 32)
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
        legrotspeed = 1
        legfa1t = ((-abs(xVel)) * 4)
        legfb1t = ((-abs(xVel)) * 4)
        legba1t = ((-abs(xVel)) * 4)
        legbb1t = ((-abs(xVel)) * 4)
        legfa2t = (abs(xVel) * 9)
        legfb2t = (abs(xVel) * 9)
        legba2t = (abs(xVel) * 9)
        legbb2t = (abs(xVel) * 9)
        if ((canspmove || canspmove2) && statetime > 60 && spdelay == 0 && dodging == 0)
        {
            nextsp = 0
            if (random(1) < 0.5)
            {
                if canspmove
                    nextsp = 1
            }
            else if canspmove2
                nextsp = 2
            if (nextsp == 1)
            {
                state = 7
                spdelay = 180
                statetime = 0
                turndelay = 5
            }
            else if (nextsp == 2)
            {
                state = 4
                spdelay = 150
                statetime = 0
                turndelay = 5
            }
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
            sfx_play(sndMGammaDodge)
        }
        if (dodging && dodgetime >= 8)
        {
            dodging = 0
            canbehit = 1
        }
    }
    if (state == 4)
    {
        if ((oCharacter.y - 48) > y)
            yVel += 0.4
        if ((oCharacter.y - 48) < y)
            yVel += -0.2
        if ((oCharacter.y - 80) > y)
            yVel *= 0.95
        if (distance_to_object(oCharacter) < 128)
        {
            if (oCharacter.x > x)
                xVel += -0.1
            if (oCharacter.x < x)
                xVel += 0.1
        }
        xVel *= 0.98
        rotspeed = 0.5
        targetangle = -20
        legrotspeed = 0.5
        legfa1t = -30
        legfb1t = -30
        legba1t = -30
        legbb1t = -30
        legfa2t = 40
        legfb2t = 40
        legba2t = 40
        legbb2t = 40
        if (statetime > 50)
        {
            state = 5
            statetime = 0
            turndelay = 70
            alarm[2] = 1
            sfx_play(sndMGammaSP)
        }
    }
    if (state == 5)
    {
        if (statetime < 10)
            xVel *= 0.98
        if (statetime == 10)
        {
            if (oCharacter.x > x)
                xVel = 6
            if (oCharacter.x < x)
                xVel = -6
            yVel = 0
            grabber = instance_create(x, y, oMGammaGrab)
        }
        if ((oCharacter.y - 54) > y)
            yVel += 0.2
        if ((oCharacter.y - 64) < y)
            yVel += -0.2
        if ((isCollisionBottom(1) && yVel > 0) || (isCollisionTop(1) && yVel < 0))
            yVel = 0
        if (yVel > 2)
            yVel = 2
        if (yVel < -2)
            yVel = -2
        rotspeed = 0.5
        targetangle = -8
        legrotspeed = 2
        legfa1t = -20
        legfb1t = -20
        legba1t = -20
        legbb1t = -20
        legfa2t = -30
        legfb2t = -30
        legba2t = -30
        legbb2t = -30
        if (statetime > 60)
        {
            state = 3
            statetime = 0
            turndelay = 30
            canbehit = 1
        }
        if (statetime > 10 && (isCollisionRight(1) || isCollisionLeft(1)))
        {
            state = 6
            statetime = 0
            turndelay = 60
            with (grabber)
                instance_destroy()
        }
        if (oCharacter.state == 38)
        {
            state = 9
            statetime = 0
            canbehit = 1
        }
    }
    if (state == 6)
    {
        xVel = 0
        yVel = 0
        rotspeed = 0.25
        targetangle = 0
        if (statetime > 30)
        {
            state = 3
            statetime = 0
            turndelay = 10
        }
    }
    if (state == 7)
    {
        xVel = 0
        yVel = 0
        rotspeed = 0.5
        targetangle = 0
        legrotspeed = 2
        legfa1t = 20
        legfb1t = 20
        legba1t = 20
        legbb1t = 20
        legfa2t = 40
        legfb2t = 40
        legba2t = 40
        legbb2t = 40
        if (statetime == 5)
            sfx_play(sndMGammaSP2)
        if (statetime > 30)
        {
            state = 8
            statetime = 0
        }
    }
    if (state == 8)
    {
        xVel = 0
        yVel = 0
        rotspeed = 0.5
        targetangle = 0
        legrotspeed = 5
        legfa1t = -20
        legfb1t = -20
        legba1t = -20
        legbb1t = -20
        legfa2t = -30
        legfb2t = -30
        legba2t = -30
        legbb2t = -30
        if (statetime == 4)
        {
            elec = instance_create((x + (32 * facing)), y, oMGammaElec)
            elec.facing = facing
            elec.rotspeed = elecrotspeed
            if (facing == 1)
                elec.image_angle = -130
            if (facing == -1)
                elec.image_angle = 310
            sfx_play(sndMGammaElec)
        }
        if (statetime > 15 && (!instance_exists(oMGammaElec)))
        {
            state = 3
            statetime = 0
            turndelay = 10
            yVel = -0.5
        }
    }
    if (state == 9)
    {
        if (facing == 1 && xVel > -1.5)
            xVel -= 0.05
        if (facing == -1 && xVel < 1.5)
            xVel += 0.05
        yVel = -0.5
        rotspeed = 0.2
        targetangle = 10
        legrotspeed = 1
        legfa1t = 20
        legfb1t = 20
        legba1t = 20
        legbb1t = 20
        legfa2t = 10
        legfb2t = 10
        legba2t = 10
        legbb2t = 10
        if (statetime == 0)
        {
            spark = instance_create(oCharacter.x, oCharacter.y, oElectricSpark)
            arms = instance_create(x, y, oMGammaArms)
            if (global.difficulty >= 2)
                xVel *= 0.5
        }
        spark.image_alpha = 1
        if (statetime > 100)
        {
            state = 3
            statetime = 0
            turndelay = 10
            with (arms)
                instance_destroy()
        }
    }
    if (oCharacter.x > x && facing == -1 && (state == 3 || state == 4))
    {
        if (turndelay > 0)
            turndelay -= 1
        if (turndelay == 0)
        {
            facing = 1
            turndelay = 5
            turning = 1
            myspr = sprite_index
            sprite_index = sMGammaTurn
            image_index = 0
        }
    }
    if (oCharacter.x < x && facing == 1 && (state == 3 || state == 4))
    {
        if (turndelay > 0)
            turndelay -= 1
        if (turndelay == 0)
        {
            facing = -1
            turndelay = 5
            turning = 1
            myspr = sprite_index
            sprite_index = sMGammaTurn
            image_index = 0
        }
    }
    if turning
        image_speed = 0.5
    else
        image_speed = 0.5
    if flashing
    {
        if (statetime == 0)
        {
            if (oCharacter.x > x)
                xVel = -2
            if (oCharacter.x < x)
                xVel = 2
            yVel = -2
            dodgedelay = 20
            spdelay = 40
            with (oMGammaElec)
                instance_destroy()
            if (myhealth > 0)
                state = 3
        }
        if ((isCollisionRight(1) && xVel > 0) || (isCollisionLeft(1) && xVel < 0))
            xVel *= -1
        xVel *= 0.95
        yVel *= 0.95
        rotspeed = 2
        targetangle = 0
        legrotspeed = 2
        legfa1a = 20
        legfa1t = 0
        legfb1a = 20
        legfb1t = 0
        legfa2a = 40
        legfa2t = 0
        legfb2a = 40
        legfb2t = 0
        legba1a = 20
        legba1t = 0
        legbb1a = 20
        legbb1t = 0
        legba2a = 40
        legba2t = 0
        legbb2a = 40
        legbb2t = 0
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
    if (legfa1a > legfa1t)
        legfa1a -= legrotspeed
    if (legfa1a < legfa1t)
        legfa1a += legrotspeed
    if (legfa2a > legfa2t)
        legfa2a -= legrotspeed
    if (legfa2a < legfa2t)
        legfa2a += legrotspeed
    if (legfb1a > legfb1t)
        legfb1a -= legrotspeed
    if (legfb1a < legfb1t)
        legfb1a += legrotspeed
    if (legfb2a > legfb2t)
        legfb2a -= legrotspeed
    if (legfb2a < legfb2t)
        legfb2a += legrotspeed
    if (legba1a > legba1t)
        legba1a -= legrotspeed
    if (legba1a < legba1t)
        legba1a += legrotspeed
    if (legba2a > legba2t)
        legba2a -= legrotspeed
    if (legba2a < legba2t)
        legba2a += legrotspeed
    if (legbb1a > legbb1t)
        legbb1a -= legrotspeed
    if (legbb1a < legbb1t)
        legbb1a += legrotspeed
    if (legbb2a > legbb2t)
        legbb2a -= legrotspeed
    if (legbb2a < legbb2t)
        legbb2a += legrotspeed
    legfa1da = (legfa1a * facing)
    legfa2da = (legfa2a * facing)
    legfb1da = (legfb1a * facing)
    legfb2da = (legfb2a * facing)
    legba1da = (legba1a * facing)
    legba2da = (legba2a * facing)
    legbb1da = (legbb1a * facing)
    legbb2da = (legbb2a * facing)
    if (global.waterlevel != 0 && y > global.waterlevel)
        inwater = 1
    else
        inwater = 0
    if inwater
        speedmulti = 0.6
    else
        speedmulti = 1
    moveTo((xVel * speedmulti), (yVel * speedmulti))
}
if (state == 100)
{
    with (shell)
        instance_destroy()
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
drawefangs = (!drawefangs)
legfa1x = (lengthdir_x(4, (currentangle + 330)) * facing)
legfa1y = lengthdir_y(4, (currentangle + 330))
legfa2x = (lengthdir_x(24, ((currentangle + legfa1a) + 255)) * facing)
legfa2y = lengthdir_y(24, ((currentangle + legfa1a) + 255))
legfb1x = (lengthdir_x(10, (currentangle + 217)) * facing)
legfb1y = lengthdir_y(10, (currentangle + 217))
legfb2x = (lengthdir_x(18, ((currentangle + legfb1a) + 230)) * facing)
legfb2y = lengthdir_y(18, ((currentangle + legfb1a) + 230))
legba1x = (lengthdir_x(16, (currentangle + 294)) * facing)
legba1y = lengthdir_y(16, (currentangle + 294))
legba2x = (lengthdir_x(9, ((currentangle + legba1a) + 265)) * facing)
legba2y = lengthdir_y(9, ((currentangle + legba1a) + 265))
legbb1x = (lengthdir_x(14, (currentangle + 230)) * facing)
legbb1y = lengthdir_y(14, (currentangle + 230))
legbb2x = (lengthdir_x(12, ((currentangle + legfb1a) + 256)) * facing)
legbb2y = lengthdir_y(12, ((currentangle + legfb1a) + 256))
if instance_exists(grabber)
{
    grabber.x = ((x + legba1x) + legba2x)
    grabber.y = ((y + legba1y) + legba2y)
    if (state != 5)
    {
        with (grabber)
            instance_destroy()
    }
}
