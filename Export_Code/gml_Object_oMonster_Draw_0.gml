if (state < 5)
{
    draw_sprite_ext(sMonsterFangs, fangs_frame, fangs_x, fangs_y, scale, scale, image_angle, image_blend, image_alpha)
    draw_sprite_ext(sMonsterInside, iframe, x, y, scale, scale, image_angle, image_blend, image_alpha)
    draw_sprite_ext(sMonsterEyes, iframe, x, (y - 4), eyes_scale, eyes_scale, image_angle, image_blend, image_alpha)
    draw_set_blend_mode(bm_add)
    draw_sprite_ext(sMonsterShell2, -1, x, y, scale, scale, image_angle, image_blend, (image_alpha * 0.5))
    draw_set_blend_mode(bm_normal)
    draw_sprite_ext(sMonsterShell1, shell_frame, x, y, scale, scale, image_angle, image_blend, image_alpha)
}
else
{
    if (!flashing)
    {
        draw_sprite_ext(sMonsterFangsFrozen, fangs_frame, fangs_x, fangs_y, scale, scale, image_angle, image_blend, image_alpha)
        draw_sprite_ext(sMonsterInsideFrozen, -1, x, y, scale, scale, image_angle, image_blend, image_alpha)
        draw_sprite_ext(sMonsterEyesFrozen, -1, x, (y - 4), eyes_scale, eyes_scale, image_angle, image_blend, image_alpha)
        draw_sprite_ext(sMonsterShell1Frozen, shell_frame, x, y, scale, scale, image_angle, image_blend, image_alpha)
    }
    else
    {
        draw_sprite_ext(sMonsterFangsFrozen, fangs_frame, fangs_x, fangs_y, scale, scale, image_angle, make_color_rgb((255 - (fxtimer * 63)), (255 - (fxtimer * 63)), (255 - (fxtimer * 63))), 1)
        draw_sprite_ext(sMonsterInsideFrozen, -1, x, y, scale, scale, image_angle, make_color_rgb((255 - (fxtimer * 63)), (255 - (fxtimer * 63)), (255 - (fxtimer * 63))), 1)
        draw_sprite_ext(sMonsterEyesFrozen, -1, x, (y - 4), eyes_scale, eyes_scale, image_angle, make_color_rgb((255 - (fxtimer * 63)), (255 - (fxtimer * 63)), (255 - (fxtimer * 63))), 1)
        draw_sprite_ext(sMonsterShell1Frozen, shell_frame, x, y, scale, scale, image_angle, make_color_rgb((255 - (fxtimer * 63)), (255 - (fxtimer * 63)), (255 - (fxtimer * 63))), 1)
        draw_set_blend_mode(bm_add)
        repeat (2)
        {
            draw_sprite_ext(sMonsterFangsFrozen, fangs_frame, fangs_x, fangs_y, scale, scale, image_angle, -1, (1 - (fxtimer * 0.25)))
            draw_sprite_ext(sMonsterInsideFrozen, -1, x, y, scale, scale, image_angle, -1, (1 - (fxtimer * 0.25)))
            draw_sprite_ext(sMonsterEyesFrozen, -1, x, (y - 4), eyes_scale, eyes_scale, image_angle, -1, (1 - (fxtimer * 0.25)))
            draw_sprite_ext(sMonsterShell1Frozen, shell_frame, x, y, scale, scale, image_angle, -1, (1 - (fxtimer * 0.25)))
        }
        draw_set_blend_mode(bm_normal)
    }
    if (state == 5 && statetime > (freezetime - 30))
    {
        draw_sprite_ext(sMonsterFangs, fangs_frame, fangs_x, fangs_y, scale, scale, image_angle, -1, (1 - (fxtimer * 0.3)))
        draw_sprite_ext(sMonsterInside, -1, x, y, scale, scale, image_angle, -1, (1 - (fxtimer * 0.3)))
        draw_sprite_ext(sMonsterEyes, -1, x, (y - 4), eyes_scale, eyes_scale, image_angle, -1, (1 - (fxtimer * 0.3)))
        draw_sprite_ext(sMonsterShell1, shell_frame, x, y, scale, scale, image_angle, -1, (1 - (fxtimer * 0.3)))
    }
}
