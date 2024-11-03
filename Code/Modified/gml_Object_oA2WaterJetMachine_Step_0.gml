if active
{
    lightframe = (!lightframe)
    if collision_line((x - 4), (y - 4), (x + 4), (y - 4), oCharacter, false, true)
        enabled = 1
    else
        enabled = 0
    if (state == 0)
    {
        if (enabled == 1 && image_index < 2)
            image_index += 0.5
        if (enabled == 0 && image_index > 0.2)
            image_index -= 0.2
        if (enabled && oCharacter.state == 23)
        {
            state = 1
            alarm[2] = 20
            with (oCharacter)
            {
                state = 50
                statetime = 0
            }
            global.event[102] = 1
            sfx_play(sndMorphBallSlot)
        }
    }
    if (state == 1)
    {
        if (image_index < 8)
            image_index += 0.5
        if (oCharacter.x > x)
        {
            with (oCharacter)
                x -= 1
        }
        if (oCharacter.x < x)
        {
            with (oCharacter)
                x += 1
        }
    }
}
