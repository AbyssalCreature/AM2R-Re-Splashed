draw_sprite_ext(sprite_index, -1, ((view_xview[0] + 160) + offset), (view_yview[0] + 120), 1, 1, 0, -1, 1)
draw_background(bg_SubScrMenuEqu, ((view_xview[0] + 196) + offset), (view_yview[0] + 103))
draw_sprite_ext(sprite_index, -1, ((view_xview[0] + 160) - offset), (view_yview[0] + 120), 1, 1, 180, -1, 1)
draw_background(bg_SubScrMenuLog, ((view_xview[0] + 90) - offset), (view_yview[0] + 103))
draw_sprite_ext(sprite_index, -1, (view_xview[0] + 160), ((view_yview[0] + 120) - offset), 1, 1, 90, -1, 1)
draw_background(bg_SubScrMenuMap, (view_xview[0] + 143), ((view_yview[0] + 50) - offset))
draw_sprite_ext(sprite_index, -1, (view_xview[0] + 160), ((view_yview[0] + 120) + offset), 1, 1, 270, -1, 1)
draw_background(bg_SubScrMenuOpt, (view_xview[0] + 143), ((view_yview[0] + 156) + offset))
if oControl.widescreen
{
    draw_set_alpha(1)
    draw_set_color(c_black)
    draw_rectangle(((view_xview[0] + 320) + offset), view_yview[0], ((view_xview[0] + 320) + (oControl.widescreen_space / 2)), (view_yview[0] + 240), false)
    draw_rectangle((view_xview[0] - (oControl.widescreen_space / 2)), view_yview[0], ((view_xview[0] + (oControl.widescreen_space / 2)) - offset), (view_yview[0] + 240), false)
    draw_set_color(c_white)
}
