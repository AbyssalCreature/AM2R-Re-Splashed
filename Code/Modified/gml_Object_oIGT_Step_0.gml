var compl, metcount, i, yoff, percentOffset;
percentOffset = 28
if (!oControl.mod_IGT)
    instance_destroy()
if (surface_exists(igt_surface) && surface_get_width(igt_surface) < (320 + oControl.widescreen_space))
    surface_free(igt_surface)
if (!surface_exists(igt_surface))
    igt_surface = surface_create((320 + oControl.widescreen_space), 240)
if surface_exists(igt_surface)
{
    compl = string(round(((global.itemstaken / 88) * 100)))
    surface_set_target(igt_surface)
    draw_clear_alpha(c_black, 0)
    draw_set_font(global.fontGUI2)
    draw_set_halign(fa_left)
    draw_set_alpha(0.39215686274509803)
    draw_set_color(c_black)
    draw_rectangle(0, 20, (54 - (4 * string_count("1", steps_to_time2(global.gametime)))), 29, false)
    draw_set_alpha(1)
    draw_set_color(c_white)
    draw_cool_text(4, 16, steps_to_time2(global.gametime), c_black, c_white, c_gray, 1)
    if instance_exists(oClient)
    {
        yoff = 27
        if global.saxmode
        {
            if (global.saveStationCooldown > 0)
                draw_cool_text(4, yoff, ("Save Cooldown: " + string((global.saveStationCooldown / 60))), c_black, c_white, c_gray, 1)
            percentOffset = 44
            metcount = 0
            for (i = 0; i <= 40; i++)
            {
                if (global.metdead[i] == 1)
                    metcount += 1
            }
            if (!global.lobbyLocked)
            {
                countdownnumber = "PAUSED"
                countdownx = (107 + (oControl.widescreen_space / 2))
                if global.saxmode
                {
                    draw_set_alpha(0.6)
                    draw_rectangle_color(0, 0, (320 + oControl.widescreen_space), 240, c_black, c_black, c_black, c_black, 0)
                    draw_set_alpha(1)
                }
            }
            if (!global.lobbyLocked)
                global.countdowncontrol = 180
            if (global.countdowncontrol == 179 && global.lobbyLocked)
            {
                countdownnumber = "3"
                countdownx = (152 + (oControl.widescreen_space / 2))
                sfx_play(sndSaxCount3)
            }
            else if (global.countdowncontrol == 120)
            {
                countdownnumber = "2"
                sfx_play(sndSaxCount2)
            }
            else if (global.countdowncontrol == 60)
            {
                countdownnumber = "1"
                countdownx = (157 + (oControl.widescreen_space / 2))
                sfx_play(sndSaxCount1)
            }
            else if (global.countdowncontrol == 0)
            {
                countdownnumber = "GO!"
                countdownx = (137 + (oControl.widescreen_space / 2))
                sfx_play(sndSaxCountGO)
            }
            if (global.countdowncontrol <= -60)
                global.countdowncontrol = -60
            if (global.saxmode && global.countdowncontrol > -60)
                draw_cool_text_transformed(countdownx, 110, string(countdownnumber), c_black, c_white, c_silver, 1, 3)
            global.countdowncontrol -= 1
        }
    }
    if (oControl.mod_collecteditemsmap == 1)
    {
        draw_set_halign(fa_right)
        draw_set_alpha(0.39215686274509803)
        draw_set_color(c_black)
        if (!global.saxmode)
            draw_rectangle(((((320 + oControl.widescreen_space) + (4 * string_count("1", compl))) - (7 * (string_length(compl) - 1))) - 21), 32, (320 + oControl.widescreen_space), 41, false)
        draw_set_alpha(1)
        draw_set_color(c_white)
        draw_cool_text((surface_get_width(igt_surface) - 3), percentOffset, (compl + "%"), c_black, c_white, c_silver, 1)
        draw_set_halign(fa_left)
    }
    surface_reset_target()
}
