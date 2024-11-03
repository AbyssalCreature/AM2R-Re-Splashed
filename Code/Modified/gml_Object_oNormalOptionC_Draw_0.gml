draw_set_font(global.fontGUI2)
if (global.curropt == optionid)
{
    w = string_width(label)
    draw_background_ext(bgOptionLine, ((x - (w / 2)) - 2), (y - 1), (w + 4), 1, 0, make_color_rgb(160, 160, 160), 0.4)
}
draw_set_alpha(1)
draw_set_halign(fa_center)
draw_set_color(c_black)
draw_text((x + 1), (y - 3), label)
draw_set_color(c_white)
if (enabled == 0)
    draw_set_alpha(0.5)
else
    draw_set_alpha(1)
if (global.curropt != optionid)
    draw_set_color(c_gray)
draw_text(x, (y - 4), label)
draw_set_halign(fa_left)
