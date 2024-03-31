var sfx;
sfx = choose(0, 1, 2)
if inrange
{
    switch sfx
    {
        case 0:
            sfx_play(sndErisMove1)
            break
        case 2:
            sfx_play(sndErisMove2)
            break
        case 3:
            sfx_play(sndErisMove3)
            break
    }

}
alarm[1] = (60 + random(90))
