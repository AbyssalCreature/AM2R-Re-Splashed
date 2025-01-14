with (115271)
    x = (oTorizoWall.xoff - 320)
with (oTorizo)
    WallLeft = (oTorizoWall.xoff + 16)
if (xoff <= 16)
{
    with (115271)
        instance_destroy()
}
if (xoff <= 304)
{
    with (oTorizoCam)
        followtorizo = 1
}
