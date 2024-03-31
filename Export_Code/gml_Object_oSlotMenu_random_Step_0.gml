if active
{
    if (oControl.kDown && oControl.kDownPushedSteps == 0)
    {
        global.curropt += 1
        if (global.curropt > lastitem)
            global.curropt = 0
        sfx_play(sndMenuMove)
    }
    if (oControl.kUp && oControl.kUpPushedSteps == 0)
    {
        global.curropt -= 1
        if (global.curropt < 0)
            global.curropt = lastitem
        sfx_play(sndMenuMove)
    }
    if (oControl.kMenu1 && oControl.kMenu1PushedSteps == 0)
    {
        sfx_play(sndMenuSel)
        if (global.curropt == 0)
            global.gamemode = 3
        if (global.curropt == 1)
            global.gamemode = 5
        if (global.curropt == 2)
            global.gamemode = 4
        if instance_exists(op[0])
        {
            with (op[0])
                instance_destroy()
        }
        if instance_exists(op[1])
        {
            with (op[1])
                instance_destroy()
        }
        if instance_exists(op[2])
        {
            with (op[2])
                instance_destroy()
        }
        if (global.curropt == 0)
            instance_create(0, 0, oSlotMenu_classic)
        else if (global.mod_fusion_unlocked == 1)
            instance_create(0, 0, oSlotMenu_Fusion)
        else
            instance_create(0, 0, oSlotMenu2)
        instance_destroy()
    }
    if (oControl.kMenu2 && oControl.kMenu2PushedSteps == 0)
    {
        global.curropt = 10
        sfx_play(sndMenuCancel)
        event_user(1)
    }
}
if fadein
{
    if (h < (targeth - 4))
        h += 4
    else
    {
        h = targeth
        fadein = 0
        active = 1
        event_user(0)
    }
}
if fadeout
{
    if (h > 4)
        h -= 4
    else
    {
        if (global.curropt == 10)
        {
            with (oGameSelMenu)
                alarm[0] = 5
            global.curropt = global.saveslot
        }
        instance_destroy()
    }
}
