if (fadedone < 1 && room != initroom)
{
    if (global.transitiontype < 2)
    {
        draw_set_alpha((1 - fadedone))
        draw_set_color(c_black)
        draw_rectangle(((-widescreen_space) / 2), 0, (room_width + (widescreen_space / 2)), room_height, false)
        if (instance_exists(oCharacter) && global.transitiontype == 1)
        {
            if (oCharacter.juststarted == 0)
            {
                draw_set_blend_mode(bm_add)
                draw_character(oCharacter.sprite_index, oCharacter.x, oCharacter.y, oCharacter.aspr1, oCharacter.asprx, oCharacter.aspry, oCharacter.aspr2, oCharacter.aspr2x, oCharacter.aspr2y, oCharacter.aspr2a, oCharacter.mirror, oCharacter.image_blend, (1 - fadedone), oCharacter.armmsl, oCharacter.image_index)
                draw_set_blend_mode(bm_normal)
            }
        }
        fadedone += 0.1
    }
}
draw_set_alpha(1)
if showfps
{
    draw_set_font(global.fontMenuSmall)
    draw_set_color(c_white)
}
draw_set_font(global.fontMenuTiny)
draw_set_color(c_white)
draw_set_alpha(0.6)
draw_set_halign(fa_right)
draw_set_alpha(1)
draw_set_halign(fa_left)
