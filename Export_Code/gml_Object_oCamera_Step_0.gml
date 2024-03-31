if (room != rm_transition && roomstart == 0)
{
    if (focus == 1)
    {
        if (focustime < smoothin)
        {
            ratiox = ((smoothin + 3) - focustime)
            ratioy = ((smoothin + 3) - focustime)
        }
    }
    if (focus == 0)
    {
        if (ratiox > 4)
            ratiox -= 1
        if (ratioy > 4)
            ratioy -= 1
        if (abs(oCharacter.xVel) > 4)
            ratiox = 4
        if (abs(oCharacter.yVel) > 5)
            ratioy = 4
    }
    if (lockx == 0)
        targetx = oCharacter.x
    if (locky == 0)
        targety = (oCharacter.y - 16)
    if (x >= (targetx - 2) && x <= (targetx + 2) && lockx == 0)
        snapx = 1
    if (x != targetx && snapx == 0)
        x += ((targetx - x) / ratiox)
    if (snapx == 1)
        x = targetx
    if (y >= (targety - 2) && y <= (targety + 2) && locky == 0)
        snapy = 1
    if (y != targety && snapy == 0)
        y += ((targety - y) / ratioy)
    if (snapy == 1)
        y = targety
}
if (roomstart == 1)
    roomstart = 0
