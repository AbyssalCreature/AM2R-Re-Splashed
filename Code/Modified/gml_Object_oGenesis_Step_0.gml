if (state == 0)
{
    if (statetime == 0)
    {
        image_yscale = -1
        facing = -1
        x = 512
        y = 64
        hspeed = -2
        ceiling = 1
        dark = 1
        sprite_index = sGenesisWalk
        image_speed = 0.25
    }
    if (statetime == 150)
    {
        mus_play(musGenesis)
        oMusicV2.bossbgm = 295
    }
    if (statetime > 0 && x <= 210)
    {
        hspeed = 0
        sprite_index = sGenesisStand
        image_speed = 0.2
    }
    if (statetime == 250)
        sfx_play(sndGenesisGrowl)
    if (statetime == 300)
    {
        state = 1
        statetime = 0
    }
}
if (state == 1)
{
    if (statetime == 0)
    {
        sprite_index = sGenesisLeap
        image_speed = 0
        image_index = 0
        image_yscale = 1
        y += 30
        ceiling = 0
        speed = 0
        dark = 0
        event_user(0)
        sfx_play(sndGenesisJump)
    }
    if (statetime < 5)
    {
        xVel = lengthdir_x(4, point_direction(x, y, oCharacter.x, oCharacter.y))
        yVel = lengthdir_y(4, point_direction(x, y, oCharacter.x, oCharacter.y))
    }
    else
        yVel += 0.1
    if (image_index < 2)
        image_index += 0.25
    if isCollisionBottom(1)
    {
        state = 2
        statetime = 0
    }
}
if (state == 2)
{
    if (statetime == 0)
    {
        sprite_index = sGenesisStand
        image_speed = 0.2
        yVel = 0
    }
    xVel *= 0.6
    if (point_distance(x, y, oCharacter.x, oCharacter.y) < 60 && statetime == 10)
    {
        state = 6
        statetime = 0
    }
    if (statetime == 50)
    {
        state = 3
        statetime = 0
    }
}
if (state == 3)
{
    if (statetime == 0)
    {
        sprite_index = sGenesisRoar
        image_speed = 0
        image_index = 0
        event_user(0)
        sfx_play(sndGenesisSpit)
    }
    if (statetime == 12)
        image_index = 1
    if (statetime == 20)
        alarm[0] = 1
    if (statetime == 80)
    {
        state = 4
        statetime = 0
    }
}
if (state == 4)
{
    if (statetime == 0)
        sprite_index = sGenesisCrouch
    if (statetime == 10)
    {
        sprite_index = sGenesisLeap
        image_speed = 0
        image_index = 0
        yVel = -8
        sfx_play(sndGenesisJump)
    }
    if (statetime > 10)
    {
        if (yVel < -4)
            yVel += 0.2
    }
    if isCollisionTop(1)
    {
        state = 5
        statetime = 0
    }
}
if (state == 5)
{
    if (statetime == 0)
    {
        sprite_index = sGenesisWalk
        image_speed = 0.25
        image_yscale = -1
        ceiling = 1
        xVel = 0
        yVel = 0
        y = 64
        event_user(0)
        hspeed = (2 * facing)
    }
    if (statetime == 60)
        sfx_play(sndGenesisGrowl)
    if (statetime == 120 || collision_line((x + (30 * facing)), (y + 1), (x + (30 * facing)), (y + 8), oSolid, true, true))
    {
        state = 1
        statetime = -1
        speed = 0
    }
}
if (state == 6)
{
    if (statetime == 0)
    {
        sprite_index = sGenesisSlash
        image_speed = 0
        image_index = 0
        event_user(0)
    }
    if (statetime == 10)
    {
        prj = instance_create((x + (20 * facing)), y, oGenesisSlashProj)
        prj.hspeed = (2 * facing)
        prj.image_xscale = facing
        image_index = 1
        sfx_play(sndGenesisSwing)
    }
    if (statetime == 30)
    {
        state = 4
        statetime = -1
    }
}
if (state == 100)
{
    if (statetime == 0)
    {
        sprite_index = sGenesisCrouch
        speed = 0
        yVel = 0
        xVel = 0
        sfx_play(sndGenesisDeath)
        if ceiling
        {
            sprite_index = sGenesisLeap
            image_speed = 0
            image_index = 0
            image_yscale = 1
            y += 30
            ceiling = 0
            speed = 0
            dark = 0
        }
    }
    if (!isCollisionBottom(1))
        yVel += 0.1
    else
    {
        sprite_index = sGenesisCrouch
        yVel = 0
    }
}
if (ceiling == 0)
    moveTo(xVel, yVel)
if (dark == 1)
{
    if (col > 0)
        col -= 10
    else
        col = 0
}
else
{
    if (col < 255)
        col += 10
    else
        col = 255
    if (col > 255)
        col = 255
}
image_blend = make_color_rgb(col, col, col)
if (fxtimer < 5)
    fxtimer += 1
else
    fxtimer = 0
if (flashing > 0)
    flashing -= 1
if turning
{
    turnframe += 0.25
    if (turnframe >= 2)
    {
        turning = 0
        turnframe = 0
    }
}
statetime += 1
