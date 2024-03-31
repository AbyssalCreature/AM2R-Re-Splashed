if active
{
    if (state == 0)
    {
        image_index = 0
        sfx_stop(sndALBladesLoop)
    }
    if (state == 1)
    {
        image_index = 1
        image_angle += 40
        if (image_angle >= 360)
            image_angle -= 360
        if (move == 1)
        {
            if (movedir == 0)
            {
                if (yoffset < 40)
                {
                    yoffset += 1
                    y -= 1
                }
                else
                    movedir = 1
            }
            else if (yoffset > 0)
            {
                yoffset -= 1
                y += 1
            }
            else
                movedir = 0
        }
    }
}
