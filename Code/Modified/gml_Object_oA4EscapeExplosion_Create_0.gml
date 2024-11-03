fadeout = 0
image_xscale = 0.2
image_yscale = 0.2
exploff = 640
alarm[10] = 360
alarm[1] = 60
alarm[0] = 180
whitealpha = 0
global.enablecontrol = 0
with (oCharacter)
{
    state = 43
    statetime = 0
}
sfx_stop_all()
sfx_play(sndA4ExplFinal)
mus_stop_all()
mus_set_current(0)
