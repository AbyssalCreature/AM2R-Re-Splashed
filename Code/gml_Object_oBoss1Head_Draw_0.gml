if (oControl.mod_fusion == 1)
    pal_swap_set(oControl.GuardianPalette, 1, 0)
action_inherited()
if (state != 0 && state != 100)
{
    draw_sprite(sBoss1Wheel, wheel.image_index, (x - 26), (y + 8))
    draw_sprite(sBoss1Wheel, wheel.image_index, (x + 26), (y + 8))
}
shader_reset()
