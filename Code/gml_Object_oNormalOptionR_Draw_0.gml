var rgb_gray;
draw_set_font(global.fontGUI2)
if (hide == 0 && global.curropt == optionid && can_highlight == 1)
{
    w = string_width(label)
    draw_background_ext(bgOptionLine, (x - w - 2), (y - 1), (w + 4), 1, 0, make_color_rgb(82, 89, 102), 0.4)
}
draw_set_halign(fa_right)
draw_set_color(c_black)
draw_text((x + 1), (y - 3), label)
rgb_gray = make_colour_rgb(82, 89, 102)
if (hide == 0)
{
    draw_set_color(c_white)
    if (can_highlight == 0)
        draw_set_color(rgb_gray)
    if (enabled == 0)
        draw_set_alpha(0.6)
    else
        draw_set_alpha(1)
}
else
{
    draw_set_color(rgb_gray)
    draw_set_alpha(1)
}
if (global.curropt != optionid)
    draw_set_color(c_gray)
draw_text(x, (y - 4), label)
draw_set_halign(fa_left)
draw_set_alpha(1)
