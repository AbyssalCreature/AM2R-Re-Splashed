image_xscale = lerp(image_xscale, 1, 0.05)
image_yscale = lerp(image_yscale, 1, 0.05)
if fadeout
{
    image_alpha -= 0.02
    if (image_alpha <= 0)
        instance_destroy()
}
if spark_fadeout
{
    if (spark_alpha > 0)
        spark_alpha -= 0.02
}
if (!global.sensitivitymode)
    alpha2 = (!alpha2)
