if active
{
    if (state == 1)
    {
        if (image_index < 13)
            image_index += 1
        else
        {
            alarm[1] = 180
            state = 2
        }
    }
    if (state == 3)
    {
        if (image_index > 0)
            image_index -= 1
        else
        {
            alarm[0] = 60
            state = 4
        }
    }
}
