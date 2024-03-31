if (global.event[205] == 0)
{
    with (oMZeta_Cocoon)
    {
        state = 1
        statetime = 0
    }
    global.event[205] = 1
    ecam = instance_create(x, (y - 16), oEventCamera2)
    ecam.targetx = oMZeta_Cocoon.x
    ecam.targety = y
    ecam.ratio = 8
    view_object[0] = oEventCamera2
    mus_current_fadeout()
    sfx_stop(sndSJLoop)
    instance_destroy()
}
else
    instance_destroy()
