if wave
{
    wtime += wspeed
    yoffset -= (cos(wtime) * wheight)
}
if instance_exists(oCharacter)
{
    if oCharacter.inwater
    {
        if (spr_alpha > 0.1)
            spr_alpha -= 0.01
    }
    else if (spr_alpha < 0.4)
        spr_alpha += 0.01
}
