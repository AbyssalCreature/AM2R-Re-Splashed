var inst1, inst2, inst;
action_inherited()
if (active == 1 && frozen == 0)
{
    if (!update)
        update = (!update)
    else
    {
        update = (!update)
        sbstateprevious = sbstate
        sbstate = 0
        edgedl = position_meeting((x - 2), (y + 1), oSolid)
        edgedr = position_meeting((x + 2), (y + 1), oSolid)
        edgeul = position_meeting((x - 2), (y - 2), oSolid)
        edgeur = position_meeting((x + 2), (y - 2), oSolid)
        if (isCollisionBottom(0) == 1)
            y -= 1
        if (isCollisionTop(0) == 1)
            y += 1
        if (isCollisionLeft(0) == 1)
            x += 1
        if (isCollisionRight(0) == 1)
            x -= 1
        if (isCollisionBottom(1) == 1 && isCollisionRight(1) == 0 && isCollisionLeft(1) == 0)
            sbstate = 1
        if (isCollisionRight(1) == 1 && isCollisionBottom(1) == 0 && isCollisionTop(1) == 0)
            sbstate = 2
        if (isCollisionTop(1) == 1 && isCollisionRight(1) == 0 && isCollisionLeft(1) == 0)
            sbstate = 3
        if (isCollisionLeft(1) == 1 && isCollisionBottom(1) == 0 && isCollisionTop(1) == 0)
            sbstate = 4
        if (isCollisionBottom(1) == 1 && isCollisionRight(1) == 1)
            sbstate = 5
        if (isCollisionTop(1) == 1 && isCollisionRight(1) == 1)
            sbstate = 6
        if (isCollisionTop(1) == 1 && isCollisionLeft(1) == 1)
            sbstate = 7
        if (isCollisionBottom(1) == 1 && isCollisionLeft(1) == 1)
            sbstate = 8
        if (isCollisionBottom(1) == 0 && isCollisionLeft(1) == 0 && isCollisionRight(1) == 0 && isCollisionTop(1) == 0)
        {
            if (edgedl == 1 && edgeul == 0 && edgeur == 0 && edgedr == 0)
                sbstate = 9
            if (edgeul == 1 && edgedl == 0 && edgeur == 0 && edgedr == 0)
                sbstate = 10
            if (edgeur == 1 && edgedl == 0 && edgeul == 0 && edgedr == 0)
                sbstate = 11
            if (edgedr == 1 && edgedl == 0 && edgeul == 0 && edgeur == 0)
                sbstate = 12
            if (edgedl == 1 && edgeul == 0 && edgeur == 0 && edgedr == 1)
                sbstate = 1
            if (edgedl == 0 && edgeul == 0 && edgeur == 1 && edgedr == 1)
                sbstate = 2
            if (edgedl == 0 && edgeul == 1 && edgeur == 1 && edgedr == 0)
                sbstate = 3
            if (edgedl == 1 && edgeul == 1 && edgeur == 0 && edgedr == 0)
                sbstate = 4
        }
        if (sbstate == 0 && falling == 0)
        {
            falling = 1
            if (image_angle > 270 || image_angle < 90)
                xVel = (0.5 * facing)
            if (image_angle > 90 && image_angle < 270)
                xVel = (-0.5 * facing)
            alarm[0] = 1
        }
        if (facing == 1 && sbmove == 0)
        {
            if (sbstate == 1)
                sbmove = 1
            if (sbstate == 3)
                sbmove = -1
            if (sbstate == 5)
                sbmove = 1
            if (sbstate == 6)
                sbmove = -1
            if (sbstate == 7)
                sbmove = -1
            if (sbstate == 8)
                sbmove = 1
            if (sbstate == 9)
                sbmove = 1
            if (sbstate == 10)
                sbmove = -1
            if (sbstate == 11)
                sbmove = -1
            if (sbstate == 12)
                sbmove = 1
        }
        if (facing == -1 && sbmove == 0)
        {
            if (sbstate == 1)
                sbmove = -1
            if (sbstate == 3)
                sbmove = 1
            if (sbstate == 5)
                sbmove = -1
            if (sbstate == 6)
                sbmove = 1
            if (sbstate == 7)
                sbmove = 1
            if (sbstate == 8)
                sbmove = -1
            if (sbstate == 9)
                sbmove = -1
            if (sbstate == 10)
                sbmove = 1
            if (sbstate == 11)
                sbmove = 1
            if (sbstate == 12)
                sbmove = -1
        }
        if (sbstate == 1)
            x += sbmove
        if (sbstate == 2)
            y -= sbmove
        if (sbstate == 3)
            x -= sbmove
        if (sbstate == 4)
            y += sbmove
        if (sbstate == 5)
        {
            if (sbmove == 1)
                y -= 1
            if (sbmove == -1)
                x -= 1
        }
        if (sbstate == 6)
        {
            if (sbmove == 1)
                x -= 1
            if (sbmove == -1)
                y += 1
        }
        if (sbstate == 7)
        {
            if (sbmove == 1)
                y += 1
            if (sbmove == -1)
                x += 1
        }
        if (sbstate == 8)
        {
            if (sbmove == 1)
                x += 1
            if (sbmove == -1)
                y -= 1
        }
        if (sbstate == 9)
        {
            if (sbmove == 1)
                y += 1
            if (sbmove == -1)
                x -= 1
        }
        if (sbstate == 10)
        {
            if (sbmove == 1)
                x -= 1
            if (sbmove == -1)
                y -= 1
        }
        if (sbstate == 11)
        {
            if (sbmove == 1)
                y -= 1
            if (sbmove == -1)
                x += 1
        }
        if (sbstate == 12)
        {
            if (sbmove == 1)
                x += 1
            if (sbmove == -1)
                y += 1
        }
    }
    switch sbstate
    {
        case 1:
            myangle = 0
            break
        case 2:
            myangle = 90
            break
        case 3:
            myangle = 180
            break
        case 4:
            myangle = 270
            break
    }

    inst1 = collision_line((x - 2), y, (x + 2), y, oSolid, false, true)
    inst2 = collision_line(x, (y - 2), x, (y + 2), oSolid, false, true)
    inst = noone
    if (instance_exists(inst1) && string_pos("Slope", object_get_name(inst1.object_index)))
        inst = inst1
    else if (instance_exists(inst2) && string_pos("Slope", object_get_name(inst2.object_index)))
        inst = inst2
    if instance_exists(inst)
    {
        if string_pos("1", object_get_name(inst.object_index))
            myangle = 45
        if string_pos("2", object_get_name(inst.object_index))
            myangle = 315
        if string_pos("3", object_get_name(inst.object_index))
            myangle = 225
        if string_pos("4", object_get_name(inst.object_index))
            myangle = 135
        if string_pos("1B", object_get_name(inst.object_index))
            myangle = 25
        if string_pos("2B", object_get_name(inst.object_index))
            myangle = 334
        if string_pos("3B", object_get_name(inst.object_index))
            myangle = 205
        if string_pos("4B", object_get_name(inst.object_index))
            myangle = 154
    }
    if (angleprevious != myangle)
    {
        rotationspeed = ((abs(angle_difference(myangle, angleprevious)) * 15) / 90)
        angleprevious = myangle
    }
    if (falling == 0)
        turn_towards_direction(myangle, rotationspeed)
    image_angle = direction
    image_speed = 0.2
    if (instance_number(oQuake) > 0 && falling == 0)
    {
        if (image_angle >= 90 && image_angle <= 270)
        {
            x += lengthdir_x(4, (image_angle + 90))
            y += lengthdir_y(4, (image_angle + 90))
        }
    }
}
if (state == 100)
    enemy_death()
