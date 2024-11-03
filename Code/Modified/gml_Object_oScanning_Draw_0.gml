if global.ophudshowlogmsg
{
    draw_background_ext(bgNotification, (((view_xview[0] + xoffset) - 40) - (53 * oControl.widescreen)), ((view_yview[0] + yoffset) - 4), 1, 1, 0, -1, (image_alpha * 0.7))
    draw_sprite_ext(sprite_index, -1, ((view_xview[0] + xoffset) - (53 * oControl.widescreen)), (view_yview[0] + yoffset), 1, 1, 0, -1, image_alpha)
    draw_set_font(global.fontGUI2)
    draw_set_color(make_colour_rgb(224, 248, 208))
    draw_set_alpha(image_alpha)
    draw_text((((view_xview[0] + xoffset) + 8) - (53 * oControl.widescreen)), ((view_yview[0] + yoffset) - 5), text)
}
