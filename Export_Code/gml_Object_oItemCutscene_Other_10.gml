fadeout = 1
active = 0
if (global.itemtype == 0)
{
    if sfx_isplaying(musItemGet)
        audio_sound_gain(musItemGet, 0, 250)
    oMusicV2.alarm[11] = 60
    if (oMusicV2.bossbgm == sndJump)
    {
        mus_resume(oMusicV2.currentbgm)
        mus_current_fadein()
    }
    else
    {
        mus_resume(oMusicV2.bossbgm)
        mus_boss_fadein()
    }
}
