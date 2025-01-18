currentline = 0
text = logobj[global.curropt].ltext
draw_set_font(global.fontMenuSmall2)
height = string_height_ext(text, 8, 128)
if (height > 67)
    expandable = 1
else
    expandable = 0
if (height > 123)
{
    scroll = 1
    lines = ((height - 123) / 8)
}
else
    scroll = 0
surface_set_target(surf)
draw_set_font(global.fontMenuSmall2)
draw_set_color(c_white)
draw_set_alpha(1)
draw_clear(c_black)
draw_text_ext(2, -2, text, 8, 128)
surface_reset_target()
