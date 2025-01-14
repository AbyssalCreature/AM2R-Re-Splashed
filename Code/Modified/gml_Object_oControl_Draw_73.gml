if (widescreen && (room == rm_options || room == rm_controller))
{
    draw_rectangle_colour(0, 0, (-((ceil((widescreen_space / 2)) + 1))), room_height, c_black, c_black, c_black, c_black, 0)
    draw_rectangle_colour(room_width, 0, (room_width + (ceil((widescreen_space / 2)) + 1)), room_height, c_black, c_black, c_black, c_black, 0)
}
if ((!instance_exists(oClient)) && (room == titleroom || room == rm_options) && (!global.TryConnect))
{
    draw_sprite_ext(sPingStrength, 3, (view_xview[0] - (oControl.widescreen_space / 2)), (view_yview[0] + 224), 1, 1, 0, c_white, 1)
    draw_set_font(global.fontMenuSmall)
    draw_cool_text(((view_xview[0] + 18) - (oControl.widescreen_space / 2)), (view_yview[0] + 227), "Offline", c_black, c_white, c_gray, 1)
}
if global.TryConnect
{
    draw_sprite_ext(sPingStrength, 3, (view_xview[0] - (oControl.widescreen_space / 2)), (view_yview[0] + 224), 1, 1, 0, c_white, 1)
    draw_set_font(global.fontMenuSmall)
    draw_cool_text(((view_xview[0] + 18) - (oControl.widescreen_space / 2)), (view_yview[0] + 227), "Connecting, Please Wait...", c_black, c_white, c_gray, 1)
}
if instance_exists(oClient)
{
    if (global.ping >= 1)
        global.pingRange = 0
    if (global.ping >= 160)
        global.pingRange = 1
    if (global.ping >= 320)
        global.pingRange = 2
    if (global.ping >= 500)
        global.pingRange = 3
    if (global.ping == 0)
        global.pingRange = 3
    draw_sprite_ext(sPingStrength, global.pingRange, (view_xview[0] - (oControl.widescreen_space / 2)), (view_yview[0] + 224), 1, 1, 0, c_white, 1)
    draw_set_font(global.fontMenuSmall)
    draw_cool_text(((view_xview[0] + 18) - (oControl.widescreen_space / 2)), (view_yview[0] + 227), string(global.ping), c_black, c_white, c_gray, 1)
}
