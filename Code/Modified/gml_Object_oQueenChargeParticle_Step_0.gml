if fadein
{
    if (image_alpha < 0.6)
        image_alpha += 0.05
    else
        fadein = 0
}
if (point_distance(x, y, startx, starty) < 20)
    fadeout = 1
if fadeout
{
    if (image_alpha > 0)
        image_alpha -= 0.2
    else
        instance_destroy()
}
