if (global.event[303] == 0)
{
    if instance_exists(oCharacter)
    {
        if (oCharacter.x < 1000)
            sfx_play(sndQueenDistant)
    }
    alarm[0] = (400 + random(160))
}
