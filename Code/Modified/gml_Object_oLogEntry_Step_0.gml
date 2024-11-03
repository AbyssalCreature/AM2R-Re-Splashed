if t_click
{
    t_x = mouse_x
    t_y = mouse_y
    if point_in_rectangle(t_x, t_y, tarea_x1, tarea_y1, tarea_x2, tarea_y2)
    {
        global.curropt = optionid
        with (oLogScreenControl)
        {
            if (expanded == 0)
            {
                expanded = 1
                event_user(2)
            }
        }
    }
}
