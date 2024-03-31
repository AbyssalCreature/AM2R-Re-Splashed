if (global.event[250] > 0)
{
    with (oDoor)
        lock = 0
    instance_create(480, 384, oA5SwitchLight)
    instance_destroy()
}
