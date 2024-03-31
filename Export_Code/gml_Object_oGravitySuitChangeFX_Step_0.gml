if (state == 0)
{
    if (statetime == 60)
    {
        state = 1
        statetime = 0
    }
}
if (state == 1)
{
    if (statetime == 0)
    {
        with (oGravityPod)
        {
            closed = 1
            depth = -100
        }
    }
    if (statetime == 120)
    {
        state = 2
        statetime = 0
    }
}
if (state == 2)
{
    if (statetime == 0)
    {
        lights = instance_create(x, y, oGravityPodLights)
        sfx_loop(sndVariaLoop)
    }
    if (statetime == 180)
    {
        with (lights)
            instance_destroy()
        state = 3
        statetime = 0
        sfx_stop(sndVariaLoop)
    }
}
if (state == 3)
{
    if (statetime == 0)
    {
        with (oGravityPod)
            closed = 0
        global.item[9] = 1
        global.currentsuit = 2
        instance_create(x, y, oGravityOverlay)
        sfx_play(sndA4DoorOpen)
    }
    if (statetime == 120)
    {
        state = 4
        statetime = 0
    }
}
if (state == 4)
{
    if (statetime == 0)
    {
    }
    if (statetime == 320)
    {
        with (oGravityPod)
            depth = 50
        global.enablecontrol = 1
        event_user(0)
    }
}
statetime += 1
with (oCharacter)
{
    if (x > (room_width / 2))
        x -= 1
    if (x < (room_width / 2))
        x += 1
    if (y < 160)
        y += 1
}
