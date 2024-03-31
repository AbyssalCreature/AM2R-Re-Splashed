if (global.event[304] == 1 && (!fadeout))
{
    alarm[0] = 8
    sfx_stop(sndHatchlingEat)
    sfx_play(sndHatchlingEat)
    with (other.id)
    {
        speed = 0.1
        flash = 1
    }
    fadeout = 1
}
