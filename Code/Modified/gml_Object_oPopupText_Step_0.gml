if (!fadeout)
{
    if (image_alpha < 1)
        image_alpha += 0.1
}
else if (image_alpha > 0)
    image_alpha -= 0.05
else
    instance_destroy()
x = (view_xview[0] + 4)
y = (view_yview[0] + 230)
