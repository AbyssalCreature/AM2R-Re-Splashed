if (xpos == targetx)
    event_user(0)
else
{
    tile_layer_shift(-91, 1, 0)
    xpos += 1
    oCharacter.x += 1
    with (oDrillBack)
    {
        active = 1
        x += 1
    }
    with (oDrillFront)
    {
        active = 1
        x += 1
    }
    if (oDrillWall.x <= (xpos + 160))
    {
        with (oDrillWall)
            event_user(0)
    }
    if (steps < 30)
        alarm[0] = 2
    else
        alarm[0] = 1
}
if (advancing == 0)
{
    advancing = 1
    sfx_loop(sndDrillLoop)
}
