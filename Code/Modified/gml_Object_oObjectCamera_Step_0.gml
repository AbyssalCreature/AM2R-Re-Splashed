if instance_exists(target_obj)
{
    x = (target_obj.x + ((oCharacter.x - target_obj.x) / 2))
    y = (target_obj.y + ((oCharacter.y - target_obj.y) / 2))
    if (abs((oCharacter.x - target_obj.x)) < dist_x && abs((oCharacter.y - target_obj.y)) < dist_y)
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
