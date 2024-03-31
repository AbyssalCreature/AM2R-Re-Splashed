x = (oTank.x + ((oCharacter.x - oTank.x) / 2))
y = (oTank.y + ((oCharacter.y - oTank.y) / 2))
if (abs((oCharacter.x - oTank.x)) < 280 && abs((oCharacter.y - oTank.y)) < 180)
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
