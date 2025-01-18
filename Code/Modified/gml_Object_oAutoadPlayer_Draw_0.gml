fangy = (8 + clawoffset)
if (!flashing)
{
    draw_sprite_ext(sAutoadPFang, -1, x, (y + fangy), image_xscale, 1, image_angle, -1, image_alpha)
    draw_sprite_ext(sAutoadPClaw, -1, (x - clawx), (y + clawy), -1, 1, (360 - clawangle), -1, image_alpha)
    draw_sprite_ext(sAutoadPClaw, -1, (x + clawx), (y + clawy), 1, 1, clawangle, -1, image_alpha)
    draw_sprite_ext(sprite_index, -1, x, (y + yoff), image_xscale, 1, image_angle, -1, image_alpha)
}
if flashing
{
    draw_sprite_ext(sAutoadPFang, -1, x, (y + fangy), image_xscale, 1, image_angle, make_color_rgb(80, 80, 80), image_alpha)
    draw_sprite_ext(sAutoadPClaw, -1, (x - clawx), (y + clawy), -1, 1, (360 - clawangle), make_color_rgb(80, 80, 80), image_alpha)
    draw_sprite_ext(sAutoadPClaw, -1, (x + clawx), (y + clawy), 1, 1, clawangle, make_color_rgb(80, 80, 80), image_alpha)
    draw_sprite_ext(sprite_index, -1, x, (y + yoff), image_xscale, 1, image_angle, make_color_rgb(80, 80, 80), image_alpha)
    draw_set_blend_mode(bm_add)
    repeat (3)
        draw_sprite_ext(sAutoadPFang, -1, x, (y + fangy), image_xscale, 1, image_angle, -1, (1 - (fxtimer * 0.25)))
    draw_sprite_ext(sAutoadPClaw, -1, (x - clawx), (y + clawy), -1, 1, (360 - clawangle), -1, (1 - (fxtimer * 0.25)))
    draw_sprite_ext(sAutoadPClaw, -1, (x + clawx), (y + clawy), 1, 1, clawangle, -1, (1 - (fxtimer * 0.25)))
    draw_sprite_ext(sprite_index, -1, x, (y + yoff), image_xscale, 1, image_angle, -1, (1 - (fxtimer * 0.25)))
    draw_set_blend_mode(bm_normal)
}
if hasmissile
    draw_sprite(sSMissile, 0, (x + 2), ((y + 10) + clawoffset))
