var col;
col = make_color_rgb((55 + (200 * image_alpha)), (55 + (200 * image_alpha)), (55 + (200 * image_alpha)))
if (enabled == 0)
    col = 0
draw_background_ext(bg, x, y, 1, 1, 0, col, 1)
