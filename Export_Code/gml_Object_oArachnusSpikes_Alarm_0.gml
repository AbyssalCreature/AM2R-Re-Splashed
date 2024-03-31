if active
{
    if (x != targetx)
        x += facing
}
else if (x != startx)
    x -= facing
else
    instance_destroy()
alarm[0] = 2
