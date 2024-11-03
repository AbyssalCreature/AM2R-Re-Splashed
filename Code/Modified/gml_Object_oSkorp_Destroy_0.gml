if (instance_exists(disc1) && instance_exists(disc2))
{
    with (disc1)
        instance_destroy()
    with (disc2)
        instance_destroy()
}
if instance_exists(lure)
    lure.state = 100
