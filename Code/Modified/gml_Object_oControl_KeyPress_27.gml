if (global.ingame == 1 && global.enablecontrol == 1 && room != rm_transition)
{
    event_user(3)
    global.ingame = 0
    global.targetx = oCharacter.x
    global.targety = oCharacter.y
    global.offsetx = 0
    global.offsety = 0
    global.camstartx = oCamera.x
    global.camstarty = oCamera.y
    with (oCamera)
    {
        targetx = x
        targety = y
    }
    room_persistent = true
    oCharacter.persistent = 0
    oCamera.persistent = 0
    if instance_exists(oNotification)
        oNotification.persistent = 0
    global.currentroom = room
    global.transitiontype = 2
    global.ssmode = 3
    room_goto(rm_subscreen)
    Mute_Loops()
}
