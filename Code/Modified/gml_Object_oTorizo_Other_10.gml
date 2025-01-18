flashing = 5
fxtimer = 0
PlaySoundMono(sndTorizoHit)
if (myhealth <= 0)
{
    state = 100
    statetime = 0
    alarm[10] = 1
    alarm[11] = 300
    mus_fadeout(musTorizoA)
    oMusicV2.bossbgm = 0
}
