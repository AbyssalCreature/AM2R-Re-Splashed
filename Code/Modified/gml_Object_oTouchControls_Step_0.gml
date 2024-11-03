var tx, ty;
if (global.joydetected == 1 && global.ingame)
    exit
for (i = 0; i < 5; i += 1)
{
    if device_mouse_check_button(i, mb_left)
    {
        alpha = 0.5
        alarm[0] = 390
    }
}
joyx = 0
joyy = 0
stick_x[0] = gui_x[0]
stick_y[0] = gui_y[0]
if os_is_paused()
    mouse_clear(mb_any)
if (st_pressed[0] == -1)
{
    i = 0
    while (i < 5)
    {
        if device_mouse_check_button(i, mb_left)
        {
            tx = scr_mouse_gui_x(device_mouse_raw_x(i))
            ty = scr_mouse_gui_y(device_mouse_raw_y(i))
            if (point_distance(tx, ty, gui_x[0], gui_y[0]) < st_radius)
            {
                if (st_pressed[1] != i)
                {
                    st_pressed[0] = i
                    break
                }
                else
                {
                    i += 1
                    continue
                }
            }
            else
            {
                i += 1
                continue
            }
        }
        else
        {
            i += 1
            continue
        }
    }
}
if device_mouse_check_button(st_pressed[0], mb_left)
{
    mx = scr_mouse_gui_x(device_mouse_raw_x(st_pressed[0]))
    my = scr_mouse_gui_y(device_mouse_raw_y(st_pressed[0]))
    vdist = min(st_radius, point_distance(mx, my, gui_x[0], gui_y[0]))
    rdist = (vdist / st_radius)
    vdir = point_direction(gui_x[0], gui_y[0], mx, my)
    stick_x[0] = (gui_x[0] + lengthdir_x(vdist, vdir))
    stick_y[0] = (gui_y[0] + lengthdir_y(vdist, vdir))
    joyx = lengthdir_x(rdist, vdir)
    joyy = lengthdir_y(rdist, vdir)
}
else
    st_pressed[0] = -1
if (jump_pressed[0] == -1)
{
    i = 0
    while (i < 5)
    {
        if device_mouse_check_button(i, mb_left)
        {
            tx = scr_mouse_gui_x(device_mouse_raw_x(i))
            ty = scr_mouse_gui_y(device_mouse_raw_y(i))
            if point_in_rectangle(tx, ty, btn_jump[0], btn_jump[1], btn_jump[2], btn_jump[3])
            {
                if (jump_pressed[1] != i)
                {
                    jump_pressed[0] = i
                    break
                }
                else
                {
                    i += 1
                    continue
                }
            }
            else
            {
                i += 1
                continue
            }
        }
        else
        {
            i += 1
            continue
        }
    }
}
else if device_mouse_check_button(jump_pressed[0], mb_left)
{
    tx = scr_mouse_gui_x(device_mouse_raw_x(jump_pressed[0]))
    ty = scr_mouse_gui_y(device_mouse_raw_y(jump_pressed[0]))
    if (!(point_in_rectangle(tx, ty, btn_jump[0], btn_jump[1], btn_jump[2], btn_jump[3])))
        jump_pressed[0] = -1
}
else
    jump_pressed[0] = -1
if (fire_pressed[0] == -1)
{
    i = 0
    while (i < 5)
    {
        if device_mouse_check_button(i, mb_left)
        {
            tx = scr_mouse_gui_x(device_mouse_raw_x(i))
            ty = scr_mouse_gui_y(device_mouse_raw_y(i))
            if point_in_rectangle(tx, ty, btn_fire[0], btn_fire[1], btn_fire[2], btn_fire[3])
            {
                if (fire_pressed[1] != i)
                {
                    fire_pressed[0] = i
                    break
                }
                else
                {
                    i += 1
                    continue
                }
            }
            else
            {
                i += 1
                continue
            }
        }
        else
        {
            i += 1
            continue
        }
    }
}
else if device_mouse_check_button(fire_pressed[0], mb_left)
{
    tx = scr_mouse_gui_x(device_mouse_raw_x(fire_pressed[0]))
    ty = scr_mouse_gui_y(device_mouse_raw_y(fire_pressed[0]))
    if (!(point_in_rectangle(tx, ty, btn_fire[0], btn_fire[1], btn_fire[2], btn_fire[3])))
        fire_pressed[0] = -1
}
else
    fire_pressed[0] = -1
