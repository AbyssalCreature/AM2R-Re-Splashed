if (state == 0)
{
    if (statetime < 100)
    {
        if (image_alpha < 1)
            image_alpha += 0.01
    }
    if (statetime == 300)
    {
        tile_layer_show(-99)
        repeat (50)
            instance_create((2572 + random_range(-200, 200)), 80, oQueenBloodDrop)
        repeat (10)
            instance_create((2572 + random_range(-50, 50)), 80, oQueenBloodDrop)
        with (oQueen)
        {
            event_user(10)
            with (head_obj.jaw1_obj)
                instance_destroy()
            with (head_obj.jaw2_obj)
                instance_destroy()
            with (head_obj)
                instance_destroy()
            instance_destroy()
        }
        with (glow)
            instance_destroy()
        with (oLightRay)
            instance_destroy()
        state = 1
        statetime = 0
        global.event[303] = 2
    }
}
if (state == 1)
{
    if (image_alpha > 0)
        image_alpha -= 0.01
    else
        event_user(0)
}
statetime += 1
