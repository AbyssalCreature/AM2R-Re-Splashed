draw_set_blend_mode(bm_add)
draw_sprite_ext(sprite_index, -1, x, y, 1, image_yscale, image_angle, -1, image_alpha)
draw_sprite_ext(sprite_index, -1, x, y, 1, (image_yscale * -1), image_angle, -1, image_alpha)
draw_set_blend_mode(bm_normal)