if (missile_pressed[0] == -1)
{
    i = 0
    while (i < 5)
    {
        if device_mouse_check_button(i, mb_left)
        {
            tx = scr_mouse_gui_x(device_mouse_raw_x(i))
            ty = scr_mouse_gui_y(device_mouse_raw_y(i))
            if point_in_rectangle(tx, ty, btn_missile[0], btn_missile[1], btn_missile[2], btn_missile[3])
            {
                if (missile_pressed[1] != i)
                {
                    missile_pressed[0] = i
                    break
                }
                else
                {
                    i += 1
                    continue
                }
            }
            else
            {
                i += 1
                continue
            }
        }
        else
        {
            i += 1
            continue
        }
    }
}
else if device_mouse_check_button(missile_pressed[0], mb_left)
{
    tx = scr_mouse_gui_x(device_mouse_raw_x(missile_pressed[0]))
    ty = scr_mouse_gui_y(device_mouse_raw_y(missile_pressed[0]))
    if (!(point_in_rectangle(tx, ty, btn_missile[0], btn_missile[1], btn_missile[2], btn_missile[3])))
        missile_pressed[0] = -1
}
else
    missile_pressed[0] = -1
if (morph_pressed[0] == -1)
{
    i = 0
    while (i < 5)
    {
        if device_mouse_check_button(i, mb_left)
        {
            tx = scr_mouse_gui_x(device_mouse_raw_x(i))
            ty = scr_mouse_gui_y(device_mouse_raw_y(i))
            if point_in_rectangle(tx, ty, btn_morph[0], btn_morph[1], btn_morph[2], btn_morph[3])
            {
                if (morph_pressed[1] != i)
                {
                    morph_pressed[0] = i
                    break
                }
                else
                {
                    i += 1
                    continue
                }
            }
            else
            {
                i += 1
                continue
            }
        }
        else
        {
            i += 1
            continue
        }
    }
}
else if device_mouse_check_button(morph_pressed[0], mb_left)
{
    tx = scr_mouse_gui_x(device_mouse_raw_x(morph_pressed[0]))
    ty = scr_mouse_gui_y(device_mouse_raw_y(morph_pressed[0]))
    if (!(point_in_rectangle(tx, ty, btn_morph[0], btn_morph[1], btn_morph[2], btn_morph[3])))
        morph_pressed[0] = -1
}
else
    morph_pressed[0] = -1
if (pause_pressed[0] == -1)
{
    i = 0
    while (i < 5)
    {
        if device_mouse_check_button(i, mb_left)
        {
            tx = scr_mouse_gui_x(device_mouse_raw_x(i))
            ty = scr_mouse_gui_y(device_mouse_raw_y(i))
            if point_in_rectangle(tx, ty, btn_pause[0], btn_pause[1], btn_pause[2], btn_pause[3])
            {
                if (pause_pressed[1] != i)
                {
                    pause_pressed[0] = i
                    break
                }
                else
                {
                    i += 1
                    continue
                }
            }
            else
            {
                i += 1
                continue
            }
        }
        else
        {
            i += 1
            continue
        }
    }
}
else if device_mouse_check_button(pause_pressed[0], mb_left)
{
    tx = scr_mouse_gui_x(device_mouse_raw_x(pause_pressed[0]))
    ty = scr_mouse_gui_y(device_mouse_raw_y(pause_pressed[0]))
    if (!(point_in_rectangle(tx, ty, btn_pause[0], btn_pause[1], btn_pause[2], btn_pause[3])))
        pause_pressed[0] = -1
}
else
    pause_pressed[0] = -1
if (aimupleft_pressed[0] == -1 && aimdownleft_pressed[0] == -1 && aimupright_pressed[0] == -1 && aimdownright_pressed[0] == -1 && st_pressed[0] == -1)
{
    i = 0
    while (i < 5)
    {
        if device_mouse_check_button(i, mb_left)
        {
            tx = scr_mouse_gui_x(device_mouse_raw_x(i))
            ty = scr_mouse_gui_y(device_mouse_raw_y(i))
            if point_in_triangle(tx, ty, btn_aimul[0], btn_aimul[1], btn_aimul[2], btn_aimul[3], btn_aimul[4], btn_aimul[5])
            {
                if (aimupleft_pressed[1] != i)
                {
                    aimupleft_pressed[0] = i
                    break
                }
                else
                {
                    i += 1
                    continue
                }
            }
            else
            {
                i += 1
                continue
            }
        }
        else
        {
            i += 1
            continue
        }
    }
}
if ((!(device_mouse_check_button(aimupleft_pressed[0], mb_left))) || st_pressed[0] != -1)
    aimupleft_pressed[0] = -1
