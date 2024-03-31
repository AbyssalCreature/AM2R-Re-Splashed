if active
{
    statetime += 1
    image_angle += 10
    if (image_angle > 360)
        image_angle -= 360
    spr_num = 0
    if (statetime > 60)
        spr_num = 1
    if (statetime > 120)
        spr_num = 2
    if (image_alpha < 1)
        image_alpha += 0.1
}
else
{
    spr_num = 0
    statetime = 0
    if (image_alpha > 0)
        image_alpha -= 0.05
}
