if (state == 1)
{
    if (image_index < 7)
        image_index += 0.1
    if (statetime == 90)
    {
        state = 2
        statetime = 0
    }
}
if (state == 2)
{
    if (image_index < 9)
        image_index += 0.1
    if (statetime == 90)
    {
        state = 3
        statetime = 0
    }
}
if (state == 3)
    image_index += 0.2
if floor(image_index >= 11)
{
    image_index = 11
    instance_destroy()
}
statetime += 1
