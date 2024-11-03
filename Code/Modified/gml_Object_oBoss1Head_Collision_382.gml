if (sparkcounter == 0)
{
    state = 100
    sfx_play(sndBoss1Death)
    with (wall1)
        instance_destroy()
    with (wall2)
        instance_destroy()
    with (wheel)
        instance_destroy()
    with (block1)
        event_user(0)
    with (block2)
        event_user(0)
    with (107633)
        instance_destroy()
    global.event[51] = 1
    mus_fadeout(musAncientGuardian)
    oMusicV2.bossbgm = 0
    mus_current_fadein()
    sparkcounter = 1
}
