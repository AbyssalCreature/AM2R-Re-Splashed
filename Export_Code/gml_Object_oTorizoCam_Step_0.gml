if (!followtorizo)
{
    oCamera.smootin = 15
    if (oCamera.focus == 0)
    {
        oCamera.focus = 1
        oCamera.focustime = 0
    }
    oCamera.focustime += 1
    oCamera.lockx = 1
    oCamera.locky = 1
    oCamera.targetx = 480
    oCamera.targety = 360
    oCamera.snapx = 0
    oCamera.snapy = 0
    oCamera.smoothout = 40
    oCamera.alarm[0] = 2
}
else
{
    x = (oTorizo.x + ((oCharacter.x - oTorizo.x) / 2))
    y = (oTorizo.y + ((oCharacter.y - oTorizo.y) / 2))
    if (abs((oCharacter.x - oTorizo.x)) < 280 && abs((oCharacter.y - oTorizo.y)) < 180)
    {
        oCamera.smootin = 30
        if (oCamera.focus == 0)
        {
            oCamera.focus = 1
            oCamera.focustime = 0
        }
        oCamera.focustime += 1
        oCamera.lockx = 1
        oCamera.locky = 1
        oCamera.targetx = x
        oCamera.targety = y
        oCamera.snapx = 0
        oCamera.snapy = 0
        oCamera.smoothout = 40
        oCamera.alarm[0] = 2
    }
}
