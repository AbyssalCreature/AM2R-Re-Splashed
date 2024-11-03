if frozen
    myspr = frozenspr
else
    myspr = sprite_index
if (!flashing)
{
    draw_sprite_ext(sAutoadFang, -1, x, (y + fangy), image_xscale, 1, image_angle, -1, image_alpha)
    draw_sprite_ext(sAutoadClaw, -1, (x - clawx), (y + clawy), -1, 1, (360 - clawangle), -1, image_alpha)
    draw_sprite_ext(sAutoadClaw, -1, (x + clawx), (y + clawy), 1, 1, clawangle, -1, image_alpha)
    draw_sprite_ext(myspr, -1, x, y, image_xscale, 1, image_angle, -1, image_alpha)
}
else if flashing
{
    draw_sprite_ext(sAutoadFang, -1, x, (y + fangy), image_xscale, 1, image_angle, make_color_rgb(80, 80, 80), image_alpha)
    draw_set_blend_mode(bm_add)
    repeat (3)
        draw_sprite_ext(sAutoadFang, -1, x, (y + fangy), image_xscale, 1, image_angle, -1, (1 - (fxtimer * 0.25)))
    draw_set_blend_mode(bm_normal)
    draw_sprite_ext(sAutoadClaw, -1, (x - clawx), (y + clawy), -1, 1, (360 - clawangle), make_color_rgb(80, 80, 80), image_alpha)
    draw_set_blend_mode(bm_add)
    draw_sprite_ext(sAutoadClaw, -1, (x - clawx), (y + clawy), -1, 1, (360 - clawangle), -1, (1 - (fxtimer * 0.25)))
    draw_set_blend_mode(bm_normal)
    draw_sprite_ext(sAutoadClaw, -1, (x + clawx), (y + clawy), 1, 1, clawangle, make_color_rgb(80, 80, 80), image_alpha)
    draw_set_blend_mode(bm_add)
    draw_sprite_ext(sAutoadClaw, -1, (x + clawx), (y + clawy), 1, 1, clawangle, -1, (1 - (fxtimer * 0.25)))
    draw_set_blend_mode(bm_normal)
    draw_sprite_ext(myspr, -1, x, y, image_xscale, 1, image_angle, make_color_rgb(80, 80, 80), image_alpha)
    draw_set_blend_mode(bm_add)
    draw_sprite_ext(myspr, -1, x, y, image_xscale, 1, image_angle, -1, (1 - (fxtimer * 0.25)))
    draw_set_blend_mode(bm_normal)
}
