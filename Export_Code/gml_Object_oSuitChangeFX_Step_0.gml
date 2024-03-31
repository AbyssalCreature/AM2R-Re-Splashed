if (state == 0)
{
    if (bg1alpha < 1)
        bg1alpha += 0.05
    else
    {
        state = 1
        bg2alpha = 1
    }
}
if (state == 1)
{
    if (bg2alpha > 0)
        bg2alpha -= 0.1
    else
    {
        state = 2
        alarm[0] = 30
    }
}
if (state == 3)
{
    if (bg3alpha < 1)
        bg3alpha += 0.05
    else
    {
        state = 4
        bg3alpha = 1
        bg1alpha = 0
        if instance_exists(oFakeItemBall)
        {
            with (oFakeItemBall)
                instance_destroy()
        }
        if (global.SuitChangeGravity == 0)
            scr_variasuitswap()
        else
            global.currentsuit = 2
    }
}
if (state == 4)
{
    if (xoffset > 0)
        xoffset = floor((xoffset * (0.95 - (0.01 * oControl.widescreen))))
    else
    {
        global.enablecontrol = 1
        instance_destroy()
    }
}
with (oCharacter)
{
    if (x > other.x)
        x -= 1
    if (x < other.x)
        x += 1
    if (y > other.y)
        y -= 1
    if (y < other.y)
        y += 1
}
