if flipx
    image_xscale = facing
else
    image_xscale = 1
if (frozen > 0)
{
    image_speed = 0
    if (sprite_index == sHornoadIdle || 2327)
    {
        frozenspr = sHornoadIdleFrozen
        if oControl.mod_fusion
            frozenspr = sHornoadIdleFrozen_Fusion
    }
    if (sprite_index == sHornoadShake || 2335)
    {
        frozenspr = sHornoadShakeFrozen
        if oControl.mod_fusion
            frozenspr = sHornoadShakeFrozen_Fusion
    }
    if (sprite_index == sHornoadTurn || 2313)
    {
        frozenspr = sHornoadTurnFrozen
        if oControl.mod_fusion
            frozenspr = sHornoadTurnFrozen_Fusion
    }
    if (sprite_index == sHornoadJump || 2274)
    {
        frozenspr = sHornoadJumpFrozen
        if oControl.mod_fusion
            frozenspr = sHornoadJumpFrozen_Fusion
    }
    if (sprite_index == sHornoadAttack || 2322)
    {
        frozenspr = 1754
        if oControl.mod_fusion
            frozenspr = 2321
    }
    myspr = frozenspr
}
else
    myspr = sprite_index
if (!flashing)
{
    draw_sprite_ext(myspr, -1, x, y, image_xscale, 1, image_angle, -1, image_alpha)
    if (frozen > 0 && frozen < (freezetime * 0.2))
    {
        draw_set_blend_mode(bm_add)
        draw_sprite_ext(myspr, -1, x, y, image_xscale, 1, image_angle, -1, (1 - fxtimer * 0.25))
        draw_set_blend_mode(bm_normal)
    }
}
if flashing
{
    draw_sprite_ext(myspr, -1, x, y, image_xscale, 1, image_angle, make_color_rgb(80, 80, 80), 1)
    draw_set_blend_mode(bm_add)
    repeat (3)
        draw_sprite_ext(myspr, -1, x, y, image_xscale, 1, image_angle, -1, (1 - fxtimer * 0.25))
    draw_set_blend_mode(bm_normal)
}
