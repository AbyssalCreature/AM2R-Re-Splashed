if surface_exists(surf)
{
    draw_surface(surf, (0 - surfoff), 0)
    if (global.itemtype == 0)
    {
        draw_surface_ext(surf, (1 - surfoff), 0, 1, 1, 0, -1, (0.5 * ealpha))
        draw_surface_ext(surf, (-1 - surfoff), 0, 1, 1, 0, -1, (0.5 * ealpha))
        draw_surface_ext(surf, (2 - surfoff), 0, 1, 1, 0, -1, (0.2 * ealpha))
        draw_surface_ext(surf, (-2 - surfoff), 0, 1, 1, 0, -1, (0.2 * ealpha))
    }
}
if (global.itemtype == 0)
{
    draw_set_alpha(0.8)
    draw_set_color(c_black)
    draw_rectangle((0 - surfoff), (120 - size), (room_width + surfoff), (120 + size), false)
    draw_set_halign(fa_center)
    draw_set_valign(fa_middle)
    draw_set_font(global.fontGUI)
    draw_cool_text(160, (112 + oControl.GUIOffset), global.itmtext1, c_white, c_aqua, c_navy, ealpha)
    draw_set_valign(fa_top)
    if (global.btn1_name == "" && global.btn2_name == "")
    {
        draw_set_font(global.fontMenuSmall2)
        draw_set_alpha(ealpha)
        draw_text(160, 121, global.itmtext2)
    }
    if (global.btn1_name != "" && global.btn2_name == "")
        draw_txt_1button(160, 121, global.itmtext2, 0, global.btn1_name, ealpha)
    if (global.btn1_name != "" && global.btn2_name != "")
        draw_txt_2buttons(160, 121, global.itmtext2, 0, global.btn1_name, global.btn2_name, ealpha)
    draw_set_halign(fa_left)
    draw_set_alpha(1)
}
