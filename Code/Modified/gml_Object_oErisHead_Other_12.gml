flashing = 10
roaring = 30
sfx_play(sndErisHit)
if (hp < maxhp && hp >= ((3 * maxhp) / 4))
    phase = 0
if (hp < ((3 * maxhp) / 4) && hp >= (maxhp / 2))
{
    phase = 1
    if (boostphase == 0)
    {
        boostlaunch = 30
        boostphase++
    }
}
if (hp < (maxhp / 2) && hp >= (maxhp / 4))
{
    phase = 2
    if (boostphase == 2)
    {
        boostlaunch = 30
        boostphase++
    }
}
if (hp < (maxhp / 4))
{
    phase = 3
    if (boostphase == 4)
    {
        boostlaunch = 30
        boostphase++
    }
}
if (hp <= 0)
{
    state = 100
    statetime = 0
}
for (i = 0; i <= bodylength; i += 1)
    segment[i].flashing = 10
