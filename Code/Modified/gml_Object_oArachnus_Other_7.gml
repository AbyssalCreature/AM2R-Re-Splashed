if (state == 2 || (state == 52 && statetime < 110))
{
    image_index = 2
    image_speed = 0.5
}
if (state == 3)
{
    state = 4
    statetime = 0
}
if (state == 5 && angry < 100)
{
    state = 0
    statetime = 0
}
if (state == 5 && angry >= 100)
{
    state = 52
    statetime = 0
}
if (turning == 1)
    turning = 0
if (state == 8 && statetime > 30)
{
    state = 9
    statetime = 0
}
if (state == 50)
{
    image_index = 3
    image_speed = 0.5
}
