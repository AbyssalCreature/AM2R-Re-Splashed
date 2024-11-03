if (global.metdead[myid] > 0)
{
    with (body_obj)
        instance_destroy()
    with (head_obj)
        instance_destroy()
    with (mask_obj)
        instance_destroy()
    instance_destroy()
}
