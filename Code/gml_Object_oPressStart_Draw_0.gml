draw_set_font(global.fontGUI2);
draw_set_halign(fa_center);

if (os_type != os_android)
    draw_cool_text(x, y, pr_start_str, rgb_darkgreen, merged_color, merged_color, image_alpha);
else if (global.joydetected == 0)
    draw_cool_text(x, y, pr_start_str, rgb_darkgreen, merged_color, merged_color, image_alpha);
else
    draw_cool_text(x, y, pr_start_str, rgb_darkgreen, merged_color, merged_color, image_alpha);

draw_set_halign(fa_left);
