var voff, i, str, e;
draw_set_font(global.fontGUI2)
draw_set_color(c_black)
w = string_width(optext)
if (w < 80)
    w = 80
draw_set_alpha(1)
draw_set_font(global.fontGUI2)
draw_set_color(c_black)
draw_set_alpha(0.4)
if (global.curropt == optionid)
    draw_set_color(c_gray)
draw_rectangle((x - 2), (y - 1), ((x + textoffset) - 8), (y + 8), false)
if (optext != "")
    draw_rectangle(((x + textoffset) - 2), (y - 1), (((x + textoffset) + w) + 1), (y + 8), false)
draw_set_alpha(1)
draw_set_color(c_black)
draw_text((x + 1), (y - 3), label)
voff = 0
for (i = 0; i < string_length(optext); i++)
{
    str = string_char_at(optext, (i + 1))
    draw_text(((((x + textoffset) + (i * 7)) - (4 * voff)) + 1), (y - 3), str)
    if (str == "1")
        voff += 1
}
draw_set_color(c_white)
if (enabled == 0)
    draw_set_alpha(0.5)
else
    draw_set_alpha(1)
draw_text(x, (y - 4), label)
voff = 0
for (e = 0; e < string_length(optext); e++)
{
    if editing
    {
        if (e == sel)
            draw_set_color(make_color_rgb(3, 187, 25))
    }
    str = string_char_at(optext, (e + 1))
    draw_text((((x + textoffset) + (e * 7)) - (4 * voff)), (y - 4), str)
    if (str == "1")
        voff += 1
    draw_set_color(c_white)
}
draw_set_alpha(1)
