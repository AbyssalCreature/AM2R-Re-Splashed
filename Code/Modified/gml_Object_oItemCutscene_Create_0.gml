opset = 0
ealpha = 0
fadeout = 0
active = 0
size = 0
if instance_exists(oNotification)
    oNotification.visible = false
Mute_Loops()
if (global.itemtype == 0)
{
    alarm[0] = 360
    if (oMusicV2.bossbgm == sndJump)
        mus_pause(oMusicV2.currentbgm)
    else
        mus_pause(oMusicV2.bossbgm)
    mus_play_once(musItemGet)
}
else
{
    alarm[0] = 60
    sfx_play(sndMessage)
}
if oControl.widescreen
{
    surf = surface_create(surface_get_width(oControl.widescreen_surface), surface_get_height(oControl.widescreen_surface))
    surface_copy(surf, 0, 0, oControl.widescreen_surface)
    surfoff = 53
}
else
{
    surf = surface_create(surface_get_width(oControl.screen_surface), surface_get_height(oControl.screen_surface))
    surface_copy(surf, 0, 0, oControl.screen_surface)
    surfoff = 0
}
