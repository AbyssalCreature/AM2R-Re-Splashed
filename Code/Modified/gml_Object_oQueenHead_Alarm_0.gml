if (numproj > 0)
{
    instance_create((x + 10), y, oQueenProj)
    sfx_play(sndFireball)
    numproj -= 1
    alarm[0] = projdelay
}
