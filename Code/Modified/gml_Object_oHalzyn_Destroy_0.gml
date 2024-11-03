if (instance_exists(shield1) && instance_exists(shield2))
{
    with (shield1)
        instance_destroy()
    with (shield2)
        instance_destroy()
}
