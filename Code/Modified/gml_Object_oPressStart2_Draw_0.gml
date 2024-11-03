draw_set_font(global.fontGUI2)
draw_set_halign(fa_center)
if (os_type != os_android)
{
    draw_text(x, y, pr_start_str)
    draw_cool_text(x, y, pr_start_str, c_black, c_white, c_white, image_alpha)
}
else if (global.joydetected == 0)
{
    draw_text(x, y, to_start_str)
    draw_cool_text(x, y, to_start_str, c_black, c_white, c_white, image_alpha)
}
else
{
    draw_text(x, y, pr_start_str)
    draw_cool_text(x, y, pr_start_str, c_black, c_white, c_white, image_alpha)
}
draw_set_halign(fa_left)
