var copyStr;
copyStr = string_copy(drawtext, 1, textpos)
draw_set_color(c_white)
draw_set_font(global.fontGUI2)
draw_set_alpha(textalpha)
draw_text(16, texty, copyStr)
draw_set_alpha(1)
draw_background_ext(drawimg, 16, 16, 1, 1, 0, -1, imgalpha)
