if (state == 0)
{
    if (statetime == 150)
    {
        state = 1
        statetime = 0
    }
}
if (state == 1)
{
    image_angle = lerp(image_angle, 0, 0.05)
    if (statetime == 70)
    {
        state = 2
        statetime = 0
    }
}
if (state == 2)
{
    image_angle = 0
    if (image_index > 1)
        image_index -= 0.2
    if (image_index < 1)
        image_index = 1
    if (statetime > 40)
    {
        if (vspeed < 2.5)
            vspeed += 0.03
    }
}
statetime += 1