if (aimupleft_pressed[0] == -1 && aimdownleft_pressed[0] == -1 && aimupright_pressed[0] == -1 && aimdownright_pressed[0] == -1 && st_pressed[0] == -1)
{
    i = 0
    while (i < 5)
    {
        if device_mouse_check_button(i, mb_left)
        {
            tx = scr_mouse_gui_x(device_mouse_raw_x(i))
            ty = scr_mouse_gui_y(device_mouse_raw_y(i))
            if point_in_triangle(tx, ty, btn_aimdl[0], btn_aimdl[1], btn_aimdl[2], btn_aimdl[3], btn_aimdl[4], btn_aimdl[5])
            {
                if (aimdownleft_pressed[1] != i)
                {
                    aimdownleft_pressed[0] = i
                    break
                }
                else
                {
                    i += 1
                    continue
                }
            }
            else
            {
                i += 1
                continue
            }
        }
        else
        {
            i += 1
            continue
        }
    }
}
if ((!(device_mouse_check_button(aimdownleft_pressed[0], mb_left))) || st_pressed[0] != -1)
    aimdownleft_pressed[0] = -1
if (aimupleft_pressed[0] == -1 && aimdownleft_pressed[0] == -1 && aimupright_pressed[0] == -1 && aimdownright_pressed[0] == -1 && st_pressed[0] == -1)
{
    i = 0
    while (i < 5)
    {
        if device_mouse_check_button(i, mb_left)
        {
            tx = scr_mouse_gui_x(device_mouse_raw_x(i))
            ty = scr_mouse_gui_y(device_mouse_raw_y(i))
            if point_in_triangle(tx, ty, btn_aimur[0], btn_aimur[1], btn_aimur[2], btn_aimur[3], btn_aimur[4], btn_aimur[5])
            {
                if (aimupright_pressed[1] != i)
                {
                    aimupright_pressed[0] = i
                    break
                }
                else
                {
                    i += 1
                    continue
                }
            }
            else
            {
                i += 1
                continue
            }
        }
        else
        {
            i += 1
            continue
        }
    }
}
if ((!(device_mouse_check_button(aimupright_pressed[0], mb_left))) || st_pressed[0] != -1)
    aimupright_pressed[0] = -1
if (aimupleft_pressed[0] == -1 && aimdownleft_pressed[0] == -1 && aimupright_pressed[0] == -1 && aimdownright_pressed[0] == -1 && st_pressed[0] == -1)
{
    i = 0
    while (i < 5)
    {
        if device_mouse_check_button(i, mb_left)
        {
            tx = scr_mouse_gui_x(device_mouse_raw_x(i))
            ty = scr_mouse_gui_y(device_mouse_raw_y(i))
            if point_in_triangle(tx, ty, btn_aimdr[0], btn_aimdr[1], btn_aimdr[2], btn_aimdr[3], btn_aimdr[4], btn_aimdr[5])
            {
                if (aimdownright_pressed[1] != i)
                {
                    aimdownright_pressed[0] = i
                    break
                }
                else
                {
                    i += 1
                    continue
                }
            }
            else
            {
                i += 1
                continue
            }
        }
        else
        {
            i += 1
            continue
        }
    }
}
if ((!(device_mouse_check_button(aimdownright_pressed[0], mb_left))) || st_pressed[0] != -1)
    aimdownright_pressed[0] = -1
if (up_pressed[0] == -1)
{
    i = 0
    while (i < 5)
    {
        if device_mouse_check_button(i, mb_left)
        {
            tx = scr_mouse_gui_x(device_mouse_raw_x(i))
            ty = scr_mouse_gui_y(device_mouse_raw_y(i))
            if point_in_triangle(tx, ty, btn_aimu[0], btn_aimu[1], btn_aimu[2], btn_aimu[3], btn_aimu[4], btn_aimu[5])
            {
                if (up_pressed[1] != i)
                {
                    up_pressed[0] = i
                    break
                }
                else
                {
                    i += 1
                    continue
                }
            }
            else
            {
                i += 1
                continue
            }
        }
        else
        {
            i += 1
            continue
        }
    }
}
else if device_mouse_check_button(up_pressed[0], mb_left)
{
    tx = scr_mouse_gui_x(device_mouse_raw_x(up_pressed[0]))
    ty = scr_mouse_gui_y(device_mouse_raw_y(up_pressed[0]))
    if (!(point_in_triangle(tx, ty, btn_aimu[0], btn_aimu[1], btn_aimu[2], btn_aimu[3], btn_aimu[4], btn_aimu[5])))
        up_pressed[0] = -1
}
else
    up_pressed[0] = -1
