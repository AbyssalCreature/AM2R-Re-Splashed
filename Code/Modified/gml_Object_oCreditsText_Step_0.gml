if (canfadeout && (oControl.kMenu1 || oControl.kMenu2 || oControl.kStart))
    fadeout = 1
if fadeout
{
    if (yoffset > 0)
        yoffset -= 1
    else
        event_user(0)
}
if (statetime == 360)
    instance_create(192, 88, oCreditsShip)
if (statetime > 520)
{
    if (image_alpha < 1)
        image_alpha += 0.05
}
if (statetime == 700)
    vspeed = SCROLL_SPEED
if (y <= ((ystart + 8) - (TEXT_ROWS * 12)))
    vspeed = 0
statetime++
