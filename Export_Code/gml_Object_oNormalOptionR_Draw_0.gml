draw_set_font(global.fontGUI2)
if (hide == 0 && global.curropt == optionid && can_highlight == 1)
{
    w = string_width(label)
    draw_background_ext(bgOptionLine, ((x - w) - 2), (y - 1), (w + 4), 1, 0, make_color_rgb(160, 160, 160), 0.4)
}
draw_set_halign(fa_right)
draw_set_color(c_black)
draw_text((x + 1), (y - 3), label)
if (hide == 0)
{
    draw_set_color(c_white)
    if (can_highlight == 0)
        draw_set_color(c_gray)
    if (enabled == 0)
        draw_set_alpha(0.5)
    else
        draw_set_alpha(1)
}
else
{
    draw_set_color(c_gray)
    draw_set_alpha(1)
}
if (global.curropt != optionid)
    draw_set_color(c_gray)
draw_text(x, (y - 4), label)
draw_set_halign(fa_left)
draw_set_alpha(1)
