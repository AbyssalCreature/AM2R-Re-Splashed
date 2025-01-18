var attackcounter;
if (y >= 432)
    CollisionBottom = 1
else
    CollisionBottom = 0
if (y <= 368)
    CollisionTop = 1
else
    CollisionTop = 0
if (x <= (WallLeft + 16))
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
nextattack = floor(random(4))
if (global.difficulty < 2)
{
    if (myhealth > 75)
    {
        nextstepdelay = 30
        walkspeed = 0.2
        attackcounter = 210
    }
    if (myhealth < 75)
    {
        nextstepdelay = 20
        walkspeed = 0.3
        attackcounter = 190
    }
    if (myhealth < 50)
    {
        nextstepdelay = 10
        walkspeed = 0.4
        attackcounter = 160
    }
    if (myhealth < 25)
    {
        nextstepdelay = 0
        walkspeed = 0.5
        attackcounter = 140
    }
}
else
{
    if (myhealth > 250)
    {
        nextstepdelay = 30
        walkspeed = 0.2
        attackcounter = 150
    }
    if (myhealth < 200)
    {
        nextstepdelay = 20
        walkspeed = 0.3
        attackcounter = 180
    }
    if (myhealth < 150)
    {
        nextstepdelay = 10
        walkspeed = 0.4
        attackcounter = 200
    }
    if (myhealth < 100)
    {
        nextstepdelay = 0
        walkspeed = 0.5
        attackcounter = 220
    }
}
if (state == 0)
{
    if (statetime == 0)
    {
        sprite_index = sTorizoStandUp
        image_index = 0
        image_speed = 0
        speed = 0
        turning = 0
    }
    if (statetime == 120)
        image_speed = 0.2
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
        sprite_index = sTorizoWalk
        image_index = 2
        image_speed = 0
    }
    if (statetime > 10)
    {
        if (oCharacter.x < (x - 32) && facing == 1 && turning == 0)
        {
            facing = -1
            turning = 1
            sprite_index = sTorizoTurn
            image_index = 0
            image_speed = 0.5
        }
        if (oCharacter.x > (x + 32) && facing == -1 && turning == 0)
        {
            facing = 1
            turning = 1
            sprite_index = sTorizoTurn
            image_index = 0
            image_speed = 0.5
        }
    }
    if (turning == 0)
    {
        sprite_index = sTorizoWalk
        image_speed = walkspeed
        if (floor(image_index) == 0 || floor(image_index) == 7)
        {
            if (stepdelay > 0)
            {
                image_speed = 0
                stepdelay -= 1
            }
        }
        if (floor(image_index) == 1 || floor(image_index) == 8)
            stepdelay = nextstepdelay
    }
    if (((facing == 1 && (!CollisionRight)) || (facing == -1 && (!CollisionLeft))) && (!turning))
    {
        if (floor(image_index) == 0 && image_index_last != 0)
        {
            x += (facing * 6)
            event_user(1)
        }
        if (floor(image_index) == 1 && image_index_last != 1)
            x += (facing * 6)
        if (floor(image_index) == 2 && image_index_last != 2)
            x += (facing * 6)
        if (floor(image_index) == 3 && image_index_last != 3)
            x += (facing * 6)
        if (floor(image_index) == 4 && image_index_last != 4)
            x += (facing * 6)
        if (floor(image_index) == 5 && image_index_last != 5)
            x += (facing * 6)
        if (floor(image_index) == 6 && image_index_last != 6)
            x += (facing * 6)
        if (floor(image_index) == 7 && image_index_last != 7)
        {
            x += (facing * 6)
            event_user(1)
        }
        if (floor(image_index) == 8 && image_index_last != 8)
            x += (facing * 6)
        if (floor(image_index) == 9 && image_index_last != 9)
            x += (facing * 6)
        if (floor(image_index) == 10 && image_index_last != 10)
            x += (facing * 6)
        if (floor(image_index) == 11 && image_index_last != 11)
            x += (facing * 6)
        if (floor(image_index) == 12 && image_index_last != 12)
            x += (facing * 6)
        if (floor(image_index) == 13 && image_index_last != 13)
            x += (facing * 6)
        if (floor(image_index) == 14 && image_index_last != 14)
            x += (facing * 6)
        image_index_last = floor(image_index)
    }
    if (CollisionLeft && hspeed < 0)
    {
        hspeed = 0
        x = (WallLeft + 16)
    }
    if (CollisionRight && hspeed > 0)
    {
        hspeed = 0
        x = 592
    }
    if (statetime > 150 && image_index < 1)
    {
        if (nextattack == 0)
        {
            state = 2
            statetime = 0
        }
        if (nextattack == 1)
        {
            state = 3
            statetime = 0
        }
        if (nextattack == 2)
        {
            state = 4
            statetime = 0
        }
        if (nextattack == 3)
        {
            state = 4
            statetime = 0
        }
        if (oCharacter.y < (y - 90))
        {
            state = 4
            statetime = 0
        }
    }
}
if (state == 2)
{
    if (statetime == 0)
    {
        sprite_index = sTorizoFireball
        image_index = 0
        image_speed = 0
        speed = 0
        turning = 0
    }
    if (statetime < 120 && image_index < 5)
        image_index += 0.25
    if (statetime > 250 && image_index > 0)
        image_index -= 0.25
    if (statetime == 60)
        alarm[0] = 1
    if (statetime == 270)
    {
        state = 1
        statetime = -1
    }
}
if (state == 3)
{
    if (statetime == 0)
    {
        sprite_index = sTorizoSwipe
        image_index = 0
        image_index_last = 0
        image_speed = 0.2
        speed = 0
        turning = 0
        if (oCharacter.x < (x - 32) && facing == 1 && turning == 0)
        {
            facing = -1
            turning = 1
            sprite_index = sTorizoTurn
            image_index = 0
            image_speed = 0.5
        }
        if (oCharacter.x > (x + 32) && facing == -1 && turning == 0)
        {
            facing = 1
            turning = 1
            sprite_index = sTorizoTurn
            image_index = 0
            image_speed = 0.5
        }
    }
    if (!turning)
        sprite_index = sTorizoSwipe
    if (floor(image_index) == 0 && image_index_last != 0)
        image_speed = 0.2
    if (floor(image_index) == 7 && image_index_last != 7)
    {
        proj = instance_create((x + (40 * facing)), (y - 65), oTorizoSlashProj)
        proj.hspeed = (6 * facing)
        proj.vspeed = 4
        proj.gravity_direction = 90
        proj.gravity = 0.2
        proj.image_angle = direction
        if (global.difficulty >= 2)
        {
            proj = instance_create((x + (40 * facing)), (y - 65), oTorizoSlashProj)
            proj.hspeed = (8 * facing)
            proj.vspeed = 4
            proj.gravity_direction = 90
            proj.gravity = 0.2
            proj.image_angle = direction
        }
        image_speed = 0.5
        sfx_play(sndArachnusSwipe)
    }
    if (floor(image_index) == 12 && image_index_last != 12)
        image_speed = 0.2
    if (floor(image_index) == 19 && image_index_last != 19)
    {
        proj = instance_create((x + (40 * facing)), (y - 65), oTorizoSlashProj)
        proj.hspeed = (6 * facing)
        proj.vspeed = -4
        proj.gravity_direction = 270
        proj.gravity = 0.2
        proj.image_angle = direction
        if (global.difficulty >= 2)
        {
            proj = instance_create((x + (40 * facing)), (y - 65), oTorizoSlashProj)
            proj.hspeed = (8 * facing)
            proj.vspeed = -4
            proj.gravity_direction = 270
            proj.gravity = 0.2
            proj.image_angle = direction
        }
        image_speed = 0.5
        sfx_play(sndArachnusSwipe)
    }
    image_index_last = floor(image_index)
    if (statetime == 182)
    {
        state = 1
        statetime = -1
    }
}
if (state == 4)
{
    if (statetime == 0)
    {
        sprite_index = sTorizoJump
        image_index = 0
        image_speed = 0
        speed = 0
        turning = 0
        sfx_play(sndTorizoAttack2)
    }
    if (statetime > 8 && (!CollisionBottom) && image_index < 4)
        image_index += 0.2
    if (statetime > 8 && CollisionBottom && image_index < 13)
        image_index += 0.25
    if (statetime == 30)
    {
        vspeed = -4
        hspeed = (2 * (-facing))
        gravity = 0.15
    }
    if (statetime > 30 && CollisionBottom && vspeed > 0)
    {
        gravity = 0
        y = 432
        speed = 0
        event_user(1)
    }
    if (statetime == 35)
        alarm[0] = 1
    if (statetime == 120)
    {
        state = 3
        statetime = -1
    }
    if (CollisionLeft && hspeed < 0)
    {
        hspeed = 0
        x = (WallLeft + 16)
    }
    if (CollisionRight && hspeed > 0)
    {
        hspeed = 0
        x = 592
    }
}
if (state == 5)
{
    if (statetime == 0)
    {
        sprite_index = sTorizoWalk
        image_index = 2
        image_speed = 0
        speed = 0
        turning = 0
    }
    if (statetime == 60)
    {
        vspeed = -5
        hspeed = (6 * facing)
        gravity = 0.15
    }
    if (statetime > 60 && CollisionBottom && vspeed > 0)
    {
        gravity = 0
        y = 432
        speed = 0
    }
    if (statetime == 90)
    {
        proj = instance_create(x, (y - 30), oTorizoSlashProj)
        proj.vspeed = 2
        proj.gravity_direction = 270
        proj.gravity = 0.2
    }
    if (statetime == 160)
    {
        state = 1
        statetime = -1
    }
    if (CollisionLeft && hspeed < 0)
    {
        hspeed = 0
        x = (WallLeft + 16)
    }
    if (CollisionRight && hspeed > 0)
    {
        hspeed = 0
        x = 592
    }
}
if (state == 6)
{
    if (statetime == 0)
    {
        sprite_index = sTorizoWalk
        image_index = 2
        image_speed = 0
        speed = 0
        turning = 0
    }
    if (statetime == 60)
        instance_create((x + (16 * facing)), (y - 16), oTorizoGrab)
    if (statetime == 200)
    {
        state = 0
        statetime = -1
    }
}
if (state == 7)
{
    if (statetime == 0)
    {
        sprite_index = sTorizoWalk
        image_index = 2
        image_speed = 0
        speed = 0
        turning = 0
    }
    if (statetime > 60)
    {
        oCharacter.x = (x + 40)
        oCharacter.y = (y - 32)
    }
    if (statetime == 120)
        alarm[0] = 1
    if (statetime == 250)
    {
        state = 0
        statetime = -1
    }
}
if (state == 10)
{
    if (statetime == 0)
    {
        sprite_index = sTorizoWalk
        image_index = 2
        image_speed = 0
        speed = 0
        turning = 0
    }
    if (statetime == 1)
    {
        vspeed = -4
        gravity = 0.15
    }
    if (statetime == 5)
        alarm[0] = 1
    if (statetime > 10 && CollisionBottom && vspeed > 0)
    {
        gravity = 0
        y = 432
        speed = 0
        state = 1
        statetime = -1
    }
    if (CollisionLeft && hspeed < 0)
    {
        hspeed = 0
        x = (WallLeft + 16)
    }
    if (CollisionRight && hspeed > 0)
    {
        hspeed = 0
        x = 592
    }
}
if (state == 100)
{
    if (statetime == 0)
    {
        sprite_index = sTorizoWalk
        image_index = 0
        image_speed = 0
        speed = 0
        turning = 0
        sfx_play(sndTorizoDeath)
        repeat (30)
        {
            expl = instance_create(((x - 16) + random(32)), (y - random(80)), oFXAnimSpark)
            expl.image_speed = 0.5
            expl.additive = 0
            expl.sprite_index = sExpl1
            expl.image_xscale = 0.5
            expl.image_yscale = 0.5
        }
    }
    if (statetime == 30)
    {
        sprite_index = sTorizoKneel
        image_index = 0
    }
    if (statetime > 30)
    {
        if (image_index < 3.5)
            image_index += 0.1
    }
    if (!CollisionBottom)
        gravity = 0.2
    else
    {
        gravity = 0
        y = 432
        speed = 0
    }
}
myobj1.x = x
myobj1.y = y
statetime += 1
if (fxtimer < 5)
    fxtimer += 1
else
    fxtimer = 0
if (flashing > 0)
    flashing -= 1
dist = distance_to_point(oCharacter.x, (oCharacter.y - 20))
