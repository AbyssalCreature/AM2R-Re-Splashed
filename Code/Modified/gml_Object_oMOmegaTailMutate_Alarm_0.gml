shake = 1
if (image_index == 0)
{
    instance_destroy()
    with (oMOmega)
        tail.visible = true
    shake = 0
}
else
{
    image_index -= 1
    alarm[0] = 12
}
