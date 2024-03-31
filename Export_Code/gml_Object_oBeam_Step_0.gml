if (sbeam == 1)
{
    time += 0.4
    w_arc = 40
}
else
{
    time += 1
    w_arc = 25
    if (chargebeam == 1)
        w_arc = 30
}
if instance_exists(oCharacter)
{
    if ((maindir == 0 || maindir == 359.5 || maindir == 45 || maindir == 315) && oCharacter.xVel > 0)
        x += oCharacter.xVel
    if ((maindir == 180 || maindir == 135 || maindir == 225) && oCharacter.xVel < 0)
        x += oCharacter.xVel
    if (maindir == 270 && oCharacter.yVel > 0)
        y += oCharacter.yVel
}
if (wbeam && sbeam == 0)
{
    if (wbeamdir == 1)
        direction = (maindir + (w_arc * cos(time)))
    if (wbeamdir == 0)
        direction = (maindir - (w_arc * cos(time)))
}
if (sbeam && wbeam == 0 && beamid == 1)
{
    if (time < 1 && chargebeam == 0)
        direction = (maindir + 20)
    if (time < 1 && chargebeam == 1)
        direction = (maindir + 20)
    if (time >= 1.3 && direction > maindir && chargebeam == 0)
        direction -= 5
    if (time >= 1 && direction > maindir && chargebeam == 1)
        direction -= 10
}
if (sbeam && wbeam == 0 && beamid == 2)
{
    if (time < 1 && chargebeam == 0)
        direction = (maindir - 20)
    if (time < 1 && chargebeam == 1)
        direction = (maindir - 20)
    if (maindir == 0)
    {
        maindir = 359.5
        if (chargebeam == 1)
            y -= 1
    }
    if (time >= 1.3 && direction < maindir && chargebeam == 0)
        direction += 5
    if (time >= 1 && direction < maindir && chargebeam == 1)
        direction += 10
}
if (sbeam && time > 2 && maindir == 359.5)
    direction = 0
if (wbeam && sbeam)
{
    if (beamid == 0 && chargebeam == 0)
        speed = 6.7
    if (beamid == 0 && chargebeam == 1)
        speed = 9
    if (beamid == 1)
        direction = (maindir + (60 * cos(time)))
    if (beamid == 2)
        direction = (maindir - (60 * cos(time)))
}
if (wbeam && pbeam)
    image_angle = direction
if (chargebeam == 1 && sprite_index == sBeam2)
{
    if (time < 1)
        image_xscale = 0.6
    if (time > 1 && image_xscale < 1)
        image_xscale += 0.2
}
if (y > global.waterlevel && global.waterlevel != 0)
{
    if (inwater == 0)
        instance_create(x, global.waterlevel, oSmallSplash)
    inwater = 1
}
else
{
    if (inwater == 1)
        instance_create(x, global.waterlevel, oSmallSplash)
    inwater = 0
}
if (x < ((view_xview[0] - 48) - (oControl.widescreen_space / 2)) || x > (((view_xview[0] + view_wview[0]) + 48) + (oControl.widescreen_space / 2)) || y < (view_yview[0] - 48) || y > ((view_yview[0] + view_hview[0]) + 48))
    instance_destroy()
