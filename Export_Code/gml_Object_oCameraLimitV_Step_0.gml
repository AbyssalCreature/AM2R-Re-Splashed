if (oCharacter.x >= x && oCharacter.x <= (x + areax) && (oCharacter.y - 12) <= y && (oCharacter.y - 12) >= (y + areay) && global.classicmode == 0)
{
    oCamera.smootin = (smoothin * 2)
    if (oCamera.focus == 0)
    {
        oCamera.focus = 1
        oCamera.focustime = 0
    }
    oCamera.focustime += 1
    oCamera.locky = 1
    oCamera.targety = locky
    oCamera.snapy = 0
    oCamera.smoothout = (smoothout * 2.5)
    oCamera.alarm[3] = 2
}
