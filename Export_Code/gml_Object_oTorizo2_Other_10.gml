flashing = 5
fxtimer = 0
PlaySoundMono(sndTorizoHit)
myhealth -= 1
if (myhealth <= 0)
{
    state = 100
    statetime = 0
    alarm[10] = 1
    alarm[11] = 300
    with (oTorizoEgg)
        event_user(1)
    with (oTorizoGhost)
        event_user(1)
    if (oControl.mod_fusion == 0)
    {
        with (oTorizoSpikes)
            event_user(0)
        mus_fadeout(musTorizoB)
        oMusicV2.bossbgm = 0
    }
}
