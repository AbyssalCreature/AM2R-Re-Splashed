if (widescreen && (room == rm_options || room == rm_controller))
{
    draw_rectangle_colour(0, 0, (-((ceil((widescreen_space / 2)) + 1))), room_height, c_black, c_black, c_black, c_black, 0)
    draw_rectangle_colour(room_width, 0, (room_width + (ceil((widescreen_space / 2)) + 1)), room_height, c_black, c_black, c_black, c_black, 0)
}
