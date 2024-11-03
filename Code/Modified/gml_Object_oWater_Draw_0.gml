if ((view_yview[0] + view_hview[0]) >= (global.waterlevel + yoffset))
{
    i = 0
    draw_set_color(make_colour_rgb(6, 11, 81))
    draw_set_blend_mode(bm_add)
    draw_rectangle((view_xview[0] - (widescreen_space / 2)), (global.waterlevel + oWater.yoffset), ((view_xview[0] + 320) + (widescreen_space / 2)), (view_yview[0] + 250), false)
    repeat (((room_width / 32) + 1) + (4 * widescreen))
    {
        if ((i * 32) >= ((view_xview[0] - 33) - (widescreen_space / 2)) && (i * 32) < ((view_xview[0] + 360) + widescreen_space) && ((global.waterlevel + yoffset) + 224) > view_yview[0])
            draw_background_ext(bg, (((x + (i * 32)) + xoffset) - (widescreen_space / 2)), (global.waterlevel + yoffset), 1, 1, 0, -1, spr_alpha)
        i += 1
    }
    draw_set_blend_mode(bm_normal)
}
