if (tileset == 0)
{
    draw_background_part(tlRock3A, 64, 208, 16, 32, (x - 16), (y - 16))
    draw_background_part(tlRock3A, 112, 176, 16, 16, x, y)
    draw_background_part(tlRock3A, 32, 0, 32, 64, (x - 16), (y + 16))
    draw_background_part(tlRock3A, 112, 192, 16, 16, x, (y + 80))
    draw_background_part_ext(tlRock3A, 96, 208, 32, 16, x, (y - 16), 20, 1, -1, 1)
    draw_background_part_ext(tlRock3A, 96, 208, 32, 16, (x + 16), y, 20, 6, -1, 1)
}
