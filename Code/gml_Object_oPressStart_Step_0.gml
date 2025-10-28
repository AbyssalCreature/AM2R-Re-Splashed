i += 0.05
if (i > 99999999)
    i = 0
rgb_green = make_color_rgb(8, 253, 142)
rgb_darkgreen = make_color_rgb(1, 24, 25)
rgb_medgreen = make_color_rgb(1, 142, 81)
fade_speed = 0.02
color_mix = 0
if (color_mix == 0)
{
    color_mix += fade_speed
    if (color_mix >= 1)
        color_mix = 1
}
if (color_mix == 1)
{
    color_mix -= fade_speed
    if (color_mix <= 0)
        color_mix = 0
}
medgreen_blend = 0 + abs(sin(i))
merged_color = merge_colour(rgb_green, rgb_medgreen, medgreen_blend)
if (visible && ((oControl.kMenu1 && oControl.kMenu1PushedSteps == 0) || (oControl.kMenu2 && oControl.kMenu2PushedSteps == 0) || (oControl.kStart && oControl.kStartPushedSteps == 0)))
{
    instance_create(x, y, oPressStart2)
    with (oDrawTitleBG)
        alarm[0] = 60
    sfx_play(sndStartButton)
    instance_destroy()
}
