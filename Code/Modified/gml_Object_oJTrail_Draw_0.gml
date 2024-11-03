i = 0
repeat images
{
    draw_character_from_surface(sx[i], sy[i], image_blend, (((1 - (i * 0.11)) * 0.4) * image_alpha))
    i += 1
}
