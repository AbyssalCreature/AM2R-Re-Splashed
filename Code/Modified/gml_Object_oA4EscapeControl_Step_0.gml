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
            if (room == rm_a4b02 || room == rm_a4b03 || room == rm_a4b04 || room == rm_a4b05 || room == rm_a4b06 || room == rm_a4b07 || room == rm_a4b08 || room == rm_a4b09 || room == rm_a4b10 || room == rm_a4b11 || room == rm_a4b12 || room == rm_a4b13 || room == rm_a4b14 || room == rm_a4b15 || room == rm_a4b16 || room == rm_a4b17 || room == rm_a4b18 || room == rm_a4b19)
            {
                instance_create(oCharacter.x, (oCharacter.y + 480), oA4EscapeExplosionFail)
                instance_destroy()
            }
            else if (room != rm_a4b01)
            {
                with (oA4EscapeSeqFX)
                    instance_destroy()
                sfx_stop_loops()
                global.event[203] = 9
                instance_destroy()
                popup_text_ext("Reactor destroyed", 240)
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
