if (first_step == 1)
{
    if (oCharacter.x >= x && oCharacter.x <= (x + areax) && (oCharacter.y - 12) <= y && (oCharacter.y - 12) >= (y + areay))
    {
        if (oCamera.focus == 0)
        {
            oCamera.focus = 1
            oCamera.focustime = 0
        }
        oCamera.focustime += 1
        oCamera.locky = 1
        if (oCamera.y >= (y + areay))
        {
            oCamera.targety = (y + areay)
            oCamera.snapy = 0
            oCamera.ratioy = 2
            if (oCamera.yprevious > (y + areay))
                oCamera.y = (y + areay)
        }
        oCamera.alarm[3] = 2
        oCamera.smoothout = 15
        oCamera.smoothin = 15
    }
    first_step = 0
}
