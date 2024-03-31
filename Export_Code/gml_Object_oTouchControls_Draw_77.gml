if ((global.joydetected == 1 && global.ingame) || global.gamestarted == 0 || room == rm_credits || room == rm_score || room == rm_death || room == gameintroroom)
    exit
if (draw == 1 && alpha != 0)
{
    draw_set_color(c_white)
    draw_set_alpha(alpha)
    draw_set_circle_precision(48)
    if (global.ingame || room == rm_subscreen || room == rm_secretEnding)
    {
        draw_sprite_ext(sTouchButtonPause, 0, btn_pause_x, btn_pausearrow_y, (4 / scale), (4 / scale), 0, c_white, (alpha / 3))
        draw_roundrect_ext(btn_pause[0], btn_pause[1], btn_pause[2], btn_pause[3], 30, 30, 1)
    }
    if (room != rm_secretEnding)
    {
        draw_roundrect(btn_jump[0], btn_jump[1], btn_jump[2], btn_jump[3], 1)
        draw_roundrect(btn_fire[0], btn_fire[1], btn_fire[2], btn_fire[3], 1)
        draw_sprite_ext(sTouchButtonX, 0, mean(btn_fire[0], btn_fire[2]), mean(btn_fire[1], btn_fire[3]), (4 / scale), (4 / scale), 0, c_white, (alpha / 3))
        draw_sprite_ext(sTouchButtonS, 0, mean(btn_jump[0], btn_jump[2]), mean(btn_jump[1], btn_jump[3]), (4 / scale), (4 / scale), 0, c_white, (alpha / 3))
        draw_circle(gui_x[0], gui_y[0], st_radius, 1)
        if (instance_exists(oSS_Fg) && global.ssmode == 0 && oSS_Fg.hidetext == 0 && oSS_Fg.itemcollunlock)
        {
            draw_roundrect(btn_missile[0], btn_missile[1], btn_missile[2], btn_missile[3], 1)
            draw_sprite_ext(sTouchButtonT, 0, mean(btn_missile[0], btn_missile[2]), mean(btn_missile[1], btn_missile[3]), 1, 1, 0, c_white, (alpha / 3))
        }
        if ((global.ingame || room == itemroom) && (!global.joydetected))
        {
            draw_triangle(btn_aimul[0], btn_aimul[1], btn_aimul[2], btn_aimul[3], btn_aimul[4], btn_aimul[5], 1)
            if global.opaimstyle
                draw_triangle(btn_aimdl[0], btn_aimdl[1], btn_aimdl[2], btn_aimdl[3], btn_aimdl[4], btn_aimdl[5], 1)
            draw_triangle(btn_aimur[0], btn_aimur[1], btn_aimur[2], btn_aimur[3], btn_aimur[4], btn_aimur[5], 1)
            if global.opaimstyle
                draw_triangle(btn_aimdr[0], btn_aimdr[1], btn_aimdr[2], btn_aimdr[3], btn_aimdr[4], btn_aimdr[5], 1)
            draw_roundrect(btn_missile[0], btn_missile[1], btn_missile[2], btn_missile[3], 1)
            draw_roundrect(btn_morph[0], btn_morph[1], btn_morph[2], btn_morph[3], 1)
            draw_sprite_ext(sTouchButtonT, 0, mean(btn_missile[0], btn_missile[2]), mean(btn_missile[1], btn_missile[3]), (4 / scale), (4 / scale), 0, c_white, (alpha / 3))
            draw_sprite_ext(sTouchButtonC, 0, mean(btn_morph[0], btn_morph[2]), mean(btn_morph[1], btn_morph[3]), (4 / scale), (4 / scale), 0, c_white, (alpha / 3))
            draw_set_alpha((alpha / 3))
            draw_circle(stick_x[0], stick_y[0], 50, 0)
        }
        else
        {
            draw_set_alpha((alpha / 3))
            draw_triangle(btn_uparrow[0], btn_uparrow[1], btn_uparrow[2], btn_uparrow[3], btn_uparrow[4], btn_uparrow[5], 0)
            draw_triangle(btn_downarrow[0], btn_downarrow[1], btn_downarrow[2], btn_downarrow[3], btn_downarrow[4], btn_downarrow[5], 0)
            draw_triangle(btn_leftarrow[0], btn_leftarrow[1], btn_leftarrow[2], btn_leftarrow[3], btn_leftarrow[4], btn_leftarrow[5], 0)
            draw_triangle(btn_rightarrow[0], btn_rightarrow[1], btn_rightarrow[2], btn_rightarrow[3], btn_rightarrow[4], btn_rightarrow[5], 0)
        }
    }
    draw_set_alpha(1)
}
