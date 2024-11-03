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
        oCamera.lockx = 1
        if (oCamera.x <= (x + areax))
        {
            oCamera.targetx = (x + areax)
            oCamera.snapx = 0
            oCamera.ratiox = 2
            if (oCamera.xprevious > (x + areax))
                oCamera.x = (x + areax)
        }
        oCamera.alarm[2] = 2
        oCamera.smoothout = 15
        oCamera.smoothin = 15
    }
    first_step = 0
}
