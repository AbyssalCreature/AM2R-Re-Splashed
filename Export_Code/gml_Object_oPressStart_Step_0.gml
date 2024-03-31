i += 0.05
if (i > 99999999)
    i = 0
image_alpha = (0.1 + abs(sin(i)))
if (visible && ((oControl.kMenu1 && oControl.kMenu1PushedSteps == 0) || (oControl.kMenu2 && oControl.kMenu2PushedSteps == 0) || (oControl.kStart && oControl.kStartPushedSteps == 0)))
{
    instance_create(x, y, oPressStart2)
    with (oDrawTitleBG)
        alarm[0] = 60
    sfx_play(sndStartButton)
    instance_destroy()
}
