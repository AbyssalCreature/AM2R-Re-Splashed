if (state == 1)
{
    if (statetime == 1)
        mus_fadeout(musCaveAmbienceA4)
    if (statetime < 60)
    {
        if (oCharacter.x > 320)
        {
            with (oCharacter)
                x -= 1
        }
        if (oCharacter.x < 320)
        {
            with (oCharacter)
                x += 1
        }
    }
    if (statetime > 10 && statetime < 90)
    {
        if (oCharacter.y < 184)
            oCharacter.y += 0.5
    }
    if (statetime == 60)
        instance_create(320, 144, oA4SwitchCables)
    if (statetime == 120)
    {
        global.event[200] = 1
        global.darkness = 0
        with (oLightEngine)
            event_user(2)
        with (127890)
            lock = 0
        with (oA4PowerBG)
            event_user(0)
        mus_change(musArea4A)
    }
    if (statetime == 320)
    {
        with (oCharacter)
        {
            state = 23
            statetime = 0
            morphing = 0
            turning = 0
        }
        update_log(26)
        instance_destroy()
    }
    if (statetime > 280)
    {
        if (oCharacter.y > 176)
            oCharacter.y -= 0.5
    }
    statetime += 1
}
