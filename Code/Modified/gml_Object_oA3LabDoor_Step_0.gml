if (distance_to_object(oCharacter) < 80)
    active = 1
else
    active = 0
if (state == 0)
{
    if active
    {
        state = 1
        with (myblock)
            instance_destroy()
        sfx_play(sndDoorOpen)
    }
}
if (state == 1)
{
    if (image_index < 8)
        image_index += 0.5
    else
        state = 2
}
if (state == 2)
{
    if (active == 0)
    {
        state = 3
        myblock = instance_create((x - (facing == -1 * 16)), y, oSolid1x4)
        sfx_play(sndDoorClose)
    }
}
if (state == 3)
{
    if (image_index > 0)
        image_index -= 0.5
    else
        state = 0
}
