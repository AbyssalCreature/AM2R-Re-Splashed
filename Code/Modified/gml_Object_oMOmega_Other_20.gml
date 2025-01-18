var bl_xoff, ba_xoff, bo_xoff, he_xoff, fa_xoff, fl_xoff, bl_yoff, ba_yoff, bo_yoff, he_yoff, fa_yoff, fl_yoff;
if surface_exists(surf)
{
    surface_set_target(surf)
    draw_clear_alpha(c_blue, 0)
    bl_xoff = 0
    ba_xoff = 0
    bo_xoff = 0
    he_xoff = 0
    fa_xoff = 0
    fl_xoff = 0
    bl_yoff = 0
    ba_yoff = 0
    bo_yoff = 0
    he_yoff = 0
    fa_yoff = 0
    fl_yoff = 0
    if (bleg_shake > 0)
    {
        bl_xoff = choose(-1, 0, 1)
        bl_yoff = choose(-1, 0, 1)
    }
    if (barm_shake > 0)
    {
        ba_xoff = choose(-1, 0, 1)
        ba_yoff = choose(-1, 0, 1)
    }
    if (body_shake > 0)
    {
        bo_xoff = choose(-1, 0, 1)
        bo_yoff = choose(-1, 0, 1)
    }
    if (head_shake > 0)
    {
        he_xoff = choose(-1, 0, 1)
        he_yoff = choose(-1, 0, 1)
    }
    if (farm_shake > 0)
    {
        fa_xoff = choose(-1, 0, 1)
        fa_yoff = choose(-1, 0, 1)
    }
    if (fleg_shake > 0)
    {
        fl_xoff = choose(-1, 0, 1)
        fl_yoff = choose(-1, 0, 1)
    }
    if (bleg_spr != -4)
        draw_sprite_ext(bleg_spr, bleg_frame, (body_x + bl_xoff), (surf_y + bl_yoff), facing, 1, 0, -1, 1)
    if (barm_spr != -4)
        draw_sprite_ext(barm_spr, barm_frame, (barm_x + ba_xoff), (barm_y + ba_yoff), facing, 1, 0, -1, 1)
    if (body_spr != -4)
        draw_sprite_ext(body_spr, body_frame, (body_x + bo_xoff), (body_y + bo_yoff), facing, 1, body_angle, -1, 1)
    if (head_spr != -4 && (roar_frame == 0 || state == 2))
        draw_sprite_ext(head_spr, head_frame, (head_x + he_xoff), (head_y + he_yoff), facing, 1, (body_angle + head_angle), -1, 1)
    else if (head_spr != -4 && roar_frame > 0)
        draw_sprite_ext(omega_head_roar, roar_frame, (head_x + he_xoff), (head_y + he_yoff), facing, 1, (body_angle + head_angle), -1, 1)
    if (farm_spr != -4)
        draw_sprite_ext(farm_spr, farm_frame, (farm_x + fa_xoff), (farm_y + fa_yoff), facing, 1, 0, -1, 1)
    if (fleg_spr != -4)
        draw_sprite_ext(fleg_spr, fleg_frame, (body_x + fl_xoff), (surf_y + fl_yoff), facing, 1, 0, -1, 1)
    if (eyes_frame >= 0 && head_spr == 625 && head_frame == 0)
        draw_sprite_ext(sMOmega_Eyes, eyes_frame, (head_x + he_xoff), (head_y + he_yoff), facing, 1, (body_angle + head_angle), -1, 1)
    surface_reset_target()
}
