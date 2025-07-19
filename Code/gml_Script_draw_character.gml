if (oControl.preferredcolor == 17)
{
    if (global.shaders_compiled && (!oControl.msr_fusionsuit))
    {
        if oControl.mod_fusion
        {
            if (global.currentsuit == 0)
                pal_swap_set(1522, 1, 0)
            else if (global.currentsuit == 1)
                pal_swap_set(1523, 1, 0)
            else if (global.currentsuit == 2)
                pal_swap_set(1524, 1, 0)
        }
        else if (global.currentsuit == 0 && os_type != os_android && oControl.PowerPalette != -1)
            pal_swap_set(oControl.PowerPalette, 1, 0)
        else if (global.currentsuit == 1 && os_type != os_android && oControl.VariaPalette != -1)
            pal_swap_set(oControl.VariaPalette, 1, 0)
        else if (global.currentsuit == 2 && os_type != os_android && oControl.GravityPalette != -1)
            pal_swap_set(oControl.GravityPalette, 1, 0)
    }
    else if (global.shaders_compiled && oControl.msr_fusionsuit)
    {
        if oControl.mod_fusion
        {
            if (global.currentsuit == 0 && os_type != os_android && oControl.PowerPalette2f != -1)
                pal_swap_set(oControl.PowerPalette2f, 1, 0)
            else if (global.currentsuit == 1 && os_type != os_android && oControl.VariaPalette2f != -1)
                pal_swap_set(oControl.VariaPalette2f, 1, 0)
            else if (global.currentsuit == 2 && os_type != os_android && oControl.GravityPalette2f != -1)
                pal_swap_set(oControl.GravityPalette2f, 1, 0)
        }
        else if (global.currentsuit == 0 && os_type != os_android && oControl.PowerPalette2 != -1)
            pal_swap_set(oControl.PowerPalette2, 1, 0)
        else if (global.currentsuit == 1 && os_type != os_android && oControl.VariaPalette2 != -1)
            pal_swap_set(oControl.VariaPalette2, 1, 0)
        else if (global.currentsuit == 2 && os_type != os_android && oControl.GravityPalette2 != -1)
            pal_swap_set(oControl.GravityPalette2, 1, 0)
    }
}
else if (global.shaders_compiled && oControl.preferredcolor != 17)
{
    if oControl.mod_fusion
        pal_swap_set(oControl.MultitroidPaletteFusion, oControl.preferredcolor, 0)
    else
        pal_swap_set(oControl.MultitroidPalette, oControl.preferredcolor, 0)
}
draw_sprite_ext(argument0, argument14, argument1, argument2, argument10, 1, 0, argument11, argument12)
draw_sprite_ext(argument3, argument14, (argument1 + argument4), (argument2 + argument5), argument10, 1, 0, argument11, argument12)
if (argument13 == 1)
    draw_sprite_ext(argument6, argument14, (argument1 + argument7), (argument2 + argument8), argument10, 1, argument9, argument11, argument12)
shader_reset()
