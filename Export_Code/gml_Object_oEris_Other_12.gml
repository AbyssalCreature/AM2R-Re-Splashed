flashing = 10
roaring = 30
sfx_play(sndErisHit)
if (hp < 100 && hp >= 75)
    phase = 0
if (hp < 75 && hp >= 50)
{
    phase = 1
    if (boostphase == 0)
        boostphase = 1
}
if (hp < 50 && hp >= 25)
{
    phase = 2
    if (boostphase == 2)
        boostphase = 3
}
if (hp < 25)
{
    phase = 3
    if (boostphase == 4)
        boostphase = 5
}
if (hp <= 0)
{
    state = 100
    statetime = 0
}
for (i = 1; i < (bodylength - 1); i += 1)
    mybody[i].flashing = 10
tailobj.flashing = 10
