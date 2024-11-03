draw_self()
if (open == 0 && showlock == 1)
{
    draw_sprite_ext(lockspr, lock, x, y, image_xscale, 1, 0, -1, 1)
    if highlight
        draw_sprite_ext(lockspr, 4, x, y, image_xscale, 1, 0, -1, hlalpha)
}
