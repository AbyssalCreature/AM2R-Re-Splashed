var rgb_green = oControl.paletteBrightGreen;
w = string_width(optext);

if (w < 80)
    w = 80;

draw_set_alpha(1);
draw_set_font(global.fontGUI2);
draw_set_color(c_black);
draw_set_alpha(0.6);
var rgb_gray = make_color_rgb(82, 89, 102);

if (global.curropt == optionid)
    draw_set_color(rgb_gray);

draw_rectangle(x - 2, y - 1, (x + textoffset) - 8, y + 8, false);

if (editing)
    draw_set_color(oControl.paletteMedGreen);

draw_rectangle((x + textoffset) - 2, y - 1, x + textoffset + w + 1, y + 8, false);
draw_set_alpha(1);
draw_set_color(c_black);
draw_text(x + 1, y - 3, label);
draw_text(x + textoffset + 1, y - 3, optext);
draw_set_color(c_white);

if (enabled == 0)
    draw_set_color(rgb_gray);
else
    draw_set_color(c_white);

draw_text(x, y - 4, label);

if (editing)
    draw_set_color(rgb_green);

draw_text(x + textoffset, y - 4, optext);
draw_set_alpha(1);
