if surface_exists(surf)
{
    surface_set_target(surf)
    draw_clear_alpha(c_black, 0)
    if (blur == 0)
    {
        if (bleg_spr != -4)
            draw_sprite_ext(bleg_spr, bleg_frame, body_x, surf_y, facing, 1, 0, -1, 1)
        if (barm_spr != -4)
            draw_sprite_ext(barm_spr, barm_frame, barm_x, barm_y, facing, 1, 0, -1, 1)
        if (body_spr != -4)
            draw_sprite_ext(body_spr, body_frame, body_x, body_y, facing, 1, body_angle, -1, 1)
        if (head_spr != -4)
            draw_sprite_ext(head_spr, head_frame, head_x, head_y, facing, 1, (body_angle + head_angle), -1, 1)
        if (farm_spr != -4)
            draw_sprite_ext(farm_spr, farm_frame, farm_x, farm_y, facing, 1, 0, -1, 1)
        if (fleg_spr != -4)
            draw_sprite_ext(fleg_spr, fleg_frame, body_x, surf_y, facing, 1, 0, -1, 1)
    }
    else
        draw_sprite_ext(sMZetaBlur, -1, body_x, body_y, facing, 1, 0, -1, 1)
    surface_reset_target()
}
