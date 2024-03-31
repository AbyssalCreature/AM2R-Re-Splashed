if global.ingame
{
    if shaking
    {
        if (global.classicmode == 0)
        {
            view_xport[0] = round(random(3))
            view_yport[0] = round(random(3))
            oControl.xShake = round(random(3))
            oControl.yShake = round(random(3))
        }
        if (global.classicmode == 1)
        {
            view_xport[0] = (80 + round(random(3)))
            view_yport[0] = (40 + round(random(3)))
            oControl.xShake = (80 + round(random(3)))
            oControl.yShake = (40 + round(random(3)))
        }
    }
    time += (0.2 / (1 + global.sensitivitymode))
    screenalpha = ((cos(time) * 0.5) / (1 + global.sensitivitymode))
}
