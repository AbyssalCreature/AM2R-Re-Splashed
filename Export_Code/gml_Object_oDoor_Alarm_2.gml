if (instance_exists(block) && open == 1)
{
    with (block)
        instance_destroy()
}
alarm[2] = 30
