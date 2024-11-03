var t;
if active
{
    if ((oControl.kDown && oControl.kDownPushedSteps == 0) || (oControl.kUp && oControl.kUpPushedSteps == 0))
    {
        targetslot += 1
        if (global.saveslot == targetslot)
            targetslot += 1
        if (targetslot > 2)
            targetslot = 0
        if (global.saveslot == targetslot)
            targetslot += 1
        sfx_play(sndMenuMove)
    }
    if (oControl.kMenu1 && oControl.kMenu1PushedSteps == 0)
    {
        t = file[targetslot]
        if (!file_exists(file[targetslot]))
            event_user(0)
        else
        {
            active = 0
            instance_create(270, dialogy[targetslot], oSlotMenuOverwrite)
        }
        sfx_play(sndMenuSel)
    }
    if (oControl.kMenu2 && oControl.kMenu2PushedSteps == 0)
    {
        with (oGameSelMenu)
            alarm[0] = 5
        global.curropt = global.saveslot
        sfx_play(sndMenuCancel)
        instance_destroy()
    }
}
if (targetslot == 0)
{
    x = 64
    y = 40
}
if (targetslot == 1)
{
    x = 64
    y = 84
}
if (targetslot == 2)
{
    x = 64
    y = 128
}
