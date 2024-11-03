if (!fadeout)
{
    if ((!instance_exists(oNotification)) && moreThanOne == 0)
    {
        if (image_alpha < 1)
            image_alpha += 0.1
    }
    else
    {
        alarm[0] += 1
        if (instance_number(object_index) == 1)
            moreThanOne = 0
    }
}
else if (image_alpha > 0)
    image_alpha -= 0.1
else
    event_user(0)
