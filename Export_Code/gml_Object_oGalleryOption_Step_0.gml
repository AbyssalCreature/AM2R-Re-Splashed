if (global.curropt == optionid)
{
    if (image_alpha < 1)
        image_alpha += 0.1
}
else if (image_alpha > 0)
    image_alpha -= 0.05
if (image_alpha > 1)
    image_alpha = 1
if (image_alpha < 0)
    image_alpha = 0
