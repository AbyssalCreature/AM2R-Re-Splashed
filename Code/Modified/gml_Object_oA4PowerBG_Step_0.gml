if (global.event[200] > 0)
{
    if (flicker > 0)
    {
        afx = random(1)
        flicker -= 1
    }
    else
        afx = random(0.3)
    if global.sensitivitymode
    {
        flicker = 0
        afx = 0
    }
    if (image_alpha < 1)
        image_alpha += 0.02
}
