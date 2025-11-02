draw_set_font(global.fontGUI2);
draw_set_halign(fa_center);

if (os_type != os_android)
{
    draw_text(x, y, pr_start_str);
    draw_cool_text(x, y, pr_start_str, make_color_rgb(1, 24, 25), 16777215, 16777215, image_alpha);
}
else if (global.joydetected == 0)
{
    draw_text(x, y, to_start_str);
    draw_cool_text(x, y, to_start_str, make_color_rgb(1, 24, 25), 16777215, 16777215, image_alpha);
}
else
{
    draw_text(x, y, pr_start_str);
    draw_cool_text(x, y, pr_start_str, make_color_rgb(1, 24, 25), 16777215, 16777215, image_alpha);
}

draw_set_halign(fa_left);
