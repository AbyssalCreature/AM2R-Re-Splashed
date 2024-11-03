y = global.waterlevel
if wave
{
    wtime += wspeed
    yoffset -= (cos(wtime) * wheight)
}
