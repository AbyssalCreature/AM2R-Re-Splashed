if (state == 1)
{
    if (x < targetx)
    {
        hspeed += 0.1
        image_xscale = 1
    }
    else
    {
        hspeed -= 0.1
        image_xscale = -1
    }
    if (y < targety)
        vspeed += 0.1
    else
        vspeed -= 0.1
    speed = min(3, speed)
}
if (state == 2)
    speed += 0.2
if (state == 100)
{
    speed *= 0.8
    image_alpha -= 0.05
    if (image_alpha <= 0.05)
        instance_destroy()
}
if instance_exists(oTorizo2)
{
    if (oTorizo2.state == 4)
        state = 100
}
