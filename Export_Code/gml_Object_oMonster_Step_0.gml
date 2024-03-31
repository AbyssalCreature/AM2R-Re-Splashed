var pickup, tgty, door;
if (global.metdead[myid] == 1 && (!dead))
{
    dead = 1
    hp = 0
    if (hp <= 0)
    {
        repeat (10)
        {
            expl = instance_create(((x - 16) + random(32)), ((y - 16) + random(32)), oFXAnimSpark)
            expl.image_speed = (0.5 + random(0.5))
            expl.additive = 0
            expl.sprite_index = sExpl1
            expl.direction = random(360)
            expl.speed = (2 + random(1))
        }
        repeat (20)
            deb = instance_create(x, (y - 8), oIceShard)
        make_explosion4(x, y)
        instance_create(x, y, oScreenFlash)
        sfx_play(sndMissileExpl)
        PlaySoundMono(sndIceShatter)
        sfx_play(sndMonsterDeath)
        if (global.monstersarea < 1)
            global.monstersarea = 1
        if (global.monstersleft < 1)
            global.monstersleft = 1
        pickup = choose(0, 1)
        if (pickup == 0)
        {
            if (global.missiles < global.maxmissiles && global.maxmissiles > 0)
            {
                repeat (3)
                    instance_create((x + random_range(-15, 15)), (y + random_range(-15, 15)), oMPickup)
            }
            else
                pickup = 1
        }
        if (pickup == 1)
        {
            if (global.smissiles < global.maxsmissiles && global.maxsmissiles > 0)
                instance_create(x, y, oSMPickup)
        }
        if (global.playerhealth < global.maxhealth && (oControl.mod_insanitymode == 0 || (global.difficulty < 2 && oControl.mod_insanitymode == 1)))
        {
            repeat (3)
                instance_create((x + random_range(-15, 15)), (y + random_range(-15, 15)), oHPickupBig)
        }
        if (room == rm_a7b08A && instance_number(oMonster) == 1)
        {
            if (global.monstersleft != 1)
                global.monstersleft = 1
            if (global.monstersarea != 1)
                global.monstersarea = 1
            instance_create(0, 0, oBigQuakeQueen)
        }
        instance_destroy()
    }
}
if (state == 0)
{
    scale = 0.5
    image_blend = c_black
    if (point_distance(x, y, oCharacter.x, (oCharacter.y - 16)) < 90)
    {
        state = 1
        statetime = 0
    }
}
if (state == 1)
{
    if (col < 255)
        col += 5
    image_blend = make_colour_rgb(col, col, col)
    if (scale < 1)
        scale += 0.01
    else
    {
        scale = 1
        state = 2
        statetime = 0
    }
}
if (state == 2)
{
    iframe = 0
    if (dontfollow == 0)
    {
        targetx = oCharacter.x
        if (oCharacter.mask_index == sMask1)
            targety = (oCharacter.y - 20)
        if (oCharacter.mask_index == sMask3)
            targety = (oCharacter.y - 15)
        if (oCharacter.mask_index == sMask4)
            targety = (oCharacter.y - 10)
    }
    else
    {
        targetx = (oCharacter.x + random_range(-80, 80))
        targety = ((oCharacter.y - 40) - random(60))
    }
    safex = x
    safey = y
    if (targety > y)
        yVel += 0.1
    if ((targety - 24) < y)
        yVel -= 0.1
    if (targetx > x)
        xVel += 0.1
    if (targetx < x)
        xVel -= 0.1
    if ((isCollisionRight(1) && xVel > 0) || (isCollisionLeft(1) && xVel < 0))
        xVel = 0
    if ((isCollisionBottom(1) && yVel > 0) || (isCollisionTop(1) && yVel < 0))
        yVel = 0
    if (xVel > 3)
        xVel = 3
    if (xVel < -3)
        xVel = -3
    if (yVel > 3)
        yVel = 3
    if (yVel < -3)
        yVel = -3
    if (random(10) < 1)
    {
        xVel += choose(0.2, -0.2)
        yVel += choose(0.2, -0.2)
    }
    if collision_rectangle((x - 20), (y - 18), (x + 20), (y + 12), oMonster, 1, 1)
    {
        if (other.x < x)
            xVel += 0.1
        else
            xVel -= 0.1
        if (other.y < y)
            yVel += 0.1
        else
            yVel -= 0.1
    }
    xVel = clamp(xVel, -3, 3)
    yVel = clamp(yVel, -3, 5)
    moveTo(xVel, yVel)
}
if (state == 3)
{
    if (oCharacter.state == 32)
        tgty = (oCharacter.y - (oCharacter.sprite_height * 1.25))
    if (oCharacter.mask_index == sMask1)
        tgty = (oCharacter.y - 40)
    if (oCharacter.mask_index == sMask3)
        tgty = (oCharacter.y - 32)
    if (oCharacter.mask_index == sMask4)
        tgty = (oCharacter.y - 24)
    x = lerp(x, oCharacter.x, 0.4)
    y = lerp(y, tgty, 0.4)
    with (oCharacter)
        monster_drain = 2
    xVel = 0
    speed = 0
    with (oMonster)
    {
        if (state == 2)
            dontfollow = 2
    }
    iframe += 0.5
    if (iframe > 2)
        iframe = 0
}
if (state == 4)
{
    if (statetime == 0)
    {
        vspeed = -6
        if (oCharacter.facing == 18)
            hspeed = 6
        else
            hspeed = -6
        sfx_play(sndMonsterStun)
        iframe = 0
    }
    if (statetime < 30)
        speed *= 0.9
    if (statetime == 30)
    {
    }
    if (isCollisionBottom(1) == 0 && isCollisionTop(1) > 0)
    {
        y += 1
        vspeed = 0.5
    }
    if (isCollisionBottom(1) > 0 && isCollisionTop(1) == 0)
    {
        y -= 1
        vspeed = -0.5
    }
    if (isCollisionRight(1) == 0 && isCollisionLeft(1) > 0)
    {
        x += 1
        hspeed = 0.5
    }
    if (isCollisionRight(1) > 0 && isCollisionLeft(1) == 0)
    {
        x -= 1
        hspeed = -0.5
    }
    if (statetime > 30)
    {
        if (isCollisionRight(1) == 0 && isCollisionLeft(1) == 0 && isCollisionBottom(1) == 0 && isCollisionTop(1) == 0 && collision_rectangle((x - 20), (y - 18), (x + 20), (y + 12), oSolid, 1, 1) == -4)
        {
            state = 2
            statetime = -1
        }
    }
    if (speed > 3)
        speed = 3
}
if (state == 5)
{
    if (statetime == 0)
    {
        iframe = 0
        speed = 0
    }
    if (speed > 3)
        speed = 3
    if (isCollisionBottom(1) == 0)
    {
        yVel += 0.1
        if (yVel > 5)
            yVel = 5
    }
    else
    {
        xVel *= 0.8
        yVel = 0
    }
    if (isCollisionRight(1) > 0 || isCollisionLeft(1) > 0)
        xVel = 0
    if (isCollisionBottom(0) == 0 && isCollisionTop(1) > 0)
    {
        y += 1
        vspeed = 0.5
    }
    if (isCollisionBottom(0) > 0 && isCollisionTop(1) == 0)
    {
        y -= 1
        vspeed = -0.5
    }
    if (isCollisionRight(1) == 0 && isCollisionLeft(1) > 0)
    {
        x += 1
        hspeed = 0.5
    }
    if (isCollisionRight(1) > 0 && isCollisionLeft(1) == 0)
    {
        x -= 1
        hspeed = -0.5
    }
    if (isCollisionRight(1) == 0 && isCollisionLeft(1) == 0 && isCollisionBottom(0) == 0 && isCollisionTop(1) == 0 && collision_rectangle((x - 20), (y - 18), (x + 20), (y + 12), oSolid, 1, 1) == -4)
    {
        gravity = 0
        speed = 0
    }
    if (statetime > freezetime)
    {
        state = 2
        statetime = -1
    }
    xVel = clamp(xVel, -3, 3)
    yVel = clamp(yVel, -3, 5)
    moveTo(xVel, yVel)
}
shell_frame = (!shell_frame)
if (state != 5)
    fangs_frame = anim_frame_cycle(sMonsterFangs, fangs_frame, fangs_frspd)
