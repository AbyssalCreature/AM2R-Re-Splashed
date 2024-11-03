if (oControl.mod_randomgamebool == 1 && oControl.mod_gravity != 9)
    exit
if (closed == 1)
{
    if (xoff > 0)
        xoff -= 1
    if (xoff == 1)
        sfx_play(sndA4DoorClose)
}
if (closed == 0)
{
    if (xoff < 16)
        xoff += 0.2
}
