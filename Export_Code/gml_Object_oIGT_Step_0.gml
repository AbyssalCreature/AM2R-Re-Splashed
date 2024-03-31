var compl, metcount, i, yoff;
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
        draw_cool_text(4, yoff, ("ping: " + string(global.ping)), c_black, c_white, c_gray, 1)
        yoff += 11
        if global.saxmode
        {
            metcount = 0
            for (i = 0; i <= 40; i++)
            {
                if (global.metdead[i] == 1)
                    metcount += 1
            }
            if ((global.MetCount - metcount) > 0)
            {
                draw_cool_text(4, yoff, ("Metroids to A6: " + string((global.MetCount - metcount))), c_black, c_white, c_gray, 1)
                yoff += 11
            }
            draw_cool_text(4, yoff, ("X-Power: " + string(global.damageMult)), c_black, c_aqua, make_colour_rgb(79, 146, 255), 1)
            yoff += 11
        }
        if (global.saveStationCooldown > 0)
            draw_cool_text(4, yoff, ("Save Cooldown: " + string((global.saveStationCooldown / 60))), c_black, c_white, c_gray, 1)
    }
    if (oControl.mod_collecteditemsmap == 1)
    {
        draw_set_halign(fa_right)
        draw_set_alpha(0.39215686274509803)
        draw_set_color(c_black)
        draw_rectangle(((((320 + oControl.widescreen_space) + (4 * string_count("1", compl))) - (7 * (string_length(compl) - 1))) - 21), 32, (320 + oControl.widescreen_space), 41, false)
        draw_set_alpha(1)
        draw_set_color(c_white)
        draw_cool_text((surface_get_width(igt_surface) - 3), 28, (compl + "%"), c_black, c_white, c_silver, 1)
        draw_set_halign(fa_left)
    }
    surface_reset_target()
}
