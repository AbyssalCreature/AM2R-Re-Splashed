if (!surface_exists(oControl.gui_surface))
    oControl.gui_surface = surface_create((320 + oControl.widescreen_space), 240)
if surface_exists(oControl.gui_surface)
{
    surface_set_target(oControl.gui_surface)
    if (global.ingame && room != rm_transition && oControl.displaygui && instance_exists(oCharacter))
    {
        if drawbar
        {
            draw_set_color(c_white)
            draw_set_alpha(1)
            draw_background_ext(bgA4EscapeBarBG, (((view_wview[0] + oControl.widescreen_space) / 2) - (81 * barratio)), 50, barratio, 1, 0, -1, 0.8)
            draw_background_part_ext(bgA4EscapeBar, 0, 0, bgw, 8, (((view_wview[0] + oControl.widescreen_space) / 2) - (80 * barratio)), 59, barratio, 1, -1, 1)
            draw_set_font(global.fontMenuSmall)
            draw_set_halign(fa_center)
            draw_text(((view_wview[0] + oControl.widescreen_space) / 2), 48, string(get_text("Misc", "TowerCellTemp")))
            draw_set_halign(fa_left)
            if (temp == 100)
            {
                draw_set_blend_mode(bm_add)
                repeat (2)
                    draw_background_ext(bgA4EscapeBar, (((view_wview[0] + oControl.widescreen_space) / 2) - (80 * barratio)), 59, barratio, 1, 0, -1, (barfx * 0.2))
                draw_set_blend_mode(bm_normal)
            }
        }
    }
    surface_reset_target()
}
