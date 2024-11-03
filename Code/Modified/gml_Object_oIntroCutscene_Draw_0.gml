if (state == 1)
{
    draw_background(bgIntroSC1, (s1bgoffx - (oControl.widescreen_space / 2)), s1bgoffy)
    draw_set_color(c_black)
    draw_set_alpha(s1fade_alpha)
    draw_rectangle((0 - (oControl.widescreen_space / 2)), 0, 800, 800, false)
    draw_set_alpha(1)
}
if (state == 2)
    draw_background(bgIntroSC2, (s2bgoffx - (oControl.widescreen_space / 2)), s2bgoffy)
if (state == 3)
{
    if (!oControl.widescreen)
        draw_background(bgA0Sky, s3bgoffx, s3bgoffy)
    else
        draw_background(bgA0Sky_wide, s3bgoffx, s3bgoffy)
    draw_background_tiled_ext(bgCloud1, s3cloudsb_x, s3cloudsb_y, 1, 1, -1, s3cloudsb_alpha)
    draw_set_color(c_black)
    draw_set_alpha(s3fade_alpha)
    draw_rectangle((0 - (oControl.widescreen_space / 2)), 0, 800, 800, false)
    draw_set_alpha(1)
}
