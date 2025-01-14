if (oControl.mod_fusion == 1 || oControl.MonsterPalettesFusionOnly == 0)
{
    if (global.shaders_compiled && os_type != os_android)
        pal_swap_set(oControl.AlphaPalette, 1, 0)
}
draw_self()
shader_reset()
