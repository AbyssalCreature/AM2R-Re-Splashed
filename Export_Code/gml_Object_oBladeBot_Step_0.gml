event_inherited()
if (state == 0)
{
    col_edge = 0
    if (direction == 0)
    {
        if collision_line((x + 8), (y - 4), (x + 8), (y + 4), oSolid, true, true)
        {
            if (facing == 1)
                direction = 270
            else
                direction = 90
            x = xprevious
            y = yprevious
        }
        else if turnedges
        {
            if (facing == 1)
            {
                if (!(collision_line((x - 8), (y + 12), (x + 8), (y + 12), oSolid, true, true)))
                    direction = 270
            }
            else if (!(collision_line((x - 8), (y - 12), (x + 8), (y - 12), oSolid, true, true)))
                direction = 90
        }
    }
    else if (direction == 90)
    {
        if collision_line((x - 4), (y - 8), (x + 4), (y - 8), oSolid, true, true)
        {
            if (facing == 1)
                direction = 0
            else
                direction = 180
            x = xprevious
            y = yprevious
        }
        else if turnedges
        {
            if (facing == 1)
            {
                if (!(collision_line((x + 12), (y - 8), (x + 12), (y + 8), oSolid, true, true)))
                    direction = 0
            }
            else if (!(collision_line((x - 12), (y - 8), (x - 12), (y + 8), oSolid, true, true)))
                direction = 180
        }
    }
    else if (direction == 180)
    {
        if collision_line((x - 8), (y - 4), (x - 8), (y + 4), oSolid, true, true)
        {
            if (facing == 1)
                direction = 90
            else
                direction = 270
            x = xprevious
            y = yprevious
        }
        else if turnedges
        {
            if (facing == 1)
            {
                if (!(collision_line((x - 8), (y - 12), (x + 8), (y - 12), oSolid, true, true)))
                    direction = 90
            }
            else if (!(collision_line((x - 8), (y + 12), (x + 8), (y + 12), oSolid, true, true)))
                direction = 270
        }
    }
    else if (direction == 270)
    {
        if collision_line((x - 4), (y + 8), (x + 4), (y + 8), oSolid, true, true)
        {
            if (facing == 1)
                direction = 180
            else
                direction = 0
            x = xprevious
            y = yprevious
        }
        else if turnedges
        {
            if (facing == 1)
            {
                if (!(collision_line((x - 12), (y - 8), (x - 12), (y + 8), oSolid, true, true)))
                    direction = 180
            }
            else if (!(collision_line((x + 12), (y - 8), (x + 12), (y + 8), oSolid, true, true)))
                direction = 0
        }
    }
    if (turnedges && (!(collision_rectangle((x - 12), (y - 12), (x + 12), (y + 12), oSolid, 1, 1))))
        turnedges = 0
    if (facing != 1)
        image_xscale = -1
    image_angle -= 20
    if (image_angle < -360)
        image_angle += 360
}
if (state == 100)
{
    enemy_death2()
    repeat (20)
        instance_create(x, y, oDebris)
}
