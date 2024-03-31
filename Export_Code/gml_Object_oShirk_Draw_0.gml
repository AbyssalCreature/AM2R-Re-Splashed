image_xscale = facing
if (!flashing)
{
    if (turning == 0)
    {
        draw_sprite_ext(sprite_index, -1, x, y, image_xscale, 1, image_angle, -1, image_alpha)
        if (myhealth > shell1hp)
            draw_sprite_ext(sShirkArmor1, -1, x, y, image_xscale, 1, image_angle, -1, image_alpha)
        if (myhealth > shell2hp)
            draw_sprite_ext(sShirkArmor2, -1, x, y, image_xscale, 1, image_angle, -1, image_alpha)
    }
    if (turning > 0)
    {
        draw_sprite_ext(sShirkTurn, -1, x, y, image_xscale, 1, image_angle, -1, image_alpha)
        if (myhealth > shell1hp)
            draw_sprite_ext(sShirkTurnArmor1, -1, x, y, image_xscale, 1, image_angle, -1, image_alpha)
        if (myhealth > shell2hp)
            draw_sprite_ext(sShirkTurnArmor2, -1, x, y, image_xscale, 1, image_angle, -1, image_alpha)
    }
}
if flashing
{
    if (turning == 0)
    {
        draw_sprite_ext(sprite_index, -1, x, y, image_xscale, 1, image_angle, make_color_rgb(80, 80, 80), 1)
        if (myhealth > shell1hp)
            draw_sprite_ext(sShirkArmor1, -1, x, y, image_xscale, 1, image_angle, make_color_rgb(80, 80, 80), 1)
        if (myhealth > shell2hp)
            draw_sprite_ext(sShirkArmor2, -1, x, y, image_xscale, 1, image_angle, make_color_rgb(80, 80, 80), 1)
        draw_set_blend_mode(bm_add)
        repeat (3)
        {
            draw_sprite_ext(sprite_index, -1, x, y, image_xscale, 1, image_angle, -1, (1 - (fxtimer * 0.25)))
            if (myhealth > shell1hp)
                draw_sprite_ext(sShirkArmor1, -1, x, y, image_xscale, 1, image_angle, -1, (1 - (fxtimer * 0.25)))
            if (myhealth > shell2hp)
                draw_sprite_ext(sShirkArmor2, -1, x, y, image_xscale, 1, image_angle, -1, (1 - (fxtimer * 0.25)))
        }
        draw_set_blend_mode(bm_normal)
    }
    if (turning > 0)
    {
        draw_sprite_ext(sShirkTurn, -1, x, y, image_xscale, 1, image_angle, make_color_rgb(80, 80, 80), 1)
        if (myhealth > shell1hp)
            draw_sprite_ext(sShirkTurnArmor1, -1, x, y, image_xscale, 1, image_angle, make_color_rgb(80, 80, 80), 1)
        if (myhealth > shell2hp)
            draw_sprite_ext(sShirkTurnArmor2, -1, x, y, image_xscale, 1, image_angle, make_color_rgb(80, 80, 80), 1)
        draw_set_blend_mode(bm_add)
        repeat (3)
        {
            draw_sprite_ext(sprite_index, -1, x, y, image_xscale, 1, image_angle, -1, (1 - (fxtimer * 0.25)))
            if (myhealth > shell1hp)
                draw_sprite_ext(sShirkTurnArmor1, -1, x, y, image_xscale, 1, image_angle, -1, (1 - (fxtimer * 0.25)))
            if (myhealth > shell2hp)
                draw_sprite_ext(sShirkTurnArmor2, -1, x, y, image_xscale, 1, image_angle, -1, (1 - (fxtimer * 0.25)))
        }
        draw_set_blend_mode(bm_normal)
    }
}
