x = (oTorizo2.x + ((oCharacter.x - oTorizo2.x) / 2))
y = (oTorizo2.y + ((oCharacter.y - oTorizo2.y) / 2))
if (abs((oCharacter.x - oTorizo2.x)) < 280 && abs((oCharacter.y - oTorizo2.y)) < 180 && oTorizo2.state != 5)
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
    oCamera.targetx = x
    oCamera.targety = y
    oCamera.snapx = 0
    oCamera.snapy = 0
    oCamera.smoothout = 40
    oCamera.alarm[0] = 2
}
