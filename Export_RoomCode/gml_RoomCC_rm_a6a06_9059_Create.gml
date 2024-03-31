if (global.lavastate >= 9 && (!instance_exists(oClient)))
{
    x -= 32
    y += 48
}
if (global.lavastate >= 10)
    instance_destroy()
