if (state == 1)
{
    if (statetime < 60)
    {
        if (oCharacter.x > 480)
        {
            with (oCharacter)
                x -= 1
        }
        if (oCharacter.x < 480)
        {
            with (oCharacter)
                x += 1
        }
    }
    if (statetime == 120)
    {
        global.event[250] = 1
        mus_change(musArea5B)
        with (oDoor)
            event_user(3)
        with (oA5ActivationBG)
            i = 0
        instance_create(480, 384, oA5SwitchLight)
        instance_create(x, y, oA5BotSpawnCutscene)
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
        update_log(28)
        instance_destroy()
    }
    statetime += 1
}
