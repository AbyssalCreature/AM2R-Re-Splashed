draw_set_color(c_black)
draw_set_alpha(bg1alpha)
draw_rectangle((view_xview[0] - (oControl.widescreen_space / 2)), view_yview[0], ((view_xview[0] + 325) + (oControl.widescreen_space / 2)), (view_yview[0] + 245), false)
if (state > 0 && state < 4)
{
    with (oEnemy)
    {
        if point_in_rectangle(x, y, (view_xview[0] - 80), (view_yview[0] - 60), ((view_xview[0] + view_wview[0]) + 80), ((view_yview[0] + view_hview[0]) + 60))
            instance_destroy()
    }
}
if (state > 0 && state < 4)
    draw_sprite(sprite_index, 1, x, y)
if (state > 0 && state < 4)
{
    if (yoffset > 0)
    {
        if (global.currentsuit == 0)
            draw_sprite_part(sprite_index, 0, 0, 0, 24, yoffset, (x - 12), (y - 40))
        else
            draw_sprite_part(sprite_index, 1, 0, 0, 24, yoffset, (x - 12), (y - 40))
    }
}
if drawenergy
{
    draw_set_blend_mode(bm_add)
    draw_sprite(sSuitChangeFX1, eframe, x, ((y - 40) + yoffset))
    draw_set_blend_mode(bm_normal)
}
draw_set_color(c_black)
draw_set_alpha(bg2alpha)
draw_rectangle((view_xview[0] - (oControl.widescreen_space / 2)), view_yview[0], ((view_xview[0] + 325) + (oControl.widescreen_space / 2)), (view_yview[0] + 245), false)
draw_set_color(c_white)
draw_set_alpha(bg3alpha)
draw_rectangle((x - xoffset), view_yview[0], (x + xoffset), (view_yview[0] + 245), false)
