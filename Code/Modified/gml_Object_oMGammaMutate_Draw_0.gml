if (oControl.mod_fusion == 1 || oControl.MonsterPalettesFusionOnly == 0)
    pal_swap_set(oControl.GammaPalette, 1, 0)
alpha2 = (image_index - floor(image_index))
alpha1 = (1 - alpha2)
if (state == 2)
{
    draw_sprite_ext(sprite_index, image_index, (x + xoffset), (y + yoffset), 1, 1, 0, -1, (alpha1 * 1.5))
    draw_sprite_ext(sprite_index, (image_index + 1), (x + xoffset), (y + yoffset), 1, 1, 0, -1, (alpha2 * 1.5))
}
else
    draw_sprite_ext(sprite_index, image_index, (x + xoffset), (y + yoffset), 1, 1, 0, -1, 1)
shader_reset()