if (down_pressed[0] == -1)
{
    i = 0
    while (i < 5)
    {
        if device_mouse_check_button(i, mb_left)
        {
            tx = scr_mouse_gui_x(device_mouse_raw_x(i))
            ty = scr_mouse_gui_y(device_mouse_raw_y(i))
            if point_in_triangle(tx, ty, btn_aimd[0], btn_aimd[1], btn_aimd[2], btn_aimd[3], btn_aimd[4], btn_aimd[5])
            {
                if (down_pressed[1] != i)
                {
                    down_pressed[0] = i
                    break
                }
                else
                {
                    i += 1
                    continue
                }
            }
            else
            {
                i += 1
                continue
            }
        }
        else
        {
            i += 1
            continue
        }
    }
}
else if device_mouse_check_button(down_pressed[0], mb_left)
{
    tx = scr_mouse_gui_x(device_mouse_raw_x(down_pressed[0]))
    ty = scr_mouse_gui_y(device_mouse_raw_y(down_pressed[0]))
    if (!(point_in_triangle(tx, ty, btn_aimd[0], btn_aimd[1], btn_aimd[2], btn_aimd[3], btn_aimd[4], btn_aimd[5])))
        down_pressed[0] = -1
}
else
    down_pressed[0] = -1
if (!global.ingame)
{
    if (right_pressed[0] == -1)
    {
        i = 0
        while (i < 5)
        {
            if device_mouse_check_button(i, mb_left)
            {
                tx = scr_mouse_gui_x(device_mouse_raw_x(i))
                ty = scr_mouse_gui_y(device_mouse_raw_y(i))
                if point_in_triangle(tx, ty, btn_aimr[0], btn_aimr[1], btn_aimr[2], btn_aimr[3], btn_aimr[4], btn_aimr[5])
                {
                    if (right_pressed[1] != i)
                    {
                        right_pressed[0] = i
                        break
                    }
                    else
                    {
                        i += 1
                        continue
                    }
                }
                else
                {
                    i += 1
                    continue
                }
            }
            else
            {
                i += 1
                continue
            }
        }
    }
    else if device_mouse_check_button(right_pressed[0], mb_left)
    {
        tx = scr_mouse_gui_x(device_mouse_raw_x(right_pressed[0]))
        ty = scr_mouse_gui_y(device_mouse_raw_y(right_pressed[0]))
        if (!(point_in_triangle(tx, ty, btn_aimr[0], btn_aimr[1], btn_aimr[2], btn_aimr[3], btn_aimr[4], btn_aimr[5])))
            right_pressed[0] = -1
    }
    else
        right_pressed[0] = -1
    if (left_pressed[0] == -1)
    {
        i = 0
        while (i < 5)
        {
            if device_mouse_check_button(i, mb_left)
            {
                tx = scr_mouse_gui_x(device_mouse_raw_x(i))
                ty = scr_mouse_gui_y(device_mouse_raw_y(i))
                if point_in_triangle(tx, ty, btn_aiml[0], btn_aiml[1], btn_aiml[2], btn_aiml[3], btn_aiml[4], btn_aiml[5])
                {
                    if (left_pressed[1] != i)
                    {
                        left_pressed[0] = i
                        break
                    }
                    else
                    {
                        i += 1
                        continue
                    }
                }
                else
                {
                    i += 1
                    continue
                }
            }
            else
            {
                i += 1
                continue
            }
        }
    }
    else if device_mouse_check_button(left_pressed[0], mb_left)
    {
        tx = scr_mouse_gui_x(device_mouse_raw_x(left_pressed[0]))
        ty = scr_mouse_gui_y(device_mouse_raw_y(left_pressed[0]))
        if (!(point_in_triangle(tx, ty, btn_aiml[0], btn_aiml[1], btn_aiml[2], btn_aiml[3], btn_aiml[4], btn_aiml[5])))
            left_pressed[0] = -1
    }
    else
        left_pressed[0] = -1
}
else
{
    right_pressed[0] = -1
    right_pressed[1] = -1
    left_pressed[0] = -1
    left_pressed[1] = -1
}
if (global.gamestarted == 0 || room == gameintroroom || room == rm_credits)
{
    if (pause_pressed[0] == -1)
    {
        i = 0
        while (i < 5)
        {
            if device_mouse_check_button(i, mb_left)
            {
                tx = scr_mouse_gui_x(device_mouse_raw_x(i))
                ty = scr_mouse_gui_y(device_mouse_raw_y(i))
                if point_in_rectangle(tx, ty, 0, 0, display_get_width(), display_get_height())
                {
                    if (pause_pressed[1] != i)
                    {
                        pause_pressed[0] = i
                        break
                    }
                    else
                    {
                        i += 1
                        continue
                    }
                }
                else
                {
                    i += 1
                    continue
                }
            }
            else
            {
                i += 1
                continue
            }
        }
    }
    else if device_mouse_check_button(pause_pressed[0], mb_left)
    {
        tx = scr_mouse_gui_x(device_mouse_raw_x(pause_pressed[0]))
        ty = scr_mouse_gui_y(device_mouse_raw_y(pause_pressed[0]))
        if (!(point_in_rectangle(tx, ty, 0, 0, display_get_width(), display_get_width())))
            pause_pressed[0] = -1
    }
    else
        pause_pressed[0] = -1
}
