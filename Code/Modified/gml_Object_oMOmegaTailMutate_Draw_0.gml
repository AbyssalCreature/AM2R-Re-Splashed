if (oControl.mod_fusion == 1 || oControl.MonsterPalettesFusionOnly == 0)
    pal_swap_set(oControl.OmegaPalette, 1, 0)
draw_sprite_ext(sprite_index, -1, (x + offx), (y + offy), image_xscale, 1, 0, -1, 1)
shader_reset()
