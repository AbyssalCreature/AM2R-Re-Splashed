if oControl.widescreen
{
    if surface_exists(oControl.widescreen_surface)
        surface_set_target(oControl.widescreen_surface)
}
else if surface_exists(application_surface)
    surface_set_target(application_surface)
vx = 0
vy = offset
draw_background_ext(bgNotification, vx, (vy + 212), 1, 1, 0, -1, 0.7)
draw_set_font(global.fontGUI2)
draw_set_alpha(1)
draw_set_color(make_colour_rgb(224, 248, 208))
draw_text((vx + 7), (vy + 214), text1)
if (btn2_name == "")
{
    if (btn1_name != "")
        draw_txt_1button_log((vx + 7), (vy + 224), text2, 1, btn1_name, 1)
    else
    {
        draw_set_font(global.fontMenuSmall)
        draw_text((vx + 7), (vy + 224), text2)
    }
}
else
    draw_txt_2buttons_log((vx + 7), (vy + 224), text2, 1, btn1_name, btn2_name, 1)
surface_reset_target()
