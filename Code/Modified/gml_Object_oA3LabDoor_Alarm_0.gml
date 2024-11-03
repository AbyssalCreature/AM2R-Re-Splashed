if (distance_to_object(oCharacter) < 80)
{
    active = 1
    state = 2
    image_index = 8
    with (myblock)
        instance_destroy()
}
else
    active = 0
