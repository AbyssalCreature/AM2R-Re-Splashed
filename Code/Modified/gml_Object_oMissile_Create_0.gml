if (y > global.waterlevel && global.waterlevel != 0)
    inwater = 1
else
    inwater = 0
alarm[1] = 1
pbeam = 0
ibeam = 0
wbeam = 0
sbeam = 0
startx = x
starty = y
flame = -4
image_speed = 0.5
if (oControl.debug > 0)
{
    if instance_exists(oMGamma)
    {
        x = oMGamma.x
        y = (oMGamma.y + 16)
    }
}
