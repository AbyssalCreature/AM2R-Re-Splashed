if (global.ingame && room != rm_transition)
{
    if (steps == 300)
    {
        instance_create(0, 0, oA4EscapeSeqFX)
        sfx_loop(sndA4AlarmLoop)
        mus_loop(musReactor)
        drawbar = 1
    }
    if (steps > 300)
    {
        bgw = ((temp / 100) * 160)
        if (temp >= 100)
        {
            if (room != rm_a4b01)
            {
                instance_create(oCharacter.x, (oCharacter.y + 480), oA4EscapeExplosionFail)
                instance_destroy()
            }
        }
    }
    steps += 1
    barfx += 1
    if (barfx > 5)
        barfx = 0
}
if (global.event[203] == 0 || room == titleroom)
    instance_destroy()
