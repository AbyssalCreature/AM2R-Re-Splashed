if (drawenergy == 0)
    sfx_loop(sndVariaLoop)
drawenergy = 1
if (yoffset > 0)
{
    yoffset -= 1
    alarm[0] = 5
}
else
{
    drawenergy = 0
    state = 3
    sfx_stop(sndVariaLoop)
    sfx_play(sndVariaGet)
}
