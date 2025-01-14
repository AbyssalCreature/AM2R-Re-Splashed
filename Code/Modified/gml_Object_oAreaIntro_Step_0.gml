var imageindex;
imageindex = floor(image_index)
if (state == 0 || (!global.ingame) || room == rm_transition)
{
    image_speed = 0
    exit
}
else if (pause[imageindex] > 0)
{
    image_speed = 0
    image_index = imageindex
    pause[imageindex]--
}
else
    image_speed = 0.25
