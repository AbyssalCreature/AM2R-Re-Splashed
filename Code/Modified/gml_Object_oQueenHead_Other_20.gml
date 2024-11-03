var ja_off;
ja_off = 0
if jaws_shake
    ja_off = random_range(-1, 1)
if surface_exists(surf)
{
    surface_set_target(surf)
    draw_clear_alpha(c_blue, 0)
    if (head_frame == 0)
    {
        draw_sprite_ext(sQueenHeadBack, head_damage, surf_x, surf_y, 1, 1, image_angle, -1, 1)
        draw_sprite_ext(sQueenHeadDown, head_damage, surf_x, surf_y, 1, 1, ((image_angle + ljaw_angle) + ja_off), -1, 1)
        draw_sprite_ext(sQueenHeadUp, head_damage, surf_x, surf_y, 1, 1, ((image_angle + ujaw_angle) + ja_off), -1, 1)
        mask_index = sQueenHeadBack
        if (eyes_frame >= 0)
            draw_sprite_ext(sQueenEyes, eyes_frame, surf_x, surf_y, 1, 1, image_angle, -1, 1)
    }
    if (head_frame == 1)
    {
        draw_sprite_ext(sQueenHead1, head_damage, surf_x, surf_y, 1, 1, image_angle, -1, 1)
        mask_index = sQueenHead1
    }
    if (head_frame == 2)
    {
        draw_sprite_ext(sQueenHead2, head_damage, surf_x, surf_y, 1, 1, image_angle, -1, 1)
        mask_index = sQueenHead2
    }
    surface_reset_target()
}
