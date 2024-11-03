if surface_exists(surf)
    draw_surface_part(surf, 0, 0, 130, (179 - currenty), (160 + (rectoffset * 4)), currenty)
if expanded
{
    draw_background(bg_Line130, 160, currenty)
    draw_background(bg_Line130, 160, 179)
    if scroll
    {
        if (currentline > 0)
            draw_sprite_ext(sLogScroll, 1, 285, (currenty + 4), 1, -1, 0, -1, 1)
        if (currentline < lines)
            draw_sprite(sLogScroll, 1, 285, 176)
    }
}
else
{
    draw_background(bg_Line130, 160, currenty)
    draw_background(bg_Line130, 160, 178)
    if expandable
        draw_sprite(sLogScroll, 2, 285, 174)
}
