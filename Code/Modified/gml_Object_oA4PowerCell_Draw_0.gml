draw_sprite(corespr, rframe, x, y)
draw_sprite_ext(sprite_index, 0, (x - 160), y, 1, 1, 0, c_gray, 1)
draw_sprite_ext(sprite_index, 0, (x + 160), y, 1, 1, 0, c_gray, 1)
draw_self()
