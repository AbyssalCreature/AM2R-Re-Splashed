if (global.ingame == 1 && global.enablecontrol == 1 && room != rm_transition && ((!keyboard_check(vk_alt)) || os_type == os_linux))
{
    event_user(3)
    global.ingame = 0
    global.targetx = oCharacter.x
    global.targety = oCharacter.y
    global.offsetx = 0
    global.offsety = 0
    room_persistent = true
    if instance_exists(oCharacter)
    {
        with (oCharacter)
            persistent = 0
    }
    if instance_exists(oCamera)
    {
        with (oCamera)
            persistent = 0
    }
    if instance_exists(oNotification)
    {
        with (oNotification)
            persistent = 0
    }
    if instance_exists(oScanMonster)
    {
        with (oScanMonster)
            persistent = 0
    }
    global.currentroom = room
    global.ssmode = 0
    room_change(16, 3)
    Mute_Loops()
    global.vibL = 0
    global.vibR = 0
}
