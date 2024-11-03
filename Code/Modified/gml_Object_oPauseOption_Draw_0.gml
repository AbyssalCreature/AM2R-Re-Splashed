draw_set_font(global.fontGUI2)
if (global.curropt == optionid)
{
    w = string_width(label)
    draw_background_ext(bgOptionLine, (x - 2), (y - 1), (w + 4), 1, 0, make_color_rgb(160, 160, 160), 0.4)
}
draw_set_color(c_black)
draw_text((x + 1), (y - 3), label)
draw_set_color(color)
if (enabled == 0)
    draw_set_alpha(0.5)
else
    draw_set_alpha(1)
draw_text(x, (y - 4), label)
