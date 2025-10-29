action_inherited()
if oControl.mod_fusion
{
    sprite_index = sAutoad_Fusion
    frozenspr = sAutoadFrozen_Fusion
    empspr = sAutoadDisabled_Fusion
}
else
{
    sprite_index = sAutoad
    frozenspr = sAutoadFrozen
    empspr = 367
}
fangspr = sAutoadFang
clawspr = sAutoadClaw
if oControl.mod_fusion
{
    fangspr = sAutoadFang_Fusion
    clawspr = sAutoadClaw_Fusion
}
if frozen
{
    myspr = frozenspr
    fangspr = sAutoadFangFrozen
    clawspr = sAutoadClawFrozen
    if oControl.mod_fusion
    {
        fangspr = sAutoadFangFrozen_Fusion
        clawspr = sAutoadClawFrozen_Fusion
    }
}
else
{
    myspr = sprite_index
    fangspr = sAutoadFang
    clawspr = sAutoadClaw
    if oControl.mod_fusion
    {
        fangspr = sAutoadFang_Fusion
        clawspr = sAutoadClaw_Fusion
    }
}
if (!flashing)
{
    draw_sprite_ext(fangspr, -1, x, (y + fangy), image_xscale, 1, image_angle, -1, image_alpha)
    draw_sprite_ext(clawspr, -1, (x - clawx), (y + clawy), -1, 1, (360 - clawangle), -1, image_alpha)
    draw_sprite_ext(clawspr, -1, (x + clawx), (y + clawy), 1, 1, clawangle, -1, image_alpha)
    draw_sprite_ext(myspr, -1, x, y, image_xscale, 1, image_angle, -1, image_alpha)
    if (frozen > 0 && frozen < (freezetime * 0.2))
    {
        draw_set_blend_mode(bm_add)
        draw_sprite_ext(fangspr, -1, x, (y + fangy), image_xscale, 1, image_angle, -1, (1 - fxtimer * 0.25))
        draw_sprite_ext(clawspr, -1, (x - clawx), (y + clawy), -1, 1, (360 - clawangle), -1, (1 - fxtimer * 0.25))
        draw_sprite_ext(clawspr, -1, (x + clawx), (y + clawy), 1, 1, clawangle, -1, (1 - fxtimer * 0.25))
        draw_sprite_ext(myspr, -1, x, y, image_xscale, 1, image_angle, -1, (1 - fxtimer * 0.25))
        draw_set_blend_mode(bm_normal)
    }
}
else if flashing
{
    draw_sprite_ext(fangspr, -1, x, (y + fangy), image_xscale, 1, image_angle, make_color_rgb(80, 80, 80), image_alpha)
    draw_set_blend_mode(bm_add)
    repeat (3)
        draw_sprite_ext(fangspr, -1, x, (y + fangy), image_xscale, 1, image_angle, -1, (1 - fxtimer * 0.25))
    draw_set_blend_mode(bm_normal)
    draw_sprite_ext(clawspr, -1, (x - clawx), (y + clawy), -1, 1, (360 - clawangle), make_color_rgb(80, 80, 80), image_alpha)
    draw_set_blend_mode(bm_add)
    draw_sprite_ext(clawspr, -1, (x - clawx), (y + clawy), -1, 1, (360 - clawangle), -1, (1 - fxtimer * 0.25))
    draw_set_blend_mode(bm_normal)
    draw_sprite_ext(clawspr, -1, (x + clawx), (y + clawy), 1, 1, clawangle, make_color_rgb(80, 80, 80), image_alpha)
    draw_set_blend_mode(bm_add)
    draw_sprite_ext(clawspr, -1, (x + clawx), (y + clawy), 1, 1, clawangle, -1, (1 - fxtimer * 0.25))
    draw_set_blend_mode(bm_normal)
    draw_sprite_ext(myspr, -1, x, y, image_xscale, 1, image_angle, make_color_rgb(80, 80, 80), image_alpha)
    draw_set_blend_mode(bm_add)
    draw_sprite_ext(myspr, -1, x, y, image_xscale, 1, image_angle, -1, (1 - fxtimer * 0.25))
    draw_set_blend_mode(bm_normal)
}
