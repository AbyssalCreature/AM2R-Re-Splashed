switch mysprite
{
    case 1951:
        if (oControl.mod_fusion == 1 && global.shaders_compiled && os_type != os_android)
        {
            if (oControl.ArachnusPalette != -1)
                pal_swap_set(oControl.ArachnusPalette, 1, 0)
        }
        break
    case 1961:
        if (oControl.mod_fusion == 1 && global.shaders_compiled && os_type != os_android)
        {
            if (oControl.TorizoPalette != -1)
                pal_swap_set(oControl.TorizoPalette, 1, 0)
        }
        break
    case 1957:
        if (oControl.mod_fusion == 1 && global.shaders_compiled && os_type != os_android)
        {
            if (oControl.ErisPalette != -1)
                pal_swap_set(oControl.ErisPalette, 1, 0)
        }
        break
    case 1950:
        if (oControl.mod_fusion == 1 && global.shaders_compiled && os_type != os_android)
        {
            if (oControl.GenesisPalette != -1)
                pal_swap_set(oControl.GenesisPalette, 1, 0)
        }
        break
    default:

}

if (state == 6)
{
    with (oCharacter)
    {
        if (global.screwattack == 1 && state == JUMPING && vjump == 0 && walljumping == 0 && (inwater == 0 || global.currentsuit >= 2))
        {
            draw_set_blend_mode(bm_add)
            draw_sprite_ext(sScrewAttack, other.screwattackpickupframe, x, (y - 15), 1, 1, other.screwattackpickupangle, c_white, 1)
            draw_set_blend_mode(bm_normal)
        }
    }
}
if (!instance_exists(oCoreXShell))
{
    if flashing
    {
        draw_sprite_ext(sprite_index, -1, x, y, image_xscale, image_yscale, image_angle, make_color_rgb(80, 80, 80), 1)
        draw_set_blend_mode(bm_add)
        repeat (3)
            draw_sprite_ext(sprite_index, -1, x, y, image_xscale, image_yscale, image_angle, -1, (1 - (fxtimer * 0.1)))
        draw_set_blend_mode(bm_normal)
    }
    else
        draw_self()
    if ((!instance_exists(oCoreXShell)) && (state == 0 || state == 1))
    {
        draw_sprite_ext(sCoreXAura, image_index, x, y, 1, 1, 0, c_white, drawaura)
        drawaura = (!drawaura)
    }
}
else if (shell.state != 0)
    draw_self()
shader_reset()
