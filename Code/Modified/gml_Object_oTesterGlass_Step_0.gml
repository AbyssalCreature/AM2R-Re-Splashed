if (enabled == 0)
{
    if (image_alpha > 0)
        image_alpha -= 0.1
}
if (enabled == 1)
{
    if (image_alpha < 1)
        image_alpha += 0.2
}
if (flashing > 0)
    flashing -= 1
