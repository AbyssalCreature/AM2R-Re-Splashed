draw_sprite_ext(sTankBottom, bg_frame, (x + offx), (y + offy), 1, 1, image_angle, -1, 1)
if (bg_frame == 0)
{
    draw_sprite_ext(sTankTrackB, -1, ((x + offx) + tr1x), ((y + offy) + tr1y), 1, 1, image_angle, -1, 1)
    draw_sprite_ext(sTankTrackF, -1, ((x + offx) + tr2x), ((y + offy) + tr2y), 1, 1, image_angle, -1, 1)
}
if flashing
{
    draw_set_blend_mode(bm_add)
    repeat (2)
    {
        draw_sprite_ext(sTankBottom, bg_frame, (x + offx), (y + offy), 1, 1, image_angle, -1, (flashing / 5))
        if (bg_frame == 0)
        {
            draw_sprite_ext(sTankTrackB, -1, ((x + offx) + tr1x), ((y + offy) + tr1y), 1, 1, image_angle, -1, (flashing / 5))
            draw_sprite_ext(sTankTrackF, -1, ((x + offx) + tr2x), ((y + offy) + tr2y), 1, 1, image_angle, -1, (flashing / 5))
        }
    }
    draw_set_blend_mode(bm_normal)
}
