targetx = oCharacter.x
targety = (oCharacter.y - 16)
wallx = (x + 40)
if (state != 100)
{
    if (oCharacter.x < wallx)
        oCharacter.x = wallx
}
if (state == 0)
{
    if (x < 80)
        x += 5
    else
        bottom.image_speed = 0
    if (statetime == 0)
        x = -100
    if (statetime == 120)
    {
        state = 1
        statetime = 0
        movespeed = (0.1 + (0.1 * oControl.mod_diffmult))
        bottom.image_speed = movespeed
    }
}
if (state == 1)
{
    if (bottom.damaged == 0)
    {
        if (x < 800)
            x += movespeed
        else
            bottom.image_speed = 0
    }
}
if (state == 100)
{
    if (statetime == 0)
    {
        with (head)
        {
            event_user(1)
            canhit = 0
        }
        with (bottom)
            event_user(1)
        with (cannon)
            event_user(1)
        with (oTesterMissile)
            event_user(1)
        alarm[10] = 1
        global.event[203] = 2
    }
    if (statetime == 240)
    {
        repeat (20)
        {
            expl = instance_create((x + random_range(-45, 45)), (y + random_range(-20, 60)), oFXAnimSpark)
            expl.image_speed = (0.3 + random(0.5))
            expl.additive = 0
            expl.sprite_index = sExpl1Big
        }
        make_explosion3(x, (y - 40))
        repeat (20)
            instance_create((x + 10), (y + 30), oDebris)
        repeat (40)
            instance_create((x + 10), (y + 30), oMetalDebrisBig)
        instance_create(x, y, oScreenFlash)
        sfx_play(sndRobotExpl)
        sfx_play(sndMissileExpl)
        spawn_many_powerups((x - 64), (y - 48), 128, 160)
        with (cam)
            instance_destroy()
        instance_destroy()
    }
}
if (aangle > tgt_aangle)
    aangle -= 1
else
    aangle += 1
cposx = (x + lengthdir_x(40, (270 + aangle)))
cposy = (y + lengthdir_y(40, (270 + aangle)))
if (tgt_cangle > 180)
    tgt_cangle -= 360
if (cangle > tgt_cangle)
{
    cangle -= 1
    if (cangle < -22)
        cangle = -22
}
else
{
    cangle += 1
    if (cangle > 60)
        cangle = 60
}
if instance_exists(core)
{
    core.x = (x + croffx)
    core.y = (y + croffy)
}
if instance_exists(head)
{
    head.x = (x + hoffx)
    head.y = (y + hoffy)
    if (!head.damaged)
        tgt_cangle = point_direction(cposx, cposy, targetx, targety)
    else
        tgt_cangle = point_direction(cposx, cposy, (cposx + 200), random(200))
}
if instance_exists(bottom)
{
    bottom.x = (x + boffx)
    bottom.y = (y + boffy)
    if (bottom.damaged && y < 108)
        y += 1
}
if instance_exists(shield)
{
    shield.x = (x + shoffx)
    shield.y = (y + shoffy)
}
if instance_exists(arm)
{
    arm.x = x
    arm.y = y
    arm.aangle = aangle
}
if instance_exists(cannon)
{
    if (cannon.damaged == 0)
    {
        cannon.x = cposx
        cannon.y = cposy
        cannon.direction = cangle
    }
}
if (flashing > 0)
    flashing -= 1
statetime += 1
