var i;
if (oControl.mod_fusion == 1 || oControl.MonsterPalettesFusionOnly == 0)
    pal_swap_set(oControl.OmegaPalette, 1, 0)
i = 5
repeat (6)
{
    draw_sprite_ext(sprite_index, -1, (x - ((i * sep) * facing)), (y + yoff[i]), facing, 1, 0, -1, 1)
    i -= 1
}
shader_reset()
