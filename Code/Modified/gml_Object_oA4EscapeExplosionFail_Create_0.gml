fadeout = 0
image_xscale = 0.2
image_yscale = 0.2
exploff = 640
alarm[10] = 180
alarm[1] = 60
whitealpha = 0
global.enablecontrol = 0
with (oCharacter)
{
    state = 43
    statetime = 0
    xVel = 0
    yVel = 0
}
with (oControl)
    displaygui = 0
repeat (20)
    make_explosion1big(random(room_width), random(room_height))
sfx_stop_all()
sfx_play(sndA4ExplFinal)
mus_stop_all()
