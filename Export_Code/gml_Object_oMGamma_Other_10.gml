if (other.smissile == 1)
{
    dmg = 50
    flashtime = 60
}
else
{
    dmg = 10
    flashtime = 30
}
myhealth -= dmg
if (myhealth <= 0)
{
    state = 100
    statetime = 0
    alarm[10] = 1
    alarm[11] = 160
    flashtime = 180
    turndelay = 180
    PlaySoundMono(deathsound)
    global.metdead[myid] = 1
    global.monstersleft -= 1
    global.monstersarea -= 1
    check_areaclear()
    global.monstersalive -= 1
    if (global.monstersalive == 0)
    {
        mus_fadeout(musGammaFight)
        oMusicV2.bossbgm = 0
    }
    if instance_exists(grabber)
    {
        with (grabber)
            instance_destroy()
    }
    if instance_exists(arms)
    {
        with (arms)
            instance_destroy()
    }
    global.dmap[mapposx, mapposy] = 11
    with (oControl)
        event_user(2)
}
flashing = 1
canbehit = 0
statetime = 0
currentangle = 30
if (chasing == 0)
{
    chasing = 1
    alarm[3] = awaydelay
}
if (myhealth > 0)
    PlaySoundMono(hitsound)
if sfx_isplaying(sndMAlphaIntro)
    sfx_stop(sndMAlphaIntro)