if (state != 5)
    i += 0.02
if (i > 99999999)
    i = 0
j = (sin(i) * 0.1)
eyes_scale = ((0.9 + j) * scale)
fangs_x = (x + lengthdir_x((fangs_yoff * scale), (image_angle + 270)))
fangs_y = (y + lengthdir_y((fangs_yoff * scale), (image_angle + 270)))
eyes_x = (x + lengthdir_x((4 * scale), (image_angle + 90)))
eyes_y = (y + lengthdir_y((4 * scale), (image_angle + 90)))
statetime += 1
if (flashing > 0)
    flashing -= 1
if (fxtimer < 5)
    fxtimer += 1
else
    fxtimer = 0
if (dontfollow > 0)
    dontfollow -= 1
if (collision_point(x, y, oGotoRoom, 0, 1) && outside == 0)
{
    door = instance_nearest(x, y, oDoor)
    if (door.open == 0)
    {
        outside = 1
        hp = 0
        event_user(0)
    }
}
if (collision_point(x, y, oDoor, 0, 1) && outside == 0)
{
    x = xprevious
    y = yprevious
    speed = ((-speed) * 0.5)
    xVel = ((-xVel) * 0.5)
    if (state == 3)
    {
        state = 2
        statetime = 0
    }
}
if collision_point(x, y, oSolid, 0, 1)
{
    if (x > (room_width / 2))
        x--
    else
        x++
    if (y > (room_height / 2))
        y--
    else
        y++
}
