belly_x = lengthdir_x(86, (image_angle - 15))
belly_y = lengthdir_y(86, (image_angle - 15))
if instance_exists(front_obj)
{
    front_obj.x = x
    front_obj.y = y
    front_obj.image_angle = image_angle
}
if instance_exists(head_obj)
{
    if (head_target_snap == 1)
    {
        head_obj.x = lerp(head_obj.x, head_target_x, 0.2)
        head_obj.y = lerp(head_obj.y, head_target_y, 0.2)
        head_obj.head_target_angle = head_target_angle
    }
}
if instance_exists(leg1f_obj)
{
    leg1f_obj.joint3_x = (x + leg1f_x)
    leg1f_obj.joint3_y = (y + leg1f_y)
}
if instance_exists(leg1b_obj)
{
    leg1b_obj.joint3_x = (x + leg1b_x)
    leg1b_obj.joint3_y = (y + leg1b_y)
}
if instance_exists(leg2f_obj)
    leg2f_obj.base_x = (x + leg1f_x)
if instance_exists(leg2b_obj)
    leg2b_obj.base_x = (x + leg1b_x)
if instance_exists(oQueenHead)
{
    flashing = oQueenHead.flashing
    fxtimer = oQueenHead.fxtimer
    if (phase == 0 || (phase == 1 && oCharacter.x < 928))
    {
        camx = (800 - (widescreen_space / 2))
        camy = (oQueenHead.y + ((oCharacter.y - oQueenHead.y) / 2))
    }
    else if (phase == 1 && oCharacter.x > 1120 && oCharacter.x < 1248)
    {
        camx = 1120
        camy = (oQueenHead.y + ((oCharacter.y - oQueenHead.y) / 2))
    }
    else if (phase == 2 && oCharacter.x > 1760 && oCharacter.x < 1888)
    {
        camx = 1760
        camy = (oQueenHead.y + ((oCharacter.y - oQueenHead.y) / 2))
    }
    else if (phase == 3 && oCharacter.x > 2080 && oCharacter.x < 2208)
    {
        camx = 2080
        camy = (oQueenHead.y + ((oCharacter.y - oQueenHead.y) / 2))
    }
    else if (abs((oCharacter.x - oQueenHead.x)) < 250 && abs((oCharacter.y - oQueenHead.y)) < 180)
    {
        camx = (oQueenHead.x + ((oCharacter.x - oQueenHead.x) / 2))
        camy = (oQueenHead.y + ((oCharacter.y - oQueenHead.y) / 2))
        oCamera.focus = 0
    }
    else
    {
        camx = oCharacter.x
        camy = oCharacter.y
        oCamera.focus = 0
    }
}
oCamera.smootin = 15
if (oCamera.focus == 0)
{
    oCamera.focus = 1
    oCamera.focustime = 0
}
oCamera.focustime += 1
oCamera.lockx = 1
oCamera.locky = 1
oCamera.targetx = camx
oCamera.targety = camy
oCamera.snapx = 0
oCamera.snapy = 0
oCamera.smoothout = 40
oCamera.alarm[0] = 2
